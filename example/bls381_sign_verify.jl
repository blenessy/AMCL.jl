# Showcase BLS signing and signature verification

using Pkg
Pkg.activate(joinpath(@__DIR__, ".."))
#Pkg.add("https://github.com/blenessy/AMCL.jl")

using AMCL
using Random

# generate 256-bit random seed from the OS
seed = rand(RandomDevice(), UInt8, 32)

# create CSPRNG
rng = AMCL.csprng(AMCL.octet(seed))

# generate key pair
secret_key = AMCL.octet(AMCL.BGS_BN254)
public_key = AMCL.octet(4 * AMCL.BFS_BN254)
AMCL.BLS_BLS381_KEY_PAIR_GENERATE(rng, secret_key, public_key) == AMCL.BLS_OK ||
    error("failed to generate keypair")

# sign message
message = AMCL.octet("foo")
signature = AMCL.octet(AMCL.BFS_BLS381 + 1) # compressed format
AMCL.BLS_BLS381_SIGN(signature, message, secret_key) == AMCL.BLS_OK ||
    error("failed to sign message")

# verify message
AMCL.BLS_BLS381_VERIFY(signature, message, public_key) == AMCL.BLS_OK ||
    error("signature is invalid")

println("Done (nothing bad happened)!")
