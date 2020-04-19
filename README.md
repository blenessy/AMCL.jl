# AMCL.jl

Julia bindings for AMCL_jll.

The objective of this project is to provide efficient and secure access to the
[AMCL C library](https://github.com/apache/incubator-milagro-crypto-c) from Julia for all supported platforms (OS and CPU).

# Status

[![Build Status](https://travis-ci.com/blenessy/AMCL.jl.svg?branch=master)](https://travis-ci.com/blenessy/AMCL.jl)

Everything should work although only a tiny subset of the native APIs have been tested.
Only tested on Mac so far, but I'm not expecting problems on any other target.

- [x] all native (C) APIs should be reachable
- [x] support all Julia platforms
- [x] optimised `octet` implementation
- [x] travis CI to build for all targets
- [ ] generate [examples](./example/) for common use-cases
- [ ] add more syntactic sugar (e.g. + for curve points)
- [ ] add implicit conversions where useful

# Getting Started

## Install Package

```julia
using Pkg
Pkg.add("https://github.com/blenessy/AMCL.jl")
```

## Examples

Example | Showcase
--- | --- 
[bls381-sign-verify.jl](./example/bls381-sign-verify.jl) | <ol><li>generate BLS381 key pair</li><li>sign message</li><li>verify signature</li></ol>

You can run an example (in this case [bls381-sign-verify.jl](./example/bls381-sign-verify.jl)) like this:

```julia
julia example/bls381-sign-verify.jl
```

## Benchmarks

You can run the benchmarks like this:

```julia
julia benchmark/benchmark.jl
```

# Contibutions

Are most welcome. However, please note the objective of this project.

1. Pick something to improve from the list above
1. Create PR
1. Make sure Travis CI is happy
