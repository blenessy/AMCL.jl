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

    include(joinpath(@__DIR__, "libamcl_common_fixed.jl"))
    include(joinpath(@__DIR__, "..", "gen", "libamcl_api.jl"))

    # pointer to c struct
    Base.pointer(o::octet) = reinterpret(Ptr{octet}, pointer_from_objref(o))
    Base.pointer(o::csprng) = reinterpret(Ptr{csprng}, pointer_from_objref(o))
    Base.pointer(p::ECP_BLS381) = reinterpret(Ptr{ECP_BLS381}, pointer_from_objref(p))
    Base.pointer(sk::rsa_private_key_2048) = reinterpret(Ptr{rsa_private_key_2048}, pointer_from_objref(sk))
    Base.pointer(pk::rsa_public_key_2048) = reinterpret(Ptr{rsa_public_key_2048}, pointer_from_objref(pk))
    Base.pointer(g::gcm) = reinterpret(Ptr{gcm}, pointer_from_objref(g))
    Base.pointer(aes::amcl_aes) = reinterpret(Ptr{amcl_aes}, pointer_from_objref(aes))
    Base.pointer(h::hash256) = reinterpret(Ptr{hash256}, pointer_from_objref(h))
    Base.pointer(h::hash512) = reinterpret(Ptr{hash512}, pointer_from_objref(h))
    Base.pointer(s::sha3) = reinterpret(Ptr{sha3}, pointer_from_objref(s))

    # implicit conversion to Ptr
    Base.unsafe_convert(::Type{Ptr{csprng}}, rng::csprng) = pointer(rng)
    Base.unsafe_convert(::Type{Ptr{octet}}, o::octet) = pointer(o)
    Base.unsafe_convert(::Type{Ptr{ECP_BLS381}}, p::ECP_BLS381) = pointer(p)
    Base.unsafe_convert(::Type{Ptr{rsa_private_key_2048}}, sk::rsa_private_key_2048) = pointer(sk)
    Base.unsafe_convert(::Type{Ptr{rsa_public_key_2048}}, pk::rsa_public_key_2048) = pointer(pk)
    Base.unsafe_convert(::Type{Ptr{gcm}}, g::gcm) = pointer(g)
    Base.unsafe_convert(::Type{Ptr{amcl_aes}}, aes::amcl_aes) = pointer(aes)
    Base.unsafe_convert(::Type{Ptr{hash256}}, h::hash256) = pointer(h)
    Base.unsafe_convert(::Type{Ptr{hash512}}, h::hash512) = pointer(h)
    Base.unsafe_convert(::Type{Ptr{sha3}}, s::sha3) = pointer(s)

    # equality
    Base.:(==)(a::ECP_BLS381, b::ECP_BLS381) = isone(AMCL.ECP_BLS381_equals(a, b))
    Base.:(==)(a::octet, b::octet) = isone(AMCL.OCT_comp(a, b))

    function __init__()
        # validate assumtions
        @assert fieldname(octet, 4) == :data
    end
end # module
