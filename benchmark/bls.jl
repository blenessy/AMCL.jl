using Pkg
Pkg.add("BenchmarkTools")
Pkg.activate(joinpath(@__DIR__, ".."))
#Pkg.add("https://github.com/blenessy/AMCL.jl")

using BenchmarkTools
using AMCL

curves = ["BLS381"]
if !isempty(Base.ARGS)
    curves = copy(Base.ARGS)
end

rng = AMCL.csprng(AMCL.octet("insecure"))
msg = AMCL.octet(ones(UInt8, 200)) # constant 200 byte message

for c in curves
    println("== BLS_$(c)_KEY_PAIR_GENERATE ==")
    sk = AMCL.octet(eval(Meta.parse("AMCL.BGS_$(c)")))
    # should fit BLS48
    pk = AMCL.octet(16 * eval(Meta.parse("AMCL.BFS_$(c)")))
    api = eval(Meta.parse("AMCL.BLS_$(c)_KEY_PAIR_GENERATE"))
    @btime $api(rng, $sk, $pk)

    println("== BLS_$(c)_SIGN ==")
    sig = AMCL.octet(eval(Meta.parse("AMCL.BFS_$(c)")) + 1)
    api = eval(Meta.parse("AMCL.BLS_$(c)_SIGN"))
    @btime $api($sig, msg, $sk)

    println("== BLS_$(c)_VERIFY ==")
    api = eval(Meta.parse("AMCL.BLS_$(c)_VERIFY"))
    @btime $api($sig, msg, $pk)
end
