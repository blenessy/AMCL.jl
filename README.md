# AMCL.jl

Julia bindings for AMCL_jll

# Status

Everything should work although only a tiny subset of the native APIs have been tested.
Only tested on Mac so far, but I'm not expecting problems on any other target.

- [x] all native (C) APIs should be reachable
- [x] optimised `octet` implementation
- [ ] travis CI to build for all targets
- [ ] generate examples for common use-cases
- [ ] add useful operators (e.g. + for curve points)
- [ ] add implicit conversions where useful

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
