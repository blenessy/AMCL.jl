
using Pkg
Pkg.add("Clang")
Pkg.activate(joinpath(@__DIR__, ".."))

using Clang
using AMCL_jll

# LIBCLANG_HEADERS are those headers to be wrapped.
const LIBAMCL_INCLUDE = joinpath(dirname(AMCL_jll.libamcl_core_path), "..", "include", "amcl") |> normpath
const LIBAMCL_HEADERS = [joinpath(LIBAMCL_INCLUDE, header) for header in readdir(LIBAMCL_INCLUDE) if endswith(header, ".h")]
#const LIBAMCL_HEADERS = [joinpath(LIBAMCL_INCLUDE, "amcl.h")]

clang_args = ["-I$LIBAMCL_INCLUDE"]
for header in find_std_headers()
    push!(clang_args, "-I$header")
end

function libmap(include_path)
    lib = strip(splitext(basename(include_path))[1])

    # Core APIs
    if lib in ("amcl", "utils", "version", "randapi", "ecdh_support", "pbc_support", "rsa_support")
        return "libamcl_core"
    end

    # BLS24 and BLS48 specific
    lib != "pair192_BLS24" || return "libamcl_pairing_BLS24"
    lib != "bls192_BLS24" || return "libamcl_bls_BLS24"
    lib != "wcc192_BLS24" || return "libamcl_wcc_BLS24"
    lib != "mpin192_BLS24" || return "libamcl_mpin_BLS24"
    lib != "pair256_BLS48" || return "libamcl_pairing_BLS48"
    lib != "bls256_BLS48" || return "libamcl_bls_BLS48"
    lib != "wcc256_BLS48" || return "libamcl_wcc_BLS48"
    lib != "mpin192_BLS24" || return "libamcl_mpin_BLS48"

    # Curve APIs
    m = match(r"(?:ecdh_|ecp_|fp_)(.*)", lib)
    isnothing(m) || return "libamcl_curve_$(m.captures[1])"

    # Pairing APIs
    m = match(r"(?:ecp\d+_|fp\d+_|pair_)(.*)", lib)
    isnothing(m) || return "libamcl_pairing_$(m.captures[1])"

    # RSA APIs
    m = match(r"ff_(.*)", lib)
    isnothing(m) || return "libamcl_rsa_$(m.captures[1])"

    # big number APIs
    lib != "big_256_56" || return "libamcl_curve_BN254"
    lib != "big_336_60" || return "libamcl_curve_HIFIVE"
    lib != "big_384_56" || return "libamcl_curve_NIST384"
    lib != "big_384_58" || return "libamcl_curve_BLS381"
    lib != "big_416_60" || return "libamcl_curve_C41417"
    lib != "big_448_58" || return "libamcl_curve_GOLDILOCKS"
    lib != "big_464_60" || return "libamcl_curve_BLS461"
    lib != "big_480_56" || return "libamcl_curve_BLS24"
    lib != "big_512_56" || return "libamcl_curve_NUMS512E"
    lib != "big_512_60" || return "libamcl_rsa_4096"
    lib != "big_528_60" || return "libamcl_curve_NIST521"
    lib != "big_560_58" || return "libamcl_curve_BLS48"
    lib != "big_1024_58" || return "libamcl_rsa_2048"

    return "libamcl_$lib"
end

wc = init(
    headers = LIBAMCL_HEADERS,
    output_file = joinpath(@__DIR__, "libamcl_api.jl"),
    common_file = joinpath(@__DIR__, "libamcl_common.jl"),
    clang_includes = vcat(LIBAMCL_INCLUDE, CLANG_INCLUDE),
    clang_args = clang_args,
    header_wrapped = (root, current)->root == current,
    header_library = libmap,
)

run(wc, false)
