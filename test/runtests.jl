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

@testset "csprng memory alignment" begin
    @test AMCL.csprng(octet("insecure")) isa AMCL.csprng
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
