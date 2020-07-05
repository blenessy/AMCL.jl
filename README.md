# MilagroCrypto.jl

Julia bindings for AMCL_jll.

The objective of this project is to provide efficient and secure access to the
[AMCL C library](https://github.com/apache/incubator-milagro-crypto-c) from Julia for all supported platforms (OS and CPU).

# Status

[![Build Status](https://travis-ci.com/blenessy/MilagroCrypto.jl.svg?branch=master)](https://travis-ci.com/blenessy/MilagroCrypto.jl)

Everything should work although only a tiny subset of the native APIs have been tested.
Only tested on Mac so far, but I'm not expecting problems on any other target.

- [x] all native (C) APIs should be reachable
- [x] support all Julia platforms
- [x] optimised `octet` implementation
- [x] travis CI to build for all targets
- [ ] add more [examples](./example/) for common use-cases
- [ ] usability improvement (e.g. add a + method for curve points)
- [x] add implicit conversions where useful

# Getting Started

## Install Package

```julia
using Pkg
Pkg.add("MilagroCrypto")
```

## Examples

Example | Showcase
--- | --- 
[bls381_sign_verify.jl](./example/bls381_sign_verify.jl) | <ol><li>generate BLS381 key pair</li><li>sign message</li><li>verify signature</li></ol>
[bls381_sub.jl](./example/bls381_sub.jl) | Implement missing `BLS_BLS381_SUB_G1` function with Curve primitives

You can run an example (in this case [bls381_sign_verify.jl](./example/bls381_sign_verify.jl)) like this:

```julia
julia example/bls381_sign_verify.jl
```

## Benchmarks

Check the [benchmarks](./benchmark/) directory.

You can run a benchmarks with the BLS381 curve like this:

```julia
julia benchmark/bls.jl
```

If you want to test with other curve(s):

```julia
julia benchmark/bls.jl BN254 BLS461
```

## Tests

Run tests with:

```julia
julia -e 'using Pkg; Pkg.activate("."); Pkg.test()'
```

# Frequently Asked Questions

## My Application hangs for a while when using this lib

If you are using the `csprng()` method, it will generate random seed from `/dev/random`,
which will "hang" by design if there is not enough entropy in the pool.

Try re-running your app with the `JULIA_DEBUG=MilagroCrypto` environment variable and look for
the `got seed from OS` console log to confirm that your application is **not**
stuck waiting for more entropy.

# Contibutions

Are most welcome. However, please note the objective of this project.

1. Pick something to improve from the list above
1. Create PR
1. Make sure Travis CI is happy
