using Pkg
Pkg.add("BenchmarkTools")
Pkg.activate(joinpath(@__DIR__, ".."))

using BenchmarkTools
using AMCL

rng = AMCL.csprng("insecure")
msg = AMCL.octet("foo")

println("== octet(::String) ==")
@btime AMCL.octet(s) setup=(s=rand(UInt8, 256))

println("== BLS_BN254_VERIFY ==")
bn254_sk = AMCL.octet(AMCL.BGS_BN254)
bn254_pk = AMCL.octet(4 * AMCL.BFS_BN254)
AMCL.BLS_BN254_KEY_PAIR_GENERATE(rng, bn254_sk, bn254_pk)
bn254_sig = AMCL.octet(AMCL.BFS_BN254+1)
AMCL.BLS_BN254_SIGN(bn254_sig, msg, bn254_sk)
@btime AMCL.BLS_BN254_VERIFY(bn254_sig, msg, bn254_pk)

println("== BLS_BLS381_KEY_PAIR_GENERATE ==")
bls381_sk = AMCL.octet(AMCL.BGS_BLS381)
bls381_pk = AMCL.octet(4 * AMCL.BFS_BLS381)
@btime AMCL.BLS_BLS381_KEY_PAIR_GENERATE(rng, bls381_sk, bls381_pk)

println("== BLS_BLS381_SIGN ==")
bls381_sig = AMCL.octet(AMCL.BFS_BLS381+1)
@btime AMCL.BLS_BLS381_SIGN(bls381_sig, msg, bls381_sk)

println("== BLS_BLS381_VERIFY ==")
@btime AMCL.BLS_BLS381_VERIFY(bls381_sig, msg, bls381_pk)
