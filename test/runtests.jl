using Test

using MilagroCrypto

const TEST_CURVES = ("BN254", "BN254CX", "BLS381", "BLS383", "BLS461", "FP256BN", "FP512BN", "BLS24", "BLS48")
const TEST_BIG = ("256_56", "336_60", "384_56", "384_58", "416_60", "448_58", "464_60", "480_56", "512_56", "512_60", "528_60", "560_58", "1024_58")

@testset "octet" begin
    # invalid args
    @test_throws ArgumentError octet(-1)
    # empty octet
    @test octet(0).len == 0 && octet(0).max == 0 && octet(0).val != C_NULL && isempty(octet(0).data)
    # octet with data
    @test octet(1).len == 1 && octet(1).max == 1 && octet(1).val != C_NULL && octet(1).data == (0x0,)
    @test octet("a").len == 1 && octet("ab").max == 2 && octet([0x1]).val != C_NULL && octet([0x1]).data == (0x1,)
    # can handle other element types too gracefully (anti-pattern)
    @test octet([1]).len == sizeof(Int) && octet([1]).max == sizeof(Int) && octet([1]).val != C_NULL && reduce(|, octet([1]).data) == 0x1
end

@testset "csprng" begin
    @test csprng() isa csprng
end

@testset "amcl_aes memory alignment" begin
    key = zeros(UInt8, 16)
    iv = zeros(UInt8, 100)
    @test AMCL.amcl_aes(AMCL.CTR16, key, iv) isa AMCL.amcl_aes
end

@testset "gcm memory alignment" begin
    key = zeros(UInt8, 16)
    iv = zeros(UInt8, 100)
    @test AMCL.gcm(key, 12, iv) isa AMCL.gcm
end

@testset "sha3 memory alignment" begin
    @test AMCL.sha3(AMCL.SHAKE256) isa AMCL.sha3
end

@testset "hash512 memory alignment" begin
    @test AMCL.hash256() isa AMCL.hash256
end

@testset "hash512 memory alignment" begin
    @test AMCL.hash512() isa AMCL.hash512
end

@testset "BLS Signatures" begin
    rng = csprng(octet("insecure"))
    msg = octet(ones(UInt8, 200)) # constant 200 byte message

    for c in TEST_CURVES
        println("BLS Signatures: $c")

        # generate keys
        sk1 = octet(eval(Meta.parse("AMCL.BGS_$(c)")))
        sk2 = octet(eval(Meta.parse("AMCL.BGS_$(c)")))
        pk1 = octet(16 * eval(Meta.parse("AMCL.BFS_$(c)"))) # should fit BLS48
        pk2 = octet(16 * eval(Meta.parse("AMCL.BFS_$(c)"))) # should fit BLS48
        api = eval(Meta.parse("AMCL.BLS_$(c)_KEY_PAIR_GENERATE"))
        @test api(rng, sk1, pk1) == AMCL.BLS_OK
        @assert api(rng, sk2, pk2) == AMCL.BLS_OK

        # sign
        sig1 = octet(eval(Meta.parse("AMCL.BFS_$(c)")) + 1)
        sig2 = octet(eval(Meta.parse("AMCL.BFS_$(c)")) + 1)
        api = eval(Meta.parse("AMCL.BLS_$(c)_SIGN"))
        @test api(sig1, msg, sk1) == AMCL.BLS_OK
        @assert api(sig2, msg, sk2) == AMCL.BLS_OK

        # aggregate signatures
        sig = octet(eval(Meta.parse("AMCL.BFS_$(c)")) + 1)
        api = eval(Meta.parse("AMCL.BLS_$(c)_ADD_G1"))
        @test api(sig1, sig2, sig) == AMCL.BLS_OK

        # aggregate public keys
        pk = octet(16 * eval(Meta.parse("AMCL.BFS_$(c)"))) # should fit BLS48
        api = eval(Meta.parse("AMCL.BLS_$(c)_ADD_G2"))
        @test api(pk1, pk2, pk) == AMCL.BLS_OK
    
        # verify aggregated signature
        api = eval(Meta.parse("AMCL.BLS_$(c)_VERIFY"))
        @test api(sig, msg, pk) == AMCL.BLS_OK
    end
end

@testset "BIG and DBIG numbers" begin
    for D in ("", "D") # BIG or DBIG
        for t in TEST_BIG
            d = lowercase(D)
            a = eval(Meta.parse("AMCL.$(D)BIG_$(t)()"))
            @test all(iszero, a.data)
            b = eval(Meta.parse("AMCL.$(D)BIG_$(t)(zero)"))
            b.data[1] = 1
            @test a != b
            @test a < b
        end
    end
end

@testset "Fields (FPx)" begin
    for c in TEST_CURVES
        fp = eval(Meta.parse("AMCL.FP_$(c)()"))
        @test all(iszero, fp.g)
    end
end

@testset "Elliptic Curve Points (ECPx)" begin
    for c in TEST_CURVES
        expr = Meta.parse("AMCL.ECP_$(c)_isinf(AMCL.ECP_$(c)())")
        @test isone(eval(expr))
    end
end
