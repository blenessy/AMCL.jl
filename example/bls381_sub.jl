#=
The native lib provides APIs for aggregating public keys and signatures through the
[BLS_ZZZ_ADD_G1 and BLS_ZZZ_ADD_G2](https://github.com/apache/incubator-milagro-crypto-c/blob/2.0.1/include/bls.h.in#L76-L92)
functions. If your application needs it, its perfectly possible to implement the corresponding
BLS_ZZZ_SUB_G1 and BLS_ZZZ_SUB_G2 functions in Julia.
=#

using Pkg
Pkg.activate(joinpath(@__DIR__, ".."))
#Pkg.add("https://github.com/blenessy/AMCL.jl")

using MilagroCrypto

function BLS_BLS381_SUB_G1(R1,R2,R)
    P, T = AMCL.ECP_BLS381(undef), AMCL.ECP_BLS381(undef)
    isone(AMCL.ECP_BLS381_fromOctet(P, R1)) || return AMCL.BLS_INVALID_G1
    isone(AMCL.ECP_BLS381_fromOctet(T, R2)) || return AMCL.BLS_INVALID_G1
    AMCL.ECP_BLS381_sub(P, T)
    AMCL.ECP_BLS381_toOctet(R, P, true)
    return AMCL.BLS_OK
end

# get a valid point and serialize it so we have something to test with
P = AMCL.ECP_BLS381(undef)
AMCL.ECP_BLS381_generator(P)
p = octet(AMCL.BFS_BLS381 + 1) # compressed format
AMCL.ECP_BLS381_toOctet(p, P, true)

# p2 = p + p
p2 = octet(AMCL.BFS_BLS381 + 1) # compressed format
AMCL.BLS_BLS381_ADD_G1(p, p, p2) == AMCL.BLS_OK ||
    error("aggregation failed")

# q = p2 - p = p
q = octet(AMCL.BFS_BLS381 + 1) # compressed format
BLS_BLS381_SUB_G1(p2, p, q) == AMCL.BLS_OK ||
   error("failed to subtract")
@assert p == q "BLS_BLS381_SUB_G1 does not work :("

println("Done (nothing bad happened)!")
