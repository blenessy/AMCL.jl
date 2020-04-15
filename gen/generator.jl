
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
    if lib in ("amcl", "utils", "version", "randapi")
        return "libamcl_core"
    end
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
