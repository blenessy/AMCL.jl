module AMCL

    using AMCL_jll

    # some stdlib stuff
    const int8_t = Int8
    const int16_t = Int16
    const int32_t = Int32
    const int64_t = Int64
    const uint8_t = UInt8
    const uint16_t = UInt16
    const uint32_t = UInt32
    const uint64_t = UInt64

    # include types and constants
    include(joinpath(@__DIR__, "libamcl_common_fixed.jl"))

    # include native APIs
    include(joinpath(@__DIR__, "..", "gen", "libamcl_api.jl"))

    # include implicit conversion functions and usability enhancements
    include(joinpath(@__DIR__, "..", "gen", "libamcl_base_methods.jl"))

    function __init__()
        # validate assumtions
        @assert fieldname(octet, 4) == :data
    end
end # module
