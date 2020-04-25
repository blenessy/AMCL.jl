
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

#run(wc, false)

module AMCL
    const int8_t = Int8
    const int16_t = Int16
    const int32_t = Int32
    const int64_t = Int64
    const uint8_t = UInt8
    const uint16_t = UInt16
    const uint32_t = UInt32
    const uint64_t = UInt64
    const NLEN_1024_58 = 1
    const NLEN_256_56 = 1
    const NLEN_336_60 = 1
    const NLEN_384_56 = 1
    const NLEN_384_58 = 1
    const NLEN_416_60 = 1
    const NLEN_448_58 = 1
    const NLEN_464_60 = 1
    const NLEN_480_56 = 1
    const NLEN_512_56 = 1
    const NLEN_512_60 = 1
    const NLEN_528_60 = 1
    const NLEN_560_58 = 1
    include(joinpath(@__DIR__, "libamcl_common.jl"))
end

const BIG_TYPES = r"^BIG_\d+_\d+$"
const DBIG_TYPES = r"^DBIG_\d+_\d+$"
const FP_TYPES = r"^FP\d*_[A-Z0-9]+$"
const ECP_TYPES = r"^ECP\d*_[A-Z0-9]+$"
const RSA_TYPES = r"^rsa_(?:private|public)_key_\d+$"
const OTHER_TYPES = r"^(?:hash256|hash512|sha3|csprng|gcm|amcl_aes|pktype|octet)$"
const ALL_TYPES = (BIG_TYPES, DBIG_TYPES, FP_TYPES, ECP_TYPES, RSA_TYPES, OTHER_TYPES)

mathches_any(s::String, patterns::Regex...) = mathches_any(s, patterns)
mathches_any(s::String, patterns::NTuple{N,Regex}) where {N} = any(p->!isnothing(match(p, s)), patterns)

open(joinpath(@__DIR__, "libamcl_base_methods.jl"), "w") do f
    println(f, "# Automatically generated with generator.jl")
    
    for sym in names(AMCL, all=true)
        T = getproperty(AMCL, sym)
        T isa Type || continue
        n = String(sym)

        if mathches_any(n, ALL_TYPES)
            # pointer(::T)
            println(f, "Base.pointer(a::$n) = reinterpret(Ptr{$n}, pointer_from_objref(a))")
            # unsafe_convert(::Type{Ptr{T}}, ::T)
            println(f, "Base.unsafe_convert(::Type{Ptr{$n}}, a::$n) = pointer(a)")
        else
            @info "skipped: $n"
            continue
        end
        if mathches_any(n, BIG_TYPES)
            println(f, "Base.:(==)(a::$n, b::$n) = iszero($(n * "_comp")(a, b))")
            println(f, "Base.isless(a::$n, b::$n) = isone(-$(n * "_comp")(a, b))")
        end
        if mathches_any(n, DBIG_TYPES)
            println(f, "Base.:(==)(a::$n, b::$n) = iszero($(n[2:end] * "_dcomp")(a, b))")
            println(f, "Base.isless(a::$n, b::$n) = isone(-$(n[2:end] * "_dcomp")(a, b))")
        end        
        if mathches_any(n, FP_TYPES, ECP_TYPES)
            println(f, "Base.:(==)(a::$n, b::$n) = isone($(n * "_equals")(a, b))")
        end
        if mathches_any(n, r"octet")
            println(f, "Base.:(==)(a::octet, b::octet) = isone(AMCL.OCT_comp(a, b))")
        end
    end    
end
