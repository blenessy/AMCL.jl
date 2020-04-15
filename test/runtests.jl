using Test

using AMCL
using AMCL: octet

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
    @test AMCL.csprng("insecure") isa AMCL.csprng
end

@testset "BLS_BLS381_KEY_PAIR_GENERATE" begin
    sk, pk = octet(AMCL.BGS_BLS381), octet(4*AMCL.BFS_BLS381)
    @test AMCL.BLS_BLS381_KEY_PAIR_GENERATE(AMCL.csprng("insecure"), sk, pk) == AMCL.BLS_OK
    @test AMCL.BLS_BLS381_KEY_PAIR_GENERATE(C_NULL, sk, pk) == AMCL.BLS_OK
end

@testset "BLS_BLS381_SIGN" begin
    rng = AMCL.csprng("insecure")
    sk, pk = octet(AMCL.BGS_BLS381), octet(4*AMCL.BFS_BLS381)
    @assert AMCL.BLS_BLS381_KEY_PAIR_GENERATE(rng, sk, pk) == AMCL.BLS_OK
    msg, sig = octet("foo"), octet(AMCL.BFS_BLS381+1)
    @test AMCL.BLS_BLS381_SIGN(sig, msg, sk) == AMCL.BLS_OK
end

@testset "BLS_BLS381_VERIFY" begin
    rng = AMCL.csprng("insecure")
    sk, pk = octet(AMCL.BGS_BLS381), octet(4*AMCL.BFS_BLS381)
    @assert AMCL.BLS_BLS381_KEY_PAIR_GENERATE(rng, sk, pk) == AMCL.BLS_OK
    msg, sig = octet("foo"), octet(AMCL.BFS_BLS381+1)
    @assert AMCL.BLS_BLS381_SIGN(sig, msg, sk) == AMCL.BLS_OK
    @test AMCL.BLS_BLS381_VERIFY(sig, msg, pk) == AMCL.BLS_OK
end

# @test "ECP_BLS381_generator" begin
#     sk, pk = octet(AMCL.BGS_BLS381), octet(4*AMCL.BFS_BLS381)
#     @test AMCL.BLS_BLS381_VERIFY(sig, msg, pk) == AMCL.BLS_OK
# end
