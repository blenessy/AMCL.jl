# Showcase BLS signing and signature verification

using Pkg
Pkg.activate(joinpath(@__DIR__, ".."))
#Pkg.add("https://github.com/blenessy/AMCL.jl")

using MilagroCrypto

# create properly seeded CSPRNG
rng = csprng()

# generate key pair
secret_key = octet(AMCL.BGS_BN254)
public_key = octet(4 * AMCL.BFS_BN254)
AMCL.BLS_BLS381_KEY_PAIR_GENERATE(rng, secret_key, public_key) == AMCL.BLS_OK ||
    error("failed to generate keypair")

# sign message
message = octet("foo")
signature = octet(AMCL.BFS_BLS381 + 1) # compressed format
AMCL.BLS_BLS381_SIGN(signature, message, secret_key) == AMCL.BLS_OK ||
    error("failed to sign message")

# verify message
AMCL.BLS_BLS381_VERIFY(signature, message, public_key) == AMCL.BLS_OK ||
    error("signature is invalid")

println("Done (nothing bad happened)!")
