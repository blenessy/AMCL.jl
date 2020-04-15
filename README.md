# AMCL.jl

Julia bindings for AMCL_jll

# Status

- [x] `octet` works
- [x] `csprng` works
- [x] `CREATE_CSPRNG`
- [x] BLS functions (the `bls_*.h` API)
- [x] `CREATE_CSPRNG`

The rest is untested.

## What does not work?

* low-level functions that try to output to immutable structs should not work gracefull
* `ecp*.h` and `fp*.h` cannot work as the underlying tower field elements are not mapped to single memory location.

# Getting Started

## Install Package

```julia
using Pkg
Pkg.add("https://github.com/blenessy/AMCL.jl")
```

## BLS381 PoC

```julia
using AMCL

# create CSPRNG
rng = AMCL.csprng("insecure")

# generate key pair
secret_key = AMCL.octet(AMCL.BGS_BN254)
public_key = AMCL.octet(4 * AMCL.BFS_BN254)
@assert AMCL.BLS_BLS381_KEY_PAIR_GENERATE(rng, secret_key, public_key) == AMCL.BLS_OK

# sign message
message = AMCL.octet("foo")
signature = AMCL.octet(AMCL.BFS_BLS381 + 1)
@assert AMCL.BLS_BLS381_SIGN(signature, message, secret_key) == AMCL.BLS_OK

# verify message
@assert AMCL.BLS_BLS381_VERIFY(signature, message, public_key) == AMCL.BLS_OK
```

# Benchmarks

```julia
julia benchmark/benchmark.jl
```
