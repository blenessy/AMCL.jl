using Pkg
Pkg.add("BenchmarkTools")
Pkg.activate(joinpath(@__DIR__, ".."))
#Pkg.add("https://github.com/blenessy/AMCL.jl")

using BenchmarkTools
using AMCL

curves = isempty(Base.ARGS) ? ["BLS381"] : copy(Base.ARGS)

rng = AMCL.csprng(AMCL.octet("insecure"))
msg = AMCL.octet(ones(UInt8, 200)) # constant 200 byte message

for c in curves
    println("== BLS_$(c)_KEY_PAIR_GENERATE ==")
    sk1 = AMCL.octet(eval(Meta.parse("AMCL.BGS_$(c)")))
    sk2 = AMCL.octet(eval(Meta.parse("AMCL.BGS_$(c)")))
    pk1 = AMCL.octet(16 * eval(Meta.parse("AMCL.BFS_$(c)"))) # should fit BLS48
    pk2 = AMCL.octet(16 * eval(Meta.parse("AMCL.BFS_$(c)"))) # should fit BLS48
    api = eval(Meta.parse("AMCL.BLS_$(c)_KEY_PAIR_GENERATE"))
    @assert api(rng, sk1, pk1) == AMCL.BLS_OK
    @btime $api(rng, $sk2, $pk2);

    println("== BLS_$(c)_SIGN ==")
    sig1 = AMCL.octet(eval(Meta.parse("AMCL.BFS_$(c)")) + 1)
    sig2 = AMCL.octet(eval(Meta.parse("AMCL.BFS_$(c)")) + 1)
    api = eval(Meta.parse("AMCL.BLS_$(c)_SIGN"))
    @assert api(sig1, msg, sk1) == AMCL.BLS_OK
    @btime $api($sig2, msg, $sk2);

    println("== BLS_$(c)_ADD_G1 ==")
    sig = AMCL.octet(eval(Meta.parse("AMCL.BFS_$(c)")) + 1)
    api = eval(Meta.parse("AMCL.BLS_$(c)_ADD_G1"))
    @assert api(sig1, sig2, sig) == AMCL.BLS_OK
    @btime $api($sig1, $sig2, $sig)

    println("== BLS_$(c)_ADD_G2 ==")
    pk = AMCL.octet(16 * eval(Meta.parse("AMCL.BFS_$(c)"))) # should fit BLS48
    api = eval(Meta.parse("AMCL.BLS_$(c)_ADD_G2"))
    @assert api(pk1, pk2, pk) == AMCL.BLS_OK
    @btime $api($pk1, $pk2, $pk)

    println("== BLS_$(c)_VERIFY ==")
    api = eval(Meta.parse("AMCL.BLS_$(c)_VERIFY"))
    @assert api(sig, msg, pk) == AMCL.BLS_OK
    @btime $api($sig, msg, $pk);
end
