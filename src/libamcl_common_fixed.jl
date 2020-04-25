using CBinding
using Random: RandomDevice

# Automatically generated using Clang.jl


const NOT_SPECIAL = 0
const PSEUDO_MERSENNE = 1
const MONTGOMERY_FRIENDLY = 3
const GENERALISED_MERSENNE = 2
const WEIERSTRASS = 0
const EDWARDS = 1
const MONTGOMERY = 2
const NOT = 0
const BN = 1
const BLS = 2
const D_TYPE = 0
const M_TYPE = 1
const AMCL_FP_ZERO = 0
const AMCL_FP_UNITY = 1
const AMCL_FP_SPARSER = 2
const AMCL_FP_SPARSE = 3
const AMCL_FP_DENSE = 4
const SHA256 = 32
const SHA384 = 48
const SHA512 = 64
const SHA3_HASH224 = 28
const SHA3_HASH256 = 32
const SHA3_HASH384 = 48
const SHA3_HASH512 = 64
const SHAKE128 = 16
const SHAKE256 = 32
const RLWE_PRIME = 0x3001
const RLWE_LGN = 10
const RLWE_ND = Float32(0x0f7002ff)
const RLWE_ONE = 0x2ac8
const RLWE_R2MODP = 0x1620
const ECB = 0
const CBC = 1
const CFB1 = 2
const CFB2 = 3
const CFB4 = 5
const OFB1 = 14
const OFB2 = 15
const OFB4 = 17
const OFB8 = 21
const OFB16 = 29
const CTR1 = 30
const CTR2 = 31
const CTR4 = 33
const CTR8 = 37
const CTR16 = 45

# Skipping MacroDefinition: uchar unsigned char

const GCM_ACCEPTING_HEADER = 0
const GCM_ACCEPTING_CIPHER = 1
const GCM_NOT_ACCEPTING_MORE = 2
const GCM_FINISHED = 3
const GCM_ENCRYPTING = 0
const GCM_DECRYPTING = 1
const NK = 21
const NJ = 6
const NV = 8

@cstruct hash256 {
    length::UInt32[2]
    h::UInt32[8]
    w::UInt32[80]
    hlen::Cint
}
function hash256()
    h = hash256(undef)
    HASH256_init(h)
    return h
end

@cstruct hash512 {
    length::UInt64[2]
    h::UInt64[8]
    w::UInt64[80]
    hlen::Cint
}
function hash512()
    h = hash512(undef)
    HASH512_init(h)
    return h
end

const hash384 = hash512

@cstruct sha3 {
    length::UInt64
    S::UInt64[5][5]
    rate::Cint
    len::Cint
}
function sha3(type::Int)
    s = sha3(undef)
    SHA3_init(s, type)
    return s
end

@cstruct amcl_aes {
    Nk::Cint
    Nr::Cint
    mode::Cint
    fkey::UInt32[60]
    rkey::UInt32[60]
    f::UInt8[16]
}
function amcl_aes(mode, key, iv)
    aes = amcl_aes(undef)
    res = AES_init(aes, mode, length(key), pointer(key), pointer(iv))
    res == 1 || error("failed to initialize amcl_aes struct ($res)")
    return aes
end

@cstruct gcm {
    table::UInt32[128][4]
    stateX::Cuchar[16]
    Y_0::Cuchar[16]
    lenA::UInt32[2]
    lenC::UInt32[2]
    status::Cint
    a::amcl_aes
}
function gcm(key, n, iv)
    g = gcm(undef)
    GCM_init(g, length(key), pointer(key), n, pointer(iv))
    return g
end

mutable struct octet{N}
    len::Cint
    max::Cint
    val::Ptr{UInt8}
    data::NTuple{N, UInt8}
    octet(n::Int) = octet(zeros(UInt8, n))
    function octet(data)
        n = sizeof(data)
        o = new{n}(n, n)
        # offset is asserted in __init__
        o.val = pointer_from_objref(o) + fieldoffset(octet{0}, 4)
        # significantly faster than the safe variant
        unsafe_copyto!(reinterpret(Ptr{UInt8}, o.val), reinterpret(Ptr{UInt8}, pointer(data)), n)
        return o
    end
end

@cstruct csprng {
    ira::UInt32[21]
    rndptr::Cint
    borrow::UInt32
    pool_ptr::Cint
    pool::UInt8[32]
}
function csprng(seed::octet)
    rng = csprng(undef)
    CREATE_CSPRNG(rng, seed)
    return rng
end
function csprng()
    rng = RandomDevice()
    try # this will not work on Windows
        rng = RandomDevice(unlimited=false)
        @debug "reading seed from /dev/random (this might block for a while) ..."
    catch e
        e isa MethodError || rethrow(e)
    end
    seed = rand(rng, UInt8, 32) # 256-bit seed
    @debug "got seed from OS"
    return csprng(octet(seed))
end

const CHUNK = 64
const byte = uint8_t
const sign8 = int8_t
const sign16 = int16_t
const sign32 = int32_t
const sign64 = int64_t
const unsign32 = uint32_t
const unsign64 = uint64_t
const chunk = int64_t
const MODBYTES_1024_58 = 128
const BIGBITS_1024_58 = 8MODBYTES_1024_58

const BASEBITS_1024_58 = 58

# Skipping MacroDefinition: NLEN_1024_58 ( 1 + ( ( 8 * MODBYTES_1024_58 - 1 ) / BASEBITS_1024_58 ) )
const NLEN_1024_58 = ( 1 + ( ( 8 * MODBYTES_1024_58 - 1 ) / BASEBITS_1024_58 ) )
const DNLEN_1024_58 = 2NLEN_1024_58

# Skipping MacroDefinition: BMASK_1024_58 ( ( ( chunk ) 1 << BASEBITS_1024_58 ) - 1 )
# Skipping MacroDefinition: NEXCESS_1024_58 ( 1 << ( CHUNK - BASEBITS_1024_58 - 1 ) )

const HBITS_1024_58 = BASEBITS_1024_58 / 2

# Skipping MacroDefinition: HMASK_1024_58 ( ( ( chunk ) 1 << HBITS_1024_58 ) - 1 )

@cstruct BIG_1024_58 { data::Int64[18] }
@cstruct DBIG_1024_58 { data::Int64[36] }
const MODBYTES_256_56 = 32
const BIGBITS_256_56 = 8MODBYTES_256_56

const BASEBITS_256_56 = 56

# Skipping MacroDefinition: NLEN_256_56 ( 1 + ( ( 8 * MODBYTES_256_56 - 1 ) / BASEBITS_256_56 ) )
const NLEN_256_56 = ( 1 + ( ( 8 * MODBYTES_256_56 - 1 ) / BASEBITS_256_56 ) )
const DNLEN_256_56 = 2NLEN_256_56

# Skipping MacroDefinition: BMASK_256_56 ( ( ( chunk ) 1 << BASEBITS_256_56 ) - 1 )
# Skipping MacroDefinition: NEXCESS_256_56 ( 1 << ( CHUNK - BASEBITS_256_56 - 1 ) )

const HBITS_256_56 = BASEBITS_256_56 / 2

# Skipping MacroDefinition: HMASK_256_56 ( ( ( chunk ) 1 << HBITS_256_56 ) - 1 )

@cstruct BIG_256_56 { data::Int64[5] }
@cstruct DBIG_256_56 { data::Int64[10] }
const MODBYTES_336_60 = 42
const BIGBITS_336_60 = 8MODBYTES_336_60

const BASEBITS_336_60 = 60

# Skipping MacroDefinition: NLEN_336_60 ( 1 + ( ( 8 * MODBYTES_336_60 - 1 ) / BASEBITS_336_60 ) )
const NLEN_336_60 = ( 1 + ( ( 8 * MODBYTES_336_60 - 1 ) / BASEBITS_336_60 ) )
const DNLEN_336_60 = 2NLEN_336_60

# Skipping MacroDefinition: BMASK_336_60 ( ( ( chunk ) 1 << BASEBITS_336_60 ) - 1 )
# Skipping MacroDefinition: NEXCESS_336_60 ( 1 << ( CHUNK - BASEBITS_336_60 - 1 ) )

const HBITS_336_60 = BASEBITS_336_60 / 2

# Skipping MacroDefinition: HMASK_336_60 ( ( ( chunk ) 1 << HBITS_336_60 ) - 1 )

@cstruct BIG_336_60 { data::Int64[6] }
@cstruct DBIG_336_60 { data::Int64[12] }
const MODBYTES_384_56 = 48
const BIGBITS_384_56 = 8MODBYTES_384_56

const BASEBITS_384_56 = 56

# Skipping MacroDefinition: NLEN_384_56 ( 1 + ( ( 8 * MODBYTES_384_56 - 1 ) / BASEBITS_384_56 ) )
const NLEN_384_56 = ( 1 + ( ( 8 * MODBYTES_384_56 - 1 ) / BASEBITS_384_56 ) )
const DNLEN_384_56 = 2NLEN_384_56

# Skipping MacroDefinition: BMASK_384_56 ( ( ( chunk ) 1 << BASEBITS_384_56 ) - 1 )
# Skipping MacroDefinition: NEXCESS_384_56 ( 1 << ( CHUNK - BASEBITS_384_56 - 1 ) )

const HBITS_384_56 = BASEBITS_384_56 / 2

# Skipping MacroDefinition: HMASK_384_56 ( ( ( chunk ) 1 << HBITS_384_56 ) - 1 )

@cstruct BIG_384_56 { data::Int64[7] }
@cstruct DBIG_384_56 { data::Int64[14] }
const MODBYTES_384_58 = 48
const BIGBITS_384_58 = 8MODBYTES_384_58

const BASEBITS_384_58 = 58

# Skipping MacroDefinition: NLEN_384_58 ( 1 + ( ( 8 * MODBYTES_384_58 - 1 ) / BASEBITS_384_58 ) )
const NLEN_384_58 = ( 1 + ( ( 8 * MODBYTES_384_58 - 1 ) / BASEBITS_384_58 ) )
const DNLEN_384_58 = 2NLEN_384_58

# Skipping MacroDefinition: BMASK_384_58 ( ( ( chunk ) 1 << BASEBITS_384_58 ) - 1 )
# Skipping MacroDefinition: NEXCESS_384_58 ( 1 << ( CHUNK - BASEBITS_384_58 - 1 ) )

const HBITS_384_58 = BASEBITS_384_58 / 2

# Skipping MacroDefinition: HMASK_384_58 ( ( ( chunk ) 1 << HBITS_384_58 ) - 1 )

@cstruct BIG_384_58 { data::Int64[7] }
@cstruct DBIG_384_58 { data::Int64[14] }
const MODBYTES_416_60 = 52
const BIGBITS_416_60 = 8MODBYTES_416_60

const BASEBITS_416_60 = 60

# Skipping MacroDefinition: NLEN_416_60 ( 1 + ( ( 8 * MODBYTES_416_60 - 1 ) / BASEBITS_416_60 ) )
const NLEN_416_60 = ( 1 + ( ( 8 * MODBYTES_416_60 - 1 ) / BASEBITS_416_60 ) )
const DNLEN_416_60 = 2NLEN_416_60

# Skipping MacroDefinition: BMASK_416_60 ( ( ( chunk ) 1 << BASEBITS_416_60 ) - 1 )
# Skipping MacroDefinition: NEXCESS_416_60 ( 1 << ( CHUNK - BASEBITS_416_60 - 1 ) )

const HBITS_416_60 = BASEBITS_416_60 / 2

# Skipping MacroDefinition: HMASK_416_60 ( ( ( chunk ) 1 << HBITS_416_60 ) - 1 )

@cstruct BIG_416_60 { data::Int64[7] }
@cstruct DBIG_416_60 { data::Int64[14] }
const MODBYTES_448_58 = 56
const BIGBITS_448_58 = 8MODBYTES_448_58

const BASEBITS_448_58 = 58

# Skipping MacroDefinition: NLEN_448_58 ( 1 + ( ( 8 * MODBYTES_448_58 - 1 ) / BASEBITS_448_58 ) )
const NLEN_448_58 = ( 1 + ( ( 8 * MODBYTES_448_58 - 1 ) / BASEBITS_448_58 ) )
const DNLEN_448_58 = 2NLEN_448_58

# Skipping MacroDefinition: BMASK_448_58 ( ( ( chunk ) 1 << BASEBITS_448_58 ) - 1 )
# Skipping MacroDefinition: NEXCESS_448_58 ( 1 << ( CHUNK - BASEBITS_448_58 - 1 ) )

const HBITS_448_58 = BASEBITS_448_58 / 2

# Skipping MacroDefinition: HMASK_448_58 ( ( ( chunk ) 1 << HBITS_448_58 ) - 1 )

@cstruct BIG_448_58 { data::Int64[8] }
@cstruct DBIG_448_58 { data::Int64[16] }
const MODBYTES_464_60 = 58
const BIGBITS_464_60 = 8MODBYTES_464_60

const BASEBITS_464_60 = 60

# Skipping MacroDefinition: NLEN_464_60 ( 1 + ( ( 8 * MODBYTES_464_60 - 1 ) / BASEBITS_464_60 ) )
const NLEN_464_60 = ( 1 + ( ( 8 * MODBYTES_464_60 - 1 ) / BASEBITS_464_60 ) )
const DNLEN_464_60 = 2NLEN_464_60

# Skipping MacroDefinition: BMASK_464_60 ( ( ( chunk ) 1 << BASEBITS_464_60 ) - 1 )
# Skipping MacroDefinition: NEXCESS_464_60 ( 1 << ( CHUNK - BASEBITS_464_60 - 1 ) )

const HBITS_464_60 = BASEBITS_464_60 / 2

# Skipping MacroDefinition: HMASK_464_60 ( ( ( chunk ) 1 << HBITS_464_60 ) - 1 )

@cstruct BIG_464_60 { data::Int64[8] }
@cstruct DBIG_464_60 { data::Int64[16] }
const MODBYTES_480_56 = 60
const BIGBITS_480_56 = 8MODBYTES_480_56

const BASEBITS_480_56 = 56

# Skipping MacroDefinition: NLEN_480_56 ( 1 + ( ( 8 * MODBYTES_480_56 - 1 ) / BASEBITS_480_56 ) )
const NLEN_480_56 = ( 1 + ( ( 8 * MODBYTES_480_56 - 1 ) / BASEBITS_480_56 ) )
const DNLEN_480_56 = 2NLEN_480_56

# Skipping MacroDefinition: BMASK_480_56 ( ( ( chunk ) 1 << BASEBITS_480_56 ) - 1 )
# Skipping MacroDefinition: NEXCESS_480_56 ( 1 << ( CHUNK - BASEBITS_480_56 - 1 ) )

const HBITS_480_56 = BASEBITS_480_56 / 2

# Skipping MacroDefinition: HMASK_480_56 ( ( ( chunk ) 1 << HBITS_480_56 ) - 1 )

@cstruct BIG_480_56 { data::Int64[9] }
@cstruct DBIG_480_56 { data::Int64[18] }
const MODBYTES_512_56 = 64
const BIGBITS_512_56 = 8MODBYTES_512_56

const BASEBITS_512_56 = 56

# Skipping MacroDefinition: NLEN_512_56 ( 1 + ( ( 8 * MODBYTES_512_56 - 1 ) / BASEBITS_512_56 ) )
const NLEN_512_56 = ( 1 + ( ( 8 * MODBYTES_512_56 - 1 ) / BASEBITS_512_56 ) )
const DNLEN_512_56 = 2NLEN_512_56

# Skipping MacroDefinition: BMASK_512_56 ( ( ( chunk ) 1 << BASEBITS_512_56 ) - 1 )
# Skipping MacroDefinition: NEXCESS_512_56 ( 1 << ( CHUNK - BASEBITS_512_56 - 1 ) )

const HBITS_512_56 = BASEBITS_512_56 / 2

# Skipping MacroDefinition: HMASK_512_56 ( ( ( chunk ) 1 << HBITS_512_56 ) - 1 )

@cstruct BIG_512_56 { data::Int64[10] }
@cstruct DBIG_512_56 { data::Int64[20] }
const MODBYTES_512_60 = 64
const BIGBITS_512_60 = 8MODBYTES_512_60

const BASEBITS_512_60 = 60

# Skipping MacroDefinition: NLEN_512_60 ( 1 + ( ( 8 * MODBYTES_512_60 - 1 ) / BASEBITS_512_60 ) )
const NLEN_512_60 = ( 1 + ( ( 8 * MODBYTES_512_60 - 1 ) / BASEBITS_512_60 ) )
const DNLEN_512_60 = 2NLEN_512_60

# Skipping MacroDefinition: BMASK_512_60 ( ( ( chunk ) 1 << BASEBITS_512_60 ) - 1 )
# Skipping MacroDefinition: NEXCESS_512_60 ( 1 << ( CHUNK - BASEBITS_512_60 - 1 ) )

const HBITS_512_60 = BASEBITS_512_60 / 2

# Skipping MacroDefinition: HMASK_512_60 ( ( ( chunk ) 1 << HBITS_512_60 ) - 1 )

@cstruct BIG_512_60 { data::Int64[9] }
@cstruct DBIG_512_60 { data::Int64[18] }
const MODBYTES_528_60 = 66
const BIGBITS_528_60 = 8MODBYTES_528_60

const BASEBITS_528_60 = 60

# Skipping MacroDefinition: NLEN_528_60 ( 1 + ( ( 8 * MODBYTES_528_60 - 1 ) / BASEBITS_528_60 ) )
const NLEN_528_60 = ( 1 + ( ( 8 * MODBYTES_528_60 - 1 ) / BASEBITS_528_60 ) )
const DNLEN_528_60 = 2NLEN_528_60

# Skipping MacroDefinition: BMASK_528_60 ( ( ( chunk ) 1 << BASEBITS_528_60 ) - 1 )
# Skipping MacroDefinition: NEXCESS_528_60 ( 1 << ( CHUNK - BASEBITS_528_60 - 1 ) )

const HBITS_528_60 = BASEBITS_528_60 / 2

# Skipping MacroDefinition: HMASK_528_60 ( ( ( chunk ) 1 << HBITS_528_60 ) - 1 )

@cstruct BIG_528_60 { data::Int64[9] }
@cstruct DBIG_528_60 { data::Int64[18] }
const MODBYTES_560_58 = 70
const BIGBITS_560_58 = 8MODBYTES_560_58

const BASEBITS_560_58 = 58

# Skipping MacroDefinition: NLEN_560_58 ( 1 + ( ( 8 * MODBYTES_560_58 - 1 ) / BASEBITS_560_58 ) )
const NLEN_560_58 = ( 1 + ( ( 8 * MODBYTES_560_58 - 1 ) / BASEBITS_560_58 ) )
const DNLEN_560_58 = 2NLEN_560_58

# Skipping MacroDefinition: BMASK_560_58 ( ( ( chunk ) 1 << BASEBITS_560_58 ) - 1 )
# Skipping MacroDefinition: NEXCESS_560_58 ( 1 << ( CHUNK - BASEBITS_560_58 - 1 ) )

const HBITS_560_58 = BASEBITS_560_58 / 2

# Skipping MacroDefinition: HMASK_560_58 ( ( ( chunk ) 1 << HBITS_560_58 ) - 1 )

@cstruct BIG_560_58 { data::Int64[10] }
@cstruct DBIG_560_58 { data::Int64[20] }
const BGS_BLS24 = MODBYTES_480_56
const BFS_BLS24 = MODBYTES_480_56
const BLS_OK = 0
const BLS_FAIL = 41
const BLS_INVALID_G1 = 42
const BLS_INVALID_G2 = 43
const BGS_BLS48 = MODBYTES_560_58
const BFS_BLS48 = MODBYTES_560_58
const BGS_BLS381 = MODBYTES_384_58
const BFS_BLS381 = MODBYTES_384_58
const BGS_BLS383 = MODBYTES_384_58
const BFS_BLS383 = MODBYTES_384_58
const BGS_BLS461 = MODBYTES_464_60
const BFS_BLS461 = MODBYTES_464_60
const BGS_BN254 = MODBYTES_256_56
const BFS_BN254 = MODBYTES_256_56
const BGS_BN254CX = MODBYTES_256_56
const BFS_BN254CX = MODBYTES_256_56
const BGS_FP256BN = MODBYTES_256_56
const BFS_FP256BN = MODBYTES_256_56
const BGS_FP512BN = MODBYTES_512_60
const BFS_FP512BN = MODBYTES_512_60
const CURVETYPE_ANSSI = WEIERSTRASS
const PAIRING_FRIENDLY_ANSSI = NOT
const CURVE_SECURITY_ANSSI = 128
const AESKEY_ANSSI = 16
const HASH_TYPE_ANSSI = SHA256
const CURVETYPE_BLS24 = WEIERSTRASS
const PAIRING_FRIENDLY_BLS24 = BLS
const CURVE_SECURITY_BLS24 = 192
const POSITIVEX = 0
const NEGATIVEX = 1
const SEXTIC_TWIST_BLS24 = M_TYPE
const SIGN_OF_X_BLS24 = POSITIVEX
const AESKEY_BLS24 = 24
const HASH_TYPE_BLS24 = SHA384
const CURVETYPE_BLS381 = WEIERSTRASS
const PAIRING_FRIENDLY_BLS381 = BLS
const CURVE_SECURITY_BLS381 = 128
const SEXTIC_TWIST_BLS381 = M_TYPE
const SIGN_OF_X_BLS381 = NEGATIVEX
const AESKEY_BLS381 = 16
const HASH_TYPE_BLS381 = SHA256
const CURVETYPE_BLS383 = WEIERSTRASS
const PAIRING_FRIENDLY_BLS383 = BLS
const CURVE_SECURITY_BLS383 = 128
const SEXTIC_TWIST_BLS383 = M_TYPE
const SIGN_OF_X_BLS383 = POSITIVEX
const AESKEY_BLS383 = 16
const HASH_TYPE_BLS383 = SHA256
const CURVETYPE_BLS461 = WEIERSTRASS
const PAIRING_FRIENDLY_BLS461 = BLS
const CURVE_SECURITY_BLS461 = 128
const SEXTIC_TWIST_BLS461 = M_TYPE
const SIGN_OF_X_BLS461 = NEGATIVEX
const AESKEY_BLS461 = 16
const HASH_TYPE_BLS461 = SHA256
const CURVETYPE_BLS48 = WEIERSTRASS
const PAIRING_FRIENDLY_BLS48 = BLS
const CURVE_SECURITY_BLS48 = 256
const SEXTIC_TWIST_BLS48 = M_TYPE
const SIGN_OF_X_BLS48 = POSITIVEX
const AESKEY_BLS48 = 32
const HASH_TYPE_BLS48 = SHA512
const CURVETYPE_BN254 = WEIERSTRASS
const PAIRING_FRIENDLY_BN254 = BN
const CURVE_SECURITY_BN254 = 128
const SEXTIC_TWIST_BN254 = D_TYPE
const SIGN_OF_X_BN254 = NEGATIVEX
const AESKEY_BN254 = 16
const HASH_TYPE_BN254 = SHA256
const CURVETYPE_BN254CX = WEIERSTRASS
const PAIRING_FRIENDLY_BN254CX = BN
const CURVE_SECURITY_BN254CX = 128
const SEXTIC_TWIST_BN254CX = D_TYPE
const SIGN_OF_X_BN254CX = NEGATIVEX
const AESKEY_BN254CX = 16
const HASH_TYPE_BN254CX = SHA256
const CURVETYPE_BRAINPOOL = WEIERSTRASS
const PAIRING_FRIENDLY_BRAINPOOL = NOT
const CURVE_SECURITY_BRAINPOOL = 128
const AESKEY_BRAINPOOL = 16
const HASH_TYPE_BRAINPOOL = SHA256
const CURVETYPE_C25519 = MONTGOMERY
const PAIRING_FRIENDLY_C25519 = NOT
const CURVE_SECURITY_C25519 = 128
const AESKEY_C25519 = 16
const HASH_TYPE_C25519 = SHA256
const CURVETYPE_C41417 = EDWARDS
const PAIRING_FRIENDLY_C41417 = NOT
const CURVE_SECURITY_C41417 = 128
const AESKEY_C41417 = 16
const HASH_TYPE_C41417 = SHA256
const CURVETYPE_ED25519 = EDWARDS
const PAIRING_FRIENDLY_ED25519 = NOT
const CURVE_SECURITY_ED25519 = 128
const AESKEY_ED25519 = 16
const HASH_TYPE_ED25519 = SHA256
const CURVETYPE_FP256BN = WEIERSTRASS
const PAIRING_FRIENDLY_FP256BN = BN
const CURVE_SECURITY_FP256BN = 128
const SEXTIC_TWIST_FP256BN = M_TYPE
const SIGN_OF_X_FP256BN = NEGATIVEX
const AESKEY_FP256BN = 16
const HASH_TYPE_FP256BN = SHA256
const CURVETYPE_FP512BN = WEIERSTRASS
const PAIRING_FRIENDLY_FP512BN = BN
const CURVE_SECURITY_FP512BN = 128
const SEXTIC_TWIST_FP512BN = M_TYPE
const SIGN_OF_X_FP512BN = POSITIVEX
const AESKEY_FP512BN = 16
const HASH_TYPE_FP512BN = SHA256
const CURVETYPE_GOLDILOCKS = EDWARDS
const PAIRING_FRIENDLY_GOLDILOCKS = NOT
const CURVE_SECURITY_GOLDILOCKS = 128
const AESKEY_GOLDILOCKS = 16
const HASH_TYPE_GOLDILOCKS = SHA256
const CURVETYPE_HIFIVE = EDWARDS
const PAIRING_FRIENDLY_HIFIVE = NOT
const CURVE_SECURITY_HIFIVE = 128
const AESKEY_HIFIVE = 16
const HASH_TYPE_HIFIVE = SHA256
const CURVETYPE_NIST256 = WEIERSTRASS
const PAIRING_FRIENDLY_NIST256 = NOT
const CURVE_SECURITY_NIST256 = 128
const AESKEY_NIST256 = 16
const HASH_TYPE_NIST256 = SHA256
const CURVETYPE_NIST384 = WEIERSTRASS
const PAIRING_FRIENDLY_NIST384 = NOT
const CURVE_SECURITY_NIST384 = 128
const AESKEY_NIST384 = 16
const HASH_TYPE_NIST384 = SHA256
const CURVETYPE_NIST521 = WEIERSTRASS
const PAIRING_FRIENDLY_NIST521 = NOT
const CURVE_SECURITY_NIST521 = 128
const AESKEY_NIST521 = 16
const HASH_TYPE_NIST521 = SHA256
const CURVETYPE_NUMS256E = EDWARDS
const PAIRING_FRIENDLY_NUMS256E = NOT
const CURVE_SECURITY_NUMS256E = 128
const AESKEY_NUMS256E = 16
const HASH_TYPE_NUMS256E = SHA256
const CURVETYPE_NUMS256W = WEIERSTRASS
const PAIRING_FRIENDLY_NUMS256W = NOT
const CURVE_SECURITY_NUMS256W = 128
const AESKEY_NUMS256W = 16
const HASH_TYPE_NUMS256W = SHA256
const CURVETYPE_NUMS384E = EDWARDS
const PAIRING_FRIENDLY_NUMS384E = NOT
const CURVE_SECURITY_NUMS384E = 128
const AESKEY_NUMS384E = 16
const HASH_TYPE_NUMS384E = SHA256
const CURVETYPE_NUMS384W = WEIERSTRASS
const PAIRING_FRIENDLY_NUMS384W = NOT
const CURVE_SECURITY_NUMS384W = 128
const AESKEY_NUMS384W = 16
const HASH_TYPE_NUMS384W = SHA256
const CURVETYPE_NUMS512E = EDWARDS
const PAIRING_FRIENDLY_NUMS512E = NOT
const CURVE_SECURITY_NUMS512E = 128
const AESKEY_NUMS512E = 16
const HASH_TYPE_NUMS512E = SHA256
const CURVETYPE_NUMS512W = WEIERSTRASS
const PAIRING_FRIENDLY_NUMS512W = NOT
const CURVE_SECURITY_NUMS512W = 128
const AESKEY_NUMS512W = 16
const HASH_TYPE_NUMS512W = SHA256
const CURVETYPE_SECP256K1 = WEIERSTRASS
const PAIRING_FRIENDLY_SECP256K1 = NOT
const CURVE_SECURITY_SECP256K1 = 128
const AESKEY_SECP256K1 = 16
const HASH_TYPE_SECP256K1 = SHA256
const FFLEN_2048 = 2
const FFLEN_3072 = 8
const FFLEN_4096 = 8
const MBITS_25519 = 255
const MOD8_25519 = 5
const MODTYPE_25519 = PSEUDO_MERSENNE
const MAXXES_25519 = 25
const MBITS_256PME = 256
const MOD8_256PME = 3
const MODTYPE_256PME = PSEUDO_MERSENNE
const MAXXES_256PME = 24
const MBITS_256PMW = 256
const MOD8_256PMW = 3
const MODTYPE_256PMW = PSEUDO_MERSENNE
const MAXXES_256PMW = 24
const MBITS_384PM = 384
const MOD8_384PM = 3
const MODTYPE_384PM = PSEUDO_MERSENNE
const MAXXES_384PM = 8
const MBITS_512PM = 512
const MOD8_512PM = 7
const MODTYPE_512PM = PSEUDO_MERSENNE
const MAXXES_512PM = 30
const MBITS_ANSSI = 256
const MOD8_ANSSI = 7
const MODTYPE_ANSSI = NOT_SPECIAL
const MAXXES_ANSSI = 24
const MBITS_BLS24 = 479
const MOD8_BLS24 = 3
const MODTYPE_BLS24 = NOT_SPECIAL
const MAXXES_BLS24 = 25
const MBITS_BLS381 = 381
const MOD8_BLS381 = 3
const MODTYPE_BLS381 = NOT_SPECIAL
const MAXXES_BLS381 = 25
const MBITS_BLS383 = 383
const MOD8_BLS383 = 3
const MODTYPE_BLS383 = NOT_SPECIAL
const MAXXES_BLS383 = 23
const MBITS_BLS461 = 461
const MOD8_BLS461 = 3
const MODTYPE_BLS461 = NOT_SPECIAL
const MAXXES_BLS461 = 19
const MBITS_BLS48 = 556
const MOD8_BLS48 = 3
const MODTYPE_BLS48 = NOT_SPECIAL
const MAXXES_BLS48 = 24
const MBITS_BN254 = 254
const MOD8_BN254 = 3
const MODTYPE_BN254 = NOT_SPECIAL
const MAXXES_BN254 = 26
const MBITS_BN254CX = 254
const MOD8_BN254CX = 3
const MODTYPE_BN254CX = NOT_SPECIAL
const MAXXES_BN254CX = 26
const MBITS_BRAINPOOL = 256
const MOD8_BRAINPOOL = 7
const MODTYPE_BRAINPOOL = NOT_SPECIAL
const MAXXES_BRAINPOOL = 24
const MBITS_C41417 = 414
const MOD8_C41417 = 7
const MODTYPE_C41417 = PSEUDO_MERSENNE
const MAXXES_C41417 = 6
const MBITS_FP256BN = 256
const MOD8_FP256BN = 3
const MODTYPE_FP256BN = NOT_SPECIAL
const MAXXES_FP256BN = 24
const MBITS_FP512BN = 512
const MOD8_FP512BN = 3
const MODTYPE_FP512BN = NOT_SPECIAL
const MAXXES_FP512BN = 28
const MBITS_GOLDILOCKS = 448
const MOD8_GOLDILOCKS = 7
const MODTYPE_GOLDILOCKS = GENERALISED_MERSENNE
const MAXXES_GOLDILOCKS = 16
const MBITS_HIFIVE = 336
const MOD8_HIFIVE = 5
const MODTYPE_HIFIVE = PSEUDO_MERSENNE
const MAXXES_HIFIVE = 24
const MBITS_NIST256 = 256
const MOD8_NIST256 = 7
const MODTYPE_NIST256 = NOT_SPECIAL
const MAXXES_NIST256 = 24
const MBITS_NIST384 = 384
const MOD8_NIST384 = 7
const MODTYPE_NIST384 = NOT_SPECIAL
const MAXXES_NIST384 = 8
const MBITS_NIST521 = 521
const MOD8_NIST521 = 7
const MODTYPE_NIST521 = PSEUDO_MERSENNE
const MAXXES_NIST521 = 19
const MBITS_SECP256K1 = 256
const MOD8_SECP256K1 = 7
const MODTYPE_SECP256K1 = NOT_SPECIAL
const MAXXES_SECP256K1 = 24
const EGS_ANSSI = MODBYTES_256_56
const EFS_ANSSI = MODBYTES_256_56
const ECDH_OK = 0
const ECDH_INVALID_PUBLIC_KEY = -2
const ECDH_ERROR = -3
const ECDH_INVALID = -4
const EGS_BLS24 = MODBYTES_480_56
const EFS_BLS24 = MODBYTES_480_56
const EGS_BLS381 = MODBYTES_384_58
const EFS_BLS381 = MODBYTES_384_58
const EGS_BLS383 = MODBYTES_384_58
const EFS_BLS383 = MODBYTES_384_58
const EGS_BLS461 = MODBYTES_464_60
const EFS_BLS461 = MODBYTES_464_60
const EGS_BLS48 = MODBYTES_560_58
const EFS_BLS48 = MODBYTES_560_58
const EGS_BN254 = MODBYTES_256_56
const EFS_BN254 = MODBYTES_256_56
const EGS_BN254CX = MODBYTES_256_56
const EFS_BN254CX = MODBYTES_256_56
const EGS_BRAINPOOL = MODBYTES_256_56
const EFS_BRAINPOOL = MODBYTES_256_56
const EGS_C25519 = MODBYTES_256_56
const EFS_C25519 = MODBYTES_256_56
const EGS_C41417 = MODBYTES_416_60
const EFS_C41417 = MODBYTES_416_60
const EGS_ED25519 = MODBYTES_256_56
const EFS_ED25519 = MODBYTES_256_56
const EGS_FP256BN = MODBYTES_256_56
const EFS_FP256BN = MODBYTES_256_56
const EGS_FP512BN = MODBYTES_512_60
const EFS_FP512BN = MODBYTES_512_60
const EGS_GOLDILOCKS = MODBYTES_448_58
const EFS_GOLDILOCKS = MODBYTES_448_58
const EGS_HIFIVE = MODBYTES_336_60
const EFS_HIFIVE = MODBYTES_336_60
const EGS_NIST256 = MODBYTES_256_56
const EFS_NIST256 = MODBYTES_256_56
const EGS_NIST384 = MODBYTES_384_56
const EFS_NIST384 = MODBYTES_384_56
const EGS_NIST521 = MODBYTES_528_60
const EFS_NIST521 = MODBYTES_528_60
const EGS_NUMS256E = MODBYTES_256_56
const EFS_NUMS256E = MODBYTES_256_56
const EGS_NUMS256W = MODBYTES_256_56
const EFS_NUMS256W = MODBYTES_256_56
const EGS_NUMS384E = MODBYTES_384_56
const EFS_NUMS384E = MODBYTES_384_56
const EGS_NUMS384W = MODBYTES_384_56
const EFS_NUMS384W = MODBYTES_384_56
const EGS_NUMS512E = MODBYTES_512_56
const EFS_NUMS512E = MODBYTES_512_56
const EGS_NUMS512W = MODBYTES_512_56
const EFS_NUMS512W = MODBYTES_512_56
const EGS_SECP256K1 = MODBYTES_256_56
const EFS_SECP256K1 = MODBYTES_256_56

@cstruct FP_BLS381 {
    g::Int64[div(sizeof(BIG_384_58),sizeof(Int64))]
    XES::Int32
}

@cstruct FP2_BLS381 {
    a::FP_BLS381
    b::FP_BLS381
}

@cstruct ECP2_BLS381 {
    x::FP2_BLS381
    y::FP2_BLS381
    z::FP2_BLS381
}

@cstruct FP_BLS383 {
    g::Int64[div(sizeof(BIG_384_58),sizeof(Int64))]
    XES::Int32
}

@cstruct FP2_BLS383 {
    a::FP_BLS383
    b::FP_BLS383
}

@cstruct ECP2_BLS383 {
    x::FP2_BLS383
    y::FP2_BLS383
    z::FP2_BLS383
}

@cstruct FP_BLS461 {
    g::Int64[div(sizeof(BIG_464_60),sizeof(Int64))]
    XES::Int32
}

@cstruct FP2_BLS461 {
    a::FP_BLS461
    b::FP_BLS461
}

@cstruct ECP2_BLS461 {
    x::FP2_BLS461
    y::FP2_BLS461
    z::FP2_BLS461
}

@cstruct FP_BN254 {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct FP2_BN254 {
    a::FP_BN254
    b::FP_BN254
}

@cstruct ECP2_BN254 {
    x::FP2_BN254
    y::FP2_BN254
    z::FP2_BN254
}

@cstruct FP_BN254CX {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct FP2_BN254CX {
    a::FP_BN254CX
    b::FP_BN254CX
}

@cstruct ECP2_BN254CX {
    x::FP2_BN254CX
    y::FP2_BN254CX
    z::FP2_BN254CX
}

@cstruct FP_FP256BN {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct FP2_FP256BN {
    a::FP_FP256BN
    b::FP_FP256BN
}

@cstruct ECP2_FP256BN {
    x::FP2_FP256BN
    y::FP2_FP256BN
    z::FP2_FP256BN
}

@cstruct FP_FP512BN {
    g::Int64[div(sizeof(BIG_512_60),sizeof(Int64))]
    XES::Int32
}

@cstruct FP2_FP512BN {
    a::FP_FP512BN
    b::FP_FP512BN
}

@cstruct ECP2_FP512BN {
    x::FP2_FP512BN
    y::FP2_FP512BN
    z::FP2_FP512BN
}

@cstruct FP_BLS24 {
    g::Int64[div(sizeof(BIG_480_56),sizeof(Int64))]
    XES::Int32
}

@cstruct FP2_BLS24 {
    a::FP_BLS24
    b::FP_BLS24
}

@cstruct FP4_BLS24 {
    a::FP2_BLS24
    b::FP2_BLS24
}

@cstruct ECP4_BLS24 {
    x::FP4_BLS24
    y::FP4_BLS24
    z::FP4_BLS24
}

@cstruct FP_BLS48 {
    g::Int64[div(sizeof(BIG_560_58),sizeof(Int64))]
    XES::Int32
}

@cstruct FP2_BLS48 {
    a::FP_BLS48
    b::FP_BLS48
}

@cstruct FP4_BLS48 {
    a::FP2_BLS48
    b::FP2_BLS48
}

@cstruct FP8_BLS48 {
    a::FP4_BLS48
    b::FP4_BLS48
}

@cstruct ECP8_BLS48 {
    x::FP8_BLS48
    y::FP8_BLS48
    z::FP8_BLS48
}

@cstruct FP_ANSSI {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_ANSSI {
    x::FP_ANSSI
    y::FP_ANSSI
    z::FP_ANSSI
}

@cstruct ECP_BLS24 {
    x::FP_BLS24
    y::FP_BLS24
    z::FP_BLS24
}

@cstruct ECP_BLS381 {
    x::FP_BLS381
    y::FP_BLS381
    z::FP_BLS381
}

@cstruct ECP_BLS383 {
    x::FP_BLS383
    y::FP_BLS383
    z::FP_BLS383
}

@cstruct ECP_BLS461 {
    x::FP_BLS461
    y::FP_BLS461
    z::FP_BLS461
}

@cstruct ECP_BLS48 {
    x::FP_BLS48
    y::FP_BLS48
    z::FP_BLS48
}

@cstruct ECP_BN254 {
    x::FP_BN254
    y::FP_BN254
    z::FP_BN254
}

@cstruct ECP_BN254CX {
    x::FP_BN254CX
    y::FP_BN254CX
    z::FP_BN254CX
}

@cstruct FP_BRAINPOOL {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_BRAINPOOL {
    x::FP_BRAINPOOL
    y::FP_BRAINPOOL
    z::FP_BRAINPOOL
}

@cstruct FP_25519 {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_C25519 {
    x::FP_25519
    z::FP_25519
}

@cstruct FP_C41417 {
    g::Int64[div(sizeof(BIG_416_60),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_C41417 {
    x::FP_C41417
    y::FP_C41417
    z::FP_C41417
}

@cstruct ECP_ED25519 {
    x::FP_25519
    y::FP_25519
    z::FP_25519
}

@cstruct ECP_FP256BN {
    x::FP_FP256BN
    y::FP_FP256BN
    z::FP_FP256BN
}

@cstruct ECP_FP512BN {
    x::FP_FP512BN
    y::FP_FP512BN
    z::FP_FP512BN
}

@cstruct FP_GOLDILOCKS {
    g::Int64[div(sizeof(BIG_448_58),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_GOLDILOCKS {
    x::FP_GOLDILOCKS
    y::FP_GOLDILOCKS
    z::FP_GOLDILOCKS
}

@cstruct FP_HIFIVE {
    g::Int64[div(sizeof(BIG_336_60),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_HIFIVE {
    x::FP_HIFIVE
    y::FP_HIFIVE
    z::FP_HIFIVE
}

@cstruct FP_NIST256 {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_NIST256 {
    x::FP_NIST256
    y::FP_NIST256
    z::FP_NIST256
}

@cstruct FP_NIST384 {
    g::Int64[div(sizeof(BIG_384_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_NIST384 {
    x::FP_NIST384
    y::FP_NIST384
    z::FP_NIST384
}

@cstruct FP_NIST521 {
    g::Int64[div(sizeof(BIG_528_60),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_NIST521 {
    x::FP_NIST521
    y::FP_NIST521
    z::FP_NIST521
}

@cstruct FP_256PME {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_NUMS256E {
    x::FP_256PME
    y::FP_256PME
    z::FP_256PME
}

@cstruct FP_256PMW {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_NUMS256W {
    x::FP_256PMW
    y::FP_256PMW
    z::FP_256PMW
}

@cstruct FP_384PM {
    g::Int64[div(sizeof(BIG_384_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_NUMS384E {
    x::FP_384PM
    y::FP_384PM
    z::FP_384PM
}

@cstruct ECP_NUMS384W {
    x::FP_384PM
    y::FP_384PM
    z::FP_384PM
}

@cstruct FP_512PM {
    g::Int64[div(sizeof(BIG_512_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_NUMS512E {
    x::FP_512PM
    y::FP_512PM
    z::FP_512PM
}

@cstruct ECP_NUMS512W {
    x::FP_512PM
    y::FP_512PM
    z::FP_512PM
}

@cstruct FP_SECP256K1 {
    g::Int64[div(sizeof(BIG_256_56),sizeof(Int64))]
    XES::Int32
}

@cstruct ECP_SECP256K1 {
    x::FP_SECP256K1
    y::FP_SECP256K1
    z::FP_SECP256K1
}

const HFLEN_2048 = FFLEN_2048 / 2
const P_MBITS_2048 = MODBYTES_1024_58 * 8
const P_TBITS_2048 = P_MBITS_2048 % BASEBITS_1024_58

# Skipping MacroDefinition: P_EXCESS_2048 ( a ) ( ( ( a [ NLEN_1024_58 - 1 ] ) >> ( P_TBITS_2048 ) ) + 1 )
# Skipping MacroDefinition: P_FEXCESS_2048 ( ( chunk ) 1 << ( BASEBITS_1024_58 * NLEN_1024_58 - P_MBITS_2048 - 1 ) )

const HFLEN_3072 = FFLEN_3072 / 2
const P_MBITS_3072 = MODBYTES_384_56 * 8
const P_TBITS_3072 = P_MBITS_3072 % BASEBITS_384_56

# Skipping MacroDefinition: P_EXCESS_3072 ( a ) ( ( ( a [ NLEN_384_56 - 1 ] ) >> ( P_TBITS_3072 ) ) + 1 )
# Skipping MacroDefinition: P_FEXCESS_3072 ( ( chunk ) 1 << ( BASEBITS_384_56 * NLEN_384_56 - P_MBITS_3072 - 1 ) )

const HFLEN_4096 = FFLEN_4096 / 2
const P_MBITS_4096 = MODBYTES_512_60 * 8
const P_TBITS_4096 = P_MBITS_4096 % BASEBITS_512_60

# Skipping MacroDefinition: P_EXCESS_4096 ( a ) ( ( ( a [ NLEN_512_60 - 1 ] ) >> ( P_TBITS_4096 ) ) + 1 )
# Skipping MacroDefinition: P_FEXCESS_4096 ( ( chunk ) 1 << ( BASEBITS_512_60 * NLEN_512_60 - P_MBITS_4096 - 1 ) )

@cstruct FP4_BLS381 {
    a::FP2_BLS381
    b::FP2_BLS381
}

@cstruct FP12_BLS381 {
    a::FP4_BLS381
    b::FP4_BLS381
    c::FP4_BLS381
    type::Cint
}

@cstruct FP4_BLS383 {
    a::FP2_BLS383
    b::FP2_BLS383
}

@cstruct FP12_BLS383 {
    a::FP4_BLS383
    b::FP4_BLS383
    c::FP4_BLS383
    type::Cint
}

@cstruct FP4_BLS461 {
    a::FP2_BLS461
    b::FP2_BLS461
}

@cstruct FP12_BLS461 {
    a::FP4_BLS461
    b::FP4_BLS461
    c::FP4_BLS461
    type::Cint
}

@cstruct FP4_BN254 {
    a::FP2_BN254
    b::FP2_BN254
}

@cstruct FP12_BN254 {
    a::FP4_BN254
    b::FP4_BN254
    c::FP4_BN254
    type::Cint
}

@cstruct FP4_BN254CX {
    a::FP2_BN254CX
    b::FP2_BN254CX
}

@cstruct FP12_BN254CX {
    a::FP4_BN254CX
    b::FP4_BN254CX
    c::FP4_BN254CX
    type::Cint
}

@cstruct FP4_FP256BN {
    a::FP2_FP256BN
    b::FP2_FP256BN
}

@cstruct FP12_FP256BN {
    a::FP4_FP256BN
    b::FP4_FP256BN
    c::FP4_FP256BN
    type::Cint
}

@cstruct FP4_FP512BN {
    a::FP2_FP512BN
    b::FP2_FP512BN
}

@cstruct FP12_FP512BN {
    a::FP4_FP512BN
    b::FP4_FP512BN
    c::FP4_FP512BN
    type::Cint
}

@cstruct FP16_BLS48 {
    a::FP8_BLS48
    b::FP8_BLS48
}

@cstruct FP8_BLS24 {
    a::FP4_BLS24
    b::FP4_BLS24
}

@cstruct FP24_BLS24 {
    a::FP8_BLS24
    b::FP8_BLS24
    c::FP8_BLS24
    type::Cint
}

@cstruct FP48_BLS48 {
    a::FP16_BLS48
    b::FP16_BLS48
    c::FP16_BLS48
    type::Cint
}

const MODBITS_25519 = MBITS_25519
const TBITS_25519 = MBITS_25519 % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_25519 ( ( ( chunk ) 1 << TBITS_25519 ) - 1 )
# Skipping MacroDefinition: FEXCESS_25519 ( ( ( sign32 ) 1 << MAXXES_25519 ) - 1 )
# Skipping MacroDefinition: OMASK_25519 ( - ( ( chunk ) ( 1 ) << TBITS_25519 ) )

const MODBITS_256PME = MBITS_256PME
const TBITS_256PME = MBITS_256PME % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_256PME ( ( ( chunk ) 1 << TBITS_256PME ) - 1 )
# Skipping MacroDefinition: FEXCESS_256PME ( ( ( sign32 ) 1 << MAXXES_256PME ) - 1 )
# Skipping MacroDefinition: OMASK_256PME ( - ( ( chunk ) ( 1 ) << TBITS_256PME ) )

const MODBITS_256PMW = MBITS_256PMW
const TBITS_256PMW = MBITS_256PMW % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_256PMW ( ( ( chunk ) 1 << TBITS_256PMW ) - 1 )
# Skipping MacroDefinition: FEXCESS_256PMW ( ( ( sign32 ) 1 << MAXXES_256PMW ) - 1 )
# Skipping MacroDefinition: OMASK_256PMW ( - ( ( chunk ) ( 1 ) << TBITS_256PMW ) )

const MODBITS_384PM = MBITS_384PM
const TBITS_384PM = MBITS_384PM % BASEBITS_384_56

# Skipping MacroDefinition: TMASK_384PM ( ( ( chunk ) 1 << TBITS_384PM ) - 1 )
# Skipping MacroDefinition: FEXCESS_384PM ( ( ( sign32 ) 1 << MAXXES_384PM ) - 1 )
# Skipping MacroDefinition: OMASK_384PM ( - ( ( chunk ) ( 1 ) << TBITS_384PM ) )

const MODBITS_512PM = MBITS_512PM
const TBITS_512PM = MBITS_512PM % BASEBITS_512_56

# Skipping MacroDefinition: TMASK_512PM ( ( ( chunk ) 1 << TBITS_512PM ) - 1 )
# Skipping MacroDefinition: FEXCESS_512PM ( ( ( sign32 ) 1 << MAXXES_512PM ) - 1 )
# Skipping MacroDefinition: OMASK_512PM ( - ( ( chunk ) ( 1 ) << TBITS_512PM ) )

const MODBITS_ANSSI = MBITS_ANSSI
const TBITS_ANSSI = MBITS_ANSSI % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_ANSSI ( ( ( chunk ) 1 << TBITS_ANSSI ) - 1 )
# Skipping MacroDefinition: FEXCESS_ANSSI ( ( ( sign32 ) 1 << MAXXES_ANSSI ) - 1 )
# Skipping MacroDefinition: OMASK_ANSSI ( - ( ( chunk ) ( 1 ) << TBITS_ANSSI ) )

const MODBITS_BLS24 = MBITS_BLS24
const TBITS_BLS24 = MBITS_BLS24 % BASEBITS_480_56

# Skipping MacroDefinition: TMASK_BLS24 ( ( ( chunk ) 1 << TBITS_BLS24 ) - 1 )
# Skipping MacroDefinition: FEXCESS_BLS24 ( ( ( sign32 ) 1 << MAXXES_BLS24 ) - 1 )
# Skipping MacroDefinition: OMASK_BLS24 ( - ( ( chunk ) ( 1 ) << TBITS_BLS24 ) )

const MODBITS_BLS381 = MBITS_BLS381
const TBITS_BLS381 = MBITS_BLS381 % BASEBITS_384_58

# Skipping MacroDefinition: TMASK_BLS381 ( ( ( chunk ) 1 << TBITS_BLS381 ) - 1 )
# Skipping MacroDefinition: FEXCESS_BLS381 ( ( ( sign32 ) 1 << MAXXES_BLS381 ) - 1 )
# Skipping MacroDefinition: OMASK_BLS381 ( - ( ( chunk ) ( 1 ) << TBITS_BLS381 ) )

const MODBITS_BLS383 = MBITS_BLS383
const TBITS_BLS383 = MBITS_BLS383 % BASEBITS_384_58

# Skipping MacroDefinition: TMASK_BLS383 ( ( ( chunk ) 1 << TBITS_BLS383 ) - 1 )
# Skipping MacroDefinition: FEXCESS_BLS383 ( ( ( sign32 ) 1 << MAXXES_BLS383 ) - 1 )
# Skipping MacroDefinition: OMASK_BLS383 ( - ( ( chunk ) ( 1 ) << TBITS_BLS383 ) )

const MODBITS_BLS461 = MBITS_BLS461
const TBITS_BLS461 = MBITS_BLS461 % BASEBITS_464_60

# Skipping MacroDefinition: TMASK_BLS461 ( ( ( chunk ) 1 << TBITS_BLS461 ) - 1 )
# Skipping MacroDefinition: FEXCESS_BLS461 ( ( ( sign32 ) 1 << MAXXES_BLS461 ) - 1 )
# Skipping MacroDefinition: OMASK_BLS461 ( - ( ( chunk ) ( 1 ) << TBITS_BLS461 ) )

const MODBITS_BLS48 = MBITS_BLS48
const TBITS_BLS48 = MBITS_BLS48 % BASEBITS_560_58

# Skipping MacroDefinition: TMASK_BLS48 ( ( ( chunk ) 1 << TBITS_BLS48 ) - 1 )
# Skipping MacroDefinition: FEXCESS_BLS48 ( ( ( sign32 ) 1 << MAXXES_BLS48 ) - 1 )
# Skipping MacroDefinition: OMASK_BLS48 ( - ( ( chunk ) ( 1 ) << TBITS_BLS48 ) )

const MODBITS_BN254 = MBITS_BN254
const TBITS_BN254 = MBITS_BN254 % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_BN254 ( ( ( chunk ) 1 << TBITS_BN254 ) - 1 )
# Skipping MacroDefinition: FEXCESS_BN254 ( ( ( sign32 ) 1 << MAXXES_BN254 ) - 1 )
# Skipping MacroDefinition: OMASK_BN254 ( - ( ( chunk ) ( 1 ) << TBITS_BN254 ) )

const MODBITS_BN254CX = MBITS_BN254CX
const TBITS_BN254CX = MBITS_BN254CX % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_BN254CX ( ( ( chunk ) 1 << TBITS_BN254CX ) - 1 )
# Skipping MacroDefinition: FEXCESS_BN254CX ( ( ( sign32 ) 1 << MAXXES_BN254CX ) - 1 )
# Skipping MacroDefinition: OMASK_BN254CX ( - ( ( chunk ) ( 1 ) << TBITS_BN254CX ) )

const MODBITS_BRAINPOOL = MBITS_BRAINPOOL
const TBITS_BRAINPOOL = MBITS_BRAINPOOL % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_BRAINPOOL ( ( ( chunk ) 1 << TBITS_BRAINPOOL ) - 1 )
# Skipping MacroDefinition: FEXCESS_BRAINPOOL ( ( ( sign32 ) 1 << MAXXES_BRAINPOOL ) - 1 )
# Skipping MacroDefinition: OMASK_BRAINPOOL ( - ( ( chunk ) ( 1 ) << TBITS_BRAINPOOL ) )

const MODBITS_C41417 = MBITS_C41417
const TBITS_C41417 = MBITS_C41417 % BASEBITS_416_60

# Skipping MacroDefinition: TMASK_C41417 ( ( ( chunk ) 1 << TBITS_C41417 ) - 1 )
# Skipping MacroDefinition: FEXCESS_C41417 ( ( ( sign32 ) 1 << MAXXES_C41417 ) - 1 )
# Skipping MacroDefinition: OMASK_C41417 ( - ( ( chunk ) ( 1 ) << TBITS_C41417 ) )

const MODBITS_FP256BN = MBITS_FP256BN
const TBITS_FP256BN = MBITS_FP256BN % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_FP256BN ( ( ( chunk ) 1 << TBITS_FP256BN ) - 1 )
# Skipping MacroDefinition: FEXCESS_FP256BN ( ( ( sign32 ) 1 << MAXXES_FP256BN ) - 1 )
# Skipping MacroDefinition: OMASK_FP256BN ( - ( ( chunk ) ( 1 ) << TBITS_FP256BN ) )

const MODBITS_FP512BN = MBITS_FP512BN
const TBITS_FP512BN = MBITS_FP512BN % BASEBITS_512_60

# Skipping MacroDefinition: TMASK_FP512BN ( ( ( chunk ) 1 << TBITS_FP512BN ) - 1 )
# Skipping MacroDefinition: FEXCESS_FP512BN ( ( ( sign32 ) 1 << MAXXES_FP512BN ) - 1 )
# Skipping MacroDefinition: OMASK_FP512BN ( - ( ( chunk ) ( 1 ) << TBITS_FP512BN ) )

const MODBITS_GOLDILOCKS = MBITS_GOLDILOCKS
const TBITS_GOLDILOCKS = MBITS_GOLDILOCKS % BASEBITS_448_58

# Skipping MacroDefinition: TMASK_GOLDILOCKS ( ( ( chunk ) 1 << TBITS_GOLDILOCKS ) - 1 )
# Skipping MacroDefinition: FEXCESS_GOLDILOCKS ( ( ( sign32 ) 1 << MAXXES_GOLDILOCKS ) - 1 )
# Skipping MacroDefinition: OMASK_GOLDILOCKS ( - ( ( chunk ) ( 1 ) << TBITS_GOLDILOCKS ) )

const MODBITS_HIFIVE = MBITS_HIFIVE
const TBITS_HIFIVE = MBITS_HIFIVE % BASEBITS_336_60

# Skipping MacroDefinition: TMASK_HIFIVE ( ( ( chunk ) 1 << TBITS_HIFIVE ) - 1 )
# Skipping MacroDefinition: FEXCESS_HIFIVE ( ( ( sign32 ) 1 << MAXXES_HIFIVE ) - 1 )
# Skipping MacroDefinition: OMASK_HIFIVE ( - ( ( chunk ) ( 1 ) << TBITS_HIFIVE ) )

const MODBITS_NIST256 = MBITS_NIST256
const TBITS_NIST256 = MBITS_NIST256 % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_NIST256 ( ( ( chunk ) 1 << TBITS_NIST256 ) - 1 )
# Skipping MacroDefinition: FEXCESS_NIST256 ( ( ( sign32 ) 1 << MAXXES_NIST256 ) - 1 )
# Skipping MacroDefinition: OMASK_NIST256 ( - ( ( chunk ) ( 1 ) << TBITS_NIST256 ) )

const MODBITS_NIST384 = MBITS_NIST384
const TBITS_NIST384 = MBITS_NIST384 % BASEBITS_384_56

# Skipping MacroDefinition: TMASK_NIST384 ( ( ( chunk ) 1 << TBITS_NIST384 ) - 1 )
# Skipping MacroDefinition: FEXCESS_NIST384 ( ( ( sign32 ) 1 << MAXXES_NIST384 ) - 1 )
# Skipping MacroDefinition: OMASK_NIST384 ( - ( ( chunk ) ( 1 ) << TBITS_NIST384 ) )

const MODBITS_NIST521 = MBITS_NIST521
const TBITS_NIST521 = MBITS_NIST521 % BASEBITS_528_60

# Skipping MacroDefinition: TMASK_NIST521 ( ( ( chunk ) 1 << TBITS_NIST521 ) - 1 )
# Skipping MacroDefinition: FEXCESS_NIST521 ( ( ( sign32 ) 1 << MAXXES_NIST521 ) - 1 )
# Skipping MacroDefinition: OMASK_NIST521 ( - ( ( chunk ) ( 1 ) << TBITS_NIST521 ) )

const MODBITS_SECP256K1 = MBITS_SECP256K1
const TBITS_SECP256K1 = MBITS_SECP256K1 % BASEBITS_256_56

# Skipping MacroDefinition: TMASK_SECP256K1 ( ( ( chunk ) 1 << TBITS_SECP256K1 ) - 1 )
# Skipping MacroDefinition: FEXCESS_SECP256K1 ( ( ( sign32 ) 1 << MAXXES_SECP256K1 ) - 1 )
# Skipping MacroDefinition: OMASK_SECP256K1 ( - ( ( chunk ) ( 1 ) << TBITS_SECP256K1 ) )

const PGS_BLS24 = MODBYTES_480_56
const PFS_BLS24 = MODBYTES_480_56
const MPIN_OK = 0
const MPIN_INVALID_POINT = -14
const MPIN_BAD_PIN = -19
const MAXPIN = 10000
const PBLEN = 14
const MESSAGE_SIZE = 256
const M_SIZE_BLS24 = MESSAGE_SIZE + 2PFS_BLS24 + 1
const PGS_BLS48 = MODBYTES_560_58
const PFS_BLS48 = MODBYTES_560_58
const M_SIZE_BLS48 = MESSAGE_SIZE + 2PFS_BLS48 + 1
const PGS_BLS381 = MODBYTES_384_58
const PFS_BLS381 = MODBYTES_384_58
const MPIN_PAS = 16
const M_SIZE_BLS381 = MESSAGE_SIZE + 2PFS_BLS381 + 1
const PGS_BLS383 = MODBYTES_384_58
const PFS_BLS383 = MODBYTES_384_58
const M_SIZE_BLS383 = MESSAGE_SIZE + 2PFS_BLS383 + 1
const PGS_BLS461 = MODBYTES_464_60
const PFS_BLS461 = MODBYTES_464_60
const M_SIZE_BLS461 = MESSAGE_SIZE + 2PFS_BLS461 + 1
const PGS_BN254 = MODBYTES_256_56
const PFS_BN254 = MODBYTES_256_56
const M_SIZE_BN254 = MESSAGE_SIZE + 2PFS_BN254 + 1
const PGS_BN254CX = MODBYTES_256_56
const PFS_BN254CX = MODBYTES_256_56
const M_SIZE_BN254CX = MESSAGE_SIZE + 2PFS_BN254CX + 1
const PGS_FP256BN = MODBYTES_256_56
const PFS_FP256BN = MODBYTES_256_56
const M_SIZE_FP256BN = MESSAGE_SIZE + 2PFS_FP256BN + 1
const PGS_FP512BN = MODBYTES_512_60
const PFS_FP512BN = MODBYTES_512_60
const M_SIZE_FP512BN = MESSAGE_SIZE + 2PFS_FP512BN + 1
const TIME_SLOT_MINUTES = 1440
const HASH_TYPE_RSA_2048 = SHA256
const RFS_2048 = MODBYTES_1024_58 * FFLEN_2048

@cstruct rsa_public_key_2048 {
    e::Int32
    n::BIG_1024_58[2]
}

@cstruct rsa_private_key_2048 {
    p::BIG_1024_58[1]
    q::BIG_1024_58[1]
    dp::BIG_1024_58[1]
    dq::BIG_1024_58[1]
    c::BIG_1024_58[1]
}

const HASH_TYPE_RSA_3072 = SHA256
const RFS_3072 = MODBYTES_384_56 * FFLEN_3072

@cstruct rsa_public_key_3072 {
    e::Int32
    n::BIG_384_56[8]
}

@cstruct rsa_private_key_3072 {
    p::BIG_384_56[4]
    q::BIG_384_56[4]
    dp::BIG_384_56[4]
    dq::BIG_384_56[4]
    c::BIG_384_56[4]
}

const HASH_TYPE_RSA_4096 = SHA256
const RFS_4096 = MODBYTES_512_60 * FFLEN_4096

@cstruct rsa_public_key_4096 {
    e::Int32
    n::BIG_512_60[8]
}

@cstruct rsa_private_key_4096 {
    p::BIG_512_60[4]
    q::BIG_512_60[4]
    dp::BIG_512_60[4]
    dq::BIG_512_60[4]
    c::BIG_512_60[4]
}

const MAX_RSA_BYTES = 512
const WCC_PGS_BLS24 = MODBYTES_480_56
const WCC_PFS_BLS24 = MODBYTES_480_56
const WCC_OK = 0
const WCC_INVALID_POINT = -51
const PIV = 12
const PTAG = 16
const WCC_PGS_BLS48 = MODBYTES_560_58
const WCC_PFS_BLS48 = MODBYTES_560_58
const WCC_PGS_BLS381 = MODBYTES_384_58
const WCC_PFS_BLS381 = MODBYTES_384_58
const WCC_PGS_BLS383 = MODBYTES_384_58
const WCC_PFS_BLS383 = MODBYTES_384_58
const WCC_PGS_BLS461 = MODBYTES_464_60
const WCC_PFS_BLS461 = MODBYTES_464_60
const WCC_PGS_BN254 = MODBYTES_256_56
const WCC_PFS_BN254 = MODBYTES_256_56
const WCC_PGS_BN254CX = MODBYTES_256_56
const WCC_PFS_BN254CX = MODBYTES_256_56
const WCC_PGS_FP256BN = MODBYTES_256_56
const WCC_PFS_FP256BN = MODBYTES_256_56
const WCC_PGS_FP512BN = MODBYTES_512_60
const WCC_PFS_FP512BN = MODBYTES_512_60

@cstruct pktype {
    type::Cint
    hash::Cint
    curve::Cint
}

