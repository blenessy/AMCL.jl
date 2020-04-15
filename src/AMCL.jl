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

    include(joinpath(@__DIR__, "..", "gen", "libamcl_common.jl"))
    include(joinpath(@__DIR__, "..", "gen", "libamcl_api.jl"))

    # implicit conversion to Ptr
    Base.unsafe_convert(::Type{Ptr{csprng}}, rng::csprng) = reinterpret(Ptr{csprng}, pointer_from_objref(rng))
    Base.unsafe_convert(::Type{Ptr{octet}}, o::octet) = reinterpret(Ptr{octet}, pointer_from_objref(o))

    function __init__()
        # validate assumtions
        @assert fieldname(octet, 4) == :data
    end
end # module
