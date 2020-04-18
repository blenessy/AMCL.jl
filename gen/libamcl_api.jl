# Julia wrapper for header: amcl.h
# Automatically generated using Clang.jl


function OCT_output(O)
    ccall((:OCT_output, libamcl_core), Cvoid, (Ptr{octet},), O)
end

function OCT_output_string(O)
    ccall((:OCT_output_string, libamcl_core), Cvoid, (Ptr{octet},), O)
end

function OCT_clear(O)
    ccall((:OCT_clear, libamcl_core), Cvoid, (Ptr{octet},), O)
end

function OCT_comp(O, P)
    ccall((:OCT_comp, libamcl_core), Cint, (Ptr{octet}, Ptr{octet}), O, P)
end

function OCT_ncomp(O, P, n)
    ccall((:OCT_ncomp, libamcl_core), Cint, (Ptr{octet}, Ptr{octet}, Cint), O, P, n)
end

function OCT_jstring(O, s)
    ccall((:OCT_jstring, libamcl_core), Cvoid, (Ptr{octet}, Cstring), O, s)
end

function OCT_jbytes(O, s, n)
    ccall((:OCT_jbytes, libamcl_core), Cvoid, (Ptr{octet}, Cstring, Cint), O, s, n)
end

function OCT_jbyte(O, b, n)
    ccall((:OCT_jbyte, libamcl_core), Cvoid, (Ptr{octet}, Cint, Cint), O, b, n)
end

function OCT_joctet(O, P)
    ccall((:OCT_joctet, libamcl_core), Cvoid, (Ptr{octet}, Ptr{octet}), O, P)
end

function OCT_xor(O, P)
    ccall((:OCT_xor, libamcl_core), Cvoid, (Ptr{octet}, Ptr{octet}), O, P)
end

function OCT_empty(O)
    ccall((:OCT_empty, libamcl_core), Cvoid, (Ptr{octet},), O)
end

function OCT_pad(O, n)
    ccall((:OCT_pad, libamcl_core), Cint, (Ptr{octet}, Cint), O, n)
end

function OCT_tobase64(b, O)
    ccall((:OCT_tobase64, libamcl_core), Cvoid, (Cstring, Ptr{octet}), b, O)
end

function OCT_frombase64(O, b)
    ccall((:OCT_frombase64, libamcl_core), Cvoid, (Ptr{octet}, Cstring), O, b)
end

function OCT_copy(O, P)
    ccall((:OCT_copy, libamcl_core), Cvoid, (Ptr{octet}, Ptr{octet}), O, P)
end

function OCT_xorbyte(O, m)
    ccall((:OCT_xorbyte, libamcl_core), Cvoid, (Ptr{octet}, Cint), O, m)
end

function OCT_chop(O, P, n)
    ccall((:OCT_chop, libamcl_core), Cvoid, (Ptr{octet}, Ptr{octet}, Cint), O, P, n)
end

function OCT_jint(O, m, n)
    ccall((:OCT_jint, libamcl_core), Cvoid, (Ptr{octet}, Cint, Cint), O, m, n)
end

function OCT_rand(O, R, n)
    ccall((:OCT_rand, libamcl_core), Cvoid, (Ptr{octet}, Ptr{csprng}, Cint), O, R, n)
end

function OCT_shl(O, n)
    ccall((:OCT_shl, libamcl_core), Cvoid, (Ptr{octet}, Cint), O, n)
end

function OCT_fromHex(dst, src)
    ccall((:OCT_fromHex, libamcl_core), Cvoid, (Ptr{octet}, Cstring), dst, src)
end

function OCT_toHex(src, dst)
    ccall((:OCT_toHex, libamcl_core), Cvoid, (Ptr{octet}, Cstring), src, dst)
end

function OCT_toStr(src, dst)
    ccall((:OCT_toStr, libamcl_core), Cvoid, (Ptr{octet}, Cstring), src, dst)
end

function HASH256_init(H)
    ccall((:HASH256_init, libamcl_core), Cvoid, (Ptr{hash256},), H)
end

function HASH256_process(H, b)
    ccall((:HASH256_process, libamcl_core), Cvoid, (Ptr{hash256}, Cint), H, b)
end

function HASH256_hash(H, h)
    ccall((:HASH256_hash, libamcl_core), Cvoid, (Ptr{hash256}, Cstring), H, h)
end

function HASH384_init(H)
    ccall((:HASH384_init, libamcl_core), Cvoid, (Ptr{hash384},), H)
end

function HASH384_process(H, b)
    ccall((:HASH384_process, libamcl_core), Cvoid, (Ptr{hash384}, Cint), H, b)
end

function HASH384_hash(H, h)
    ccall((:HASH384_hash, libamcl_core), Cvoid, (Ptr{hash384}, Cstring), H, h)
end

function HASH512_init(H)
    ccall((:HASH512_init, libamcl_core), Cvoid, (Ptr{hash512},), H)
end

function HASH512_process(H, b)
    ccall((:HASH512_process, libamcl_core), Cvoid, (Ptr{hash512}, Cint), H, b)
end

function HASH512_hash(H, h)
    ccall((:HASH512_hash, libamcl_core), Cvoid, (Ptr{hash512}, Cstring), H, h)
end

function SHA3_init(H, t)
    ccall((:SHA3_init, libamcl_core), Cvoid, (Ptr{sha3}, Cint), H, t)
end

function SHA3_process(H, b)
    ccall((:SHA3_process, libamcl_core), Cvoid, (Ptr{sha3}, Cint), H, b)
end

function SHA3_hash(H, h)
    ccall((:SHA3_hash, libamcl_core), Cvoid, (Ptr{sha3}, Cstring), H, h)
end

function SHA3_shake(H, h, len)
    ccall((:SHA3_shake, libamcl_core), Cvoid, (Ptr{sha3}, Cstring, Cint), H, h, len)
end

function SHA3_squeeze(H, h, len)
    ccall((:SHA3_squeeze, libamcl_core), Cvoid, (Ptr{sha3}, Cstring, Cint), H, h, len)
end

function AES_reset(A, m, iv)
    ccall((:AES_reset, libamcl_core), Cvoid, (Ptr{amcl_aes}, Cint, Cstring), A, m, iv)
end

function AES_getreg(A, f)
    ccall((:AES_getreg, libamcl_core), Cvoid, (Ptr{amcl_aes}, Cstring), A, f)
end

function AES_init(A, m, n, k, iv)
    ccall((:AES_init, libamcl_core), Cint, (Ptr{amcl_aes}, Cint, Cint, Cstring, Cstring), A, m, n, k, iv)
end

function AES_ecb_encrypt(A, b)
    ccall((:AES_ecb_encrypt, libamcl_core), Cvoid, (Ptr{amcl_aes}, Ptr{Cuchar}), A, b)
end

function AES_ecb_decrypt(A, b)
    ccall((:AES_ecb_decrypt, libamcl_core), Cvoid, (Ptr{amcl_aes}, Ptr{Cuchar}), A, b)
end

function AES_encrypt(A, b)
    ccall((:AES_encrypt, libamcl_core), UInt32, (Ptr{amcl_aes}, Cstring), A, b)
end

function AES_decrypt(A, b)
    ccall((:AES_decrypt, libamcl_core), UInt32, (Ptr{amcl_aes}, Cstring), A, b)
end

function AES_end(A)
    ccall((:AES_end, libamcl_core), Cvoid, (Ptr{amcl_aes},), A)
end

function GCM_init(G, nk, k, n, iv)
    ccall((:GCM_init, libamcl_core), Cvoid, (Ptr{gcm}, Cint, Cstring, Cint, Cstring), G, nk, k, n, iv)
end

function GCM_add_header(G, b, n)
    ccall((:GCM_add_header, libamcl_core), Cint, (Ptr{gcm}, Cstring, Cint), G, b, n)
end

function GCM_add_plain(G, c, p, n)
    ccall((:GCM_add_plain, libamcl_core), Cint, (Ptr{gcm}, Cstring, Cstring, Cint), G, c, p, n)
end

function GCM_add_cipher(G, p, c, n)
    ccall((:GCM_add_cipher, libamcl_core), Cint, (Ptr{gcm}, Cstring, Cstring, Cint), G, p, c, n)
end

function GCM_finish(G, t)
    ccall((:GCM_finish, libamcl_core), Cvoid, (Ptr{gcm}, Cstring), G, t)
end

function RAND_seed(R, n, b)
    ccall((:RAND_seed, libamcl_core), Cvoid, (Ptr{csprng}, Cint, Cstring), R, n, b)
end

function RAND_clean(R)
    ccall((:RAND_clean, libamcl_core), Cvoid, (Ptr{csprng},), R)
end

function RAND_byte(R)
    ccall((:RAND_byte, libamcl_core), Cint, (Ptr{csprng},), R)
end
# Julia wrapper for header: arch.h
# Automatically generated using Clang.jl

# Julia wrapper for header: big_1024_58.h
# Automatically generated using Clang.jl


function BIG_1024_58_iszilch(x)
    ccall((:BIG_1024_58_iszilch, libamcl_rsa_2048), Cint, (BIG_1024_58,), x)
end

function BIG_1024_58_isunity(x)
    ccall((:BIG_1024_58_isunity, libamcl_rsa_2048), Cint, (BIG_1024_58,), x)
end

function BIG_1024_58_diszilch(x)
    ccall((:BIG_1024_58_diszilch, libamcl_rsa_2048), Cint, (DBIG_1024_58,), x)
end

function BIG_1024_58_output(x)
    ccall((:BIG_1024_58_output, libamcl_rsa_2048), Cvoid, (BIG_1024_58,), x)
end

function BIG_1024_58_rawoutput(x)
    ccall((:BIG_1024_58_rawoutput, libamcl_rsa_2048), Cvoid, (BIG_1024_58,), x)
end

function BIG_1024_58_cswap(x, y, s)
    ccall((:BIG_1024_58_cswap, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, Cint), x, y, s)
end

function BIG_1024_58_cmove(x, y, s)
    ccall((:BIG_1024_58_cmove, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, Cint), x, y, s)
end

function BIG_1024_58_dcmove(x, y, s)
    ccall((:BIG_1024_58_dcmove, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, Cint), x, y, s)
end

function BIG_1024_58_toBytes(a, x)
    ccall((:BIG_1024_58_toBytes, libamcl_rsa_2048), Cvoid, (Cstring, BIG_1024_58), a, x)
end

function BIG_1024_58_fromBytes(x, a)
    ccall((:BIG_1024_58_fromBytes, libamcl_rsa_2048), Cvoid, (BIG_1024_58, Cstring), x, a)
end

function BIG_1024_58_fromBytesLen(x, a, s)
    ccall((:BIG_1024_58_fromBytesLen, libamcl_rsa_2048), Cvoid, (BIG_1024_58, Cstring, Cint), x, a, s)
end

function BIG_1024_58_dfromBytesLen(x, a, s)
    ccall((:BIG_1024_58_dfromBytesLen, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, Cstring, Cint), x, a, s)
end

function BIG_1024_58_doutput(x)
    ccall((:BIG_1024_58_doutput, libamcl_rsa_2048), Cvoid, (DBIG_1024_58,), x)
end

function BIG_1024_58_drawoutput(x)
    ccall((:BIG_1024_58_drawoutput, libamcl_rsa_2048), Cvoid, (DBIG_1024_58,), x)
end

function BIG_1024_58_rcopy(x, y)
    ccall((:BIG_1024_58_rcopy, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58), x, y)
end

function BIG_1024_58_copy(x, y)
    ccall((:BIG_1024_58_copy, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58), x, y)
end

function BIG_1024_58_dcopy(x, y)
    ccall((:BIG_1024_58_dcopy, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, DBIG_1024_58), x, y)
end

function BIG_1024_58_dsucopy(x, y)
    ccall((:BIG_1024_58_dsucopy, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, BIG_1024_58), x, y)
end

function BIG_1024_58_dscopy(x, y)
    ccall((:BIG_1024_58_dscopy, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, BIG_1024_58), x, y)
end

function BIG_1024_58_sdcopy(x, y)
    ccall((:BIG_1024_58_sdcopy, libamcl_rsa_2048), Cvoid, (BIG_1024_58, DBIG_1024_58), x, y)
end

function BIG_1024_58_sducopy(x, y)
    ccall((:BIG_1024_58_sducopy, libamcl_rsa_2048), Cvoid, (BIG_1024_58, DBIG_1024_58), x, y)
end

function BIG_1024_58_zero(x)
    ccall((:BIG_1024_58_zero, libamcl_rsa_2048), Cvoid, (BIG_1024_58,), x)
end

function BIG_1024_58_dzero(x)
    ccall((:BIG_1024_58_dzero, libamcl_rsa_2048), Cvoid, (DBIG_1024_58,), x)
end

function BIG_1024_58_one(x)
    ccall((:BIG_1024_58_one, libamcl_rsa_2048), Cvoid, (BIG_1024_58,), x)
end

function BIG_1024_58_invmod2m(x)
    ccall((:BIG_1024_58_invmod2m, libamcl_rsa_2048), Cvoid, (BIG_1024_58,), x)
end

function BIG_1024_58_add(x, y, z)
    ccall((:BIG_1024_58_add, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, z)
end

function BIG_1024_58_or(x, y, z)
    ccall((:BIG_1024_58_or, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, z)
end

function BIG_1024_58_inc(x, i)
    ccall((:BIG_1024_58_inc, libamcl_rsa_2048), Cvoid, (BIG_1024_58, Cint), x, i)
end

function BIG_1024_58_sub(x, y, z)
    ccall((:BIG_1024_58_sub, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, z)
end

function BIG_1024_58_dec(x, i)
    ccall((:BIG_1024_58_dec, libamcl_rsa_2048), Cvoid, (BIG_1024_58, Cint), x, i)
end

function BIG_1024_58_dadd(x, y, z)
    ccall((:BIG_1024_58_dadd, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, DBIG_1024_58, DBIG_1024_58), x, y, z)
end

function BIG_1024_58_dsub(x, y, z)
    ccall((:BIG_1024_58_dsub, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, DBIG_1024_58, DBIG_1024_58), x, y, z)
end

function BIG_1024_58_imul(x, y, i)
    ccall((:BIG_1024_58_imul, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, Cint), x, y, i)
end

function BIG_1024_58_pmul(x, y, i)
    ccall((:BIG_1024_58_pmul, libamcl_rsa_2048), Int64, (BIG_1024_58, BIG_1024_58, Cint), x, y, i)
end

function BIG_1024_58_div3(x)
    ccall((:BIG_1024_58_div3, libamcl_rsa_2048), Cint, (BIG_1024_58,), x)
end

function BIG_1024_58_pxmul(x, y, i)
    ccall((:BIG_1024_58_pxmul, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, BIG_1024_58, Cint), x, y, i)
end

function BIG_1024_58_mul(x, y, z)
    ccall((:BIG_1024_58_mul, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, z)
end

function BIG_1024_58_smul(x, y, z)
    ccall((:BIG_1024_58_smul, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, z)
end

function BIG_1024_58_sqr(x, y)
    ccall((:BIG_1024_58_sqr, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, BIG_1024_58), x, y)
end

function BIG_1024_58_monty(a, md, MC, d)
    ccall((:BIG_1024_58_monty, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, Int64, DBIG_1024_58), a, md, MC, d)
end

function BIG_1024_58_shl(x, s)
    ccall((:BIG_1024_58_shl, libamcl_rsa_2048), Cvoid, (BIG_1024_58, Cint), x, s)
end

function BIG_1024_58_fshl(x, s)
    ccall((:BIG_1024_58_fshl, libamcl_rsa_2048), Cint, (BIG_1024_58, Cint), x, s)
end

function BIG_1024_58_dshl(x, s)
    ccall((:BIG_1024_58_dshl, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, Cint), x, s)
end

function BIG_1024_58_shr(x, s)
    ccall((:BIG_1024_58_shr, libamcl_rsa_2048), Cvoid, (BIG_1024_58, Cint), x, s)
end

function BIG_1024_58_ssn(r, a, m)
    ccall((:BIG_1024_58_ssn, libamcl_rsa_2048), Cint, (BIG_1024_58, BIG_1024_58, BIG_1024_58), r, a, m)
end

function BIG_1024_58_fshr(x, s)
    ccall((:BIG_1024_58_fshr, libamcl_rsa_2048), Cint, (BIG_1024_58, Cint), x, s)
end

function BIG_1024_58_dshr(x, s)
    ccall((:BIG_1024_58_dshr, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, Cint), x, s)
end

function BIG_1024_58_split(x, y, z, s)
    ccall((:BIG_1024_58_split, libamcl_rsa_2048), Int64, (BIG_1024_58, BIG_1024_58, DBIG_1024_58, Cint), x, y, z, s)
end

function BIG_1024_58_norm(x)
    ccall((:BIG_1024_58_norm, libamcl_rsa_2048), Int64, (BIG_1024_58,), x)
end

function BIG_1024_58_dnorm(x)
    ccall((:BIG_1024_58_dnorm, libamcl_rsa_2048), Cvoid, (DBIG_1024_58,), x)
end

function BIG_1024_58_comp(x, y)
    ccall((:BIG_1024_58_comp, libamcl_rsa_2048), Cint, (BIG_1024_58, BIG_1024_58), x, y)
end

function BIG_1024_58_dcomp(x, y)
    ccall((:BIG_1024_58_dcomp, libamcl_rsa_2048), Cint, (DBIG_1024_58, DBIG_1024_58), x, y)
end

function BIG_1024_58_nbits(x)
    ccall((:BIG_1024_58_nbits, libamcl_rsa_2048), Cint, (BIG_1024_58,), x)
end

function BIG_1024_58_dnbits(x)
    ccall((:BIG_1024_58_dnbits, libamcl_rsa_2048), Cint, (DBIG_1024_58,), x)
end

function BIG_1024_58_mod(x, n)
    ccall((:BIG_1024_58_mod, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58), x, n)
end

function BIG_1024_58_sdiv(x, n)
    ccall((:BIG_1024_58_sdiv, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58), x, n)
end

function BIG_1024_58_dmod(x, y, n)
    ccall((:BIG_1024_58_dmod, libamcl_rsa_2048), Cvoid, (BIG_1024_58, DBIG_1024_58, BIG_1024_58), x, y, n)
end

function BIG_1024_58_ddiv(x, y, n)
    ccall((:BIG_1024_58_ddiv, libamcl_rsa_2048), Cvoid, (BIG_1024_58, DBIG_1024_58, BIG_1024_58), x, y, n)
end

function BIG_1024_58_parity(x)
    ccall((:BIG_1024_58_parity, libamcl_rsa_2048), Cint, (BIG_1024_58,), x)
end

function BIG_1024_58_bit(x, i)
    ccall((:BIG_1024_58_bit, libamcl_rsa_2048), Cint, (BIG_1024_58, Cint), x, i)
end

function BIG_1024_58_lastbits(x, n)
    ccall((:BIG_1024_58_lastbits, libamcl_rsa_2048), Cint, (BIG_1024_58, Cint), x, n)
end

function BIG_1024_58_random(x, r)
    ccall((:BIG_1024_58_random, libamcl_rsa_2048), Cvoid, (BIG_1024_58, Ptr{csprng}), x, r)
end

function BIG_1024_58_randomnum(x, n, r)
    ccall((:BIG_1024_58_randomnum, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, Ptr{csprng}), x, n, r)
end

function BIG_1024_58_modmul(x, y, z, n)
    ccall((:BIG_1024_58_modmul, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, z, n)
end

function BIG_1024_58_moddiv(x, y, z, n)
    ccall((:BIG_1024_58_moddiv, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, z, n)
end

function BIG_1024_58_modsqr(x, y, n)
    ccall((:BIG_1024_58_modsqr, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, n)
end

function BIG_1024_58_modneg(x, y, n)
    ccall((:BIG_1024_58_modneg, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, n)
end

function BIG_1024_58_jacobi(x, y)
    ccall((:BIG_1024_58_jacobi, libamcl_rsa_2048), Cint, (BIG_1024_58, BIG_1024_58), x, y)
end

function BIG_1024_58_invmodp(x, y, n)
    ccall((:BIG_1024_58_invmodp, libamcl_rsa_2048), Cvoid, (BIG_1024_58, BIG_1024_58, BIG_1024_58), x, y, n)
end

function BIG_1024_58_mod2m(x, m)
    ccall((:BIG_1024_58_mod2m, libamcl_rsa_2048), Cvoid, (BIG_1024_58, Cint), x, m)
end

function BIG_1024_58_dmod2m(x, m)
    ccall((:BIG_1024_58_dmod2m, libamcl_rsa_2048), Cvoid, (DBIG_1024_58, Cint), x, m)
end

function muladd_1024_58(x, y, c, r)
    ccall((:muladd_1024_58, libamcl_rsa_2048), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_256_56.h
# Automatically generated using Clang.jl


function BIG_256_56_iszilch(x)
    ccall((:BIG_256_56_iszilch, libamcl_curve_BN254), Cint, (BIG_256_56,), x)
end

function BIG_256_56_isunity(x)
    ccall((:BIG_256_56_isunity, libamcl_curve_BN254), Cint, (BIG_256_56,), x)
end

function BIG_256_56_diszilch(x)
    ccall((:BIG_256_56_diszilch, libamcl_curve_BN254), Cint, (DBIG_256_56,), x)
end

function BIG_256_56_output(x)
    ccall((:BIG_256_56_output, libamcl_curve_BN254), Cvoid, (BIG_256_56,), x)
end

function BIG_256_56_rawoutput(x)
    ccall((:BIG_256_56_rawoutput, libamcl_curve_BN254), Cvoid, (BIG_256_56,), x)
end

function BIG_256_56_cswap(x, y, s)
    ccall((:BIG_256_56_cswap, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, Cint), x, y, s)
end

function BIG_256_56_cmove(x, y, s)
    ccall((:BIG_256_56_cmove, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, Cint), x, y, s)
end

function BIG_256_56_dcmove(x, y, s)
    ccall((:BIG_256_56_dcmove, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, Cint), x, y, s)
end

function BIG_256_56_toBytes(a, x)
    ccall((:BIG_256_56_toBytes, libamcl_curve_BN254), Cvoid, (Cstring, BIG_256_56), a, x)
end

function BIG_256_56_fromBytes(x, a)
    ccall((:BIG_256_56_fromBytes, libamcl_curve_BN254), Cvoid, (BIG_256_56, Cstring), x, a)
end

function BIG_256_56_fromBytesLen(x, a, s)
    ccall((:BIG_256_56_fromBytesLen, libamcl_curve_BN254), Cvoid, (BIG_256_56, Cstring, Cint), x, a, s)
end

function BIG_256_56_dfromBytesLen(x, a, s)
    ccall((:BIG_256_56_dfromBytesLen, libamcl_curve_BN254), Cvoid, (DBIG_256_56, Cstring, Cint), x, a, s)
end

function BIG_256_56_doutput(x)
    ccall((:BIG_256_56_doutput, libamcl_curve_BN254), Cvoid, (DBIG_256_56,), x)
end

function BIG_256_56_drawoutput(x)
    ccall((:BIG_256_56_drawoutput, libamcl_curve_BN254), Cvoid, (DBIG_256_56,), x)
end

function BIG_256_56_rcopy(x, y)
    ccall((:BIG_256_56_rcopy, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56), x, y)
end

function BIG_256_56_copy(x, y)
    ccall((:BIG_256_56_copy, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56), x, y)
end

function BIG_256_56_dcopy(x, y)
    ccall((:BIG_256_56_dcopy, libamcl_curve_BN254), Cvoid, (DBIG_256_56, DBIG_256_56), x, y)
end

function BIG_256_56_dsucopy(x, y)
    ccall((:BIG_256_56_dsucopy, libamcl_curve_BN254), Cvoid, (DBIG_256_56, BIG_256_56), x, y)
end

function BIG_256_56_dscopy(x, y)
    ccall((:BIG_256_56_dscopy, libamcl_curve_BN254), Cvoid, (DBIG_256_56, BIG_256_56), x, y)
end

function BIG_256_56_sdcopy(x, y)
    ccall((:BIG_256_56_sdcopy, libamcl_curve_BN254), Cvoid, (BIG_256_56, DBIG_256_56), x, y)
end

function BIG_256_56_sducopy(x, y)
    ccall((:BIG_256_56_sducopy, libamcl_curve_BN254), Cvoid, (BIG_256_56, DBIG_256_56), x, y)
end

function BIG_256_56_zero(x)
    ccall((:BIG_256_56_zero, libamcl_curve_BN254), Cvoid, (BIG_256_56,), x)
end

function BIG_256_56_dzero(x)
    ccall((:BIG_256_56_dzero, libamcl_curve_BN254), Cvoid, (DBIG_256_56,), x)
end

function BIG_256_56_one(x)
    ccall((:BIG_256_56_one, libamcl_curve_BN254), Cvoid, (BIG_256_56,), x)
end

function BIG_256_56_invmod2m(x)
    ccall((:BIG_256_56_invmod2m, libamcl_curve_BN254), Cvoid, (BIG_256_56,), x)
end

function BIG_256_56_add(x, y, z)
    ccall((:BIG_256_56_add, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, BIG_256_56), x, y, z)
end

function BIG_256_56_or(x, y, z)
    ccall((:BIG_256_56_or, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, BIG_256_56), x, y, z)
end

function BIG_256_56_inc(x, i)
    ccall((:BIG_256_56_inc, libamcl_curve_BN254), Cvoid, (BIG_256_56, Cint), x, i)
end

function BIG_256_56_sub(x, y, z)
    ccall((:BIG_256_56_sub, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, BIG_256_56), x, y, z)
end

function BIG_256_56_dec(x, i)
    ccall((:BIG_256_56_dec, libamcl_curve_BN254), Cvoid, (BIG_256_56, Cint), x, i)
end

function BIG_256_56_dadd(x, y, z)
    ccall((:BIG_256_56_dadd, libamcl_curve_BN254), Cvoid, (DBIG_256_56, DBIG_256_56, DBIG_256_56), x, y, z)
end

function BIG_256_56_dsub(x, y, z)
    ccall((:BIG_256_56_dsub, libamcl_curve_BN254), Cvoid, (DBIG_256_56, DBIG_256_56, DBIG_256_56), x, y, z)
end

function BIG_256_56_imul(x, y, i)
    ccall((:BIG_256_56_imul, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, Cint), x, y, i)
end

function BIG_256_56_pmul(x, y, i)
    ccall((:BIG_256_56_pmul, libamcl_curve_BN254), Int64, (BIG_256_56, BIG_256_56, Cint), x, y, i)
end

function BIG_256_56_div3(x)
    ccall((:BIG_256_56_div3, libamcl_curve_BN254), Cint, (BIG_256_56,), x)
end

function BIG_256_56_pxmul(x, y, i)
    ccall((:BIG_256_56_pxmul, libamcl_curve_BN254), Cvoid, (DBIG_256_56, BIG_256_56, Cint), x, y, i)
end

function BIG_256_56_mul(x, y, z)
    ccall((:BIG_256_56_mul, libamcl_curve_BN254), Cvoid, (DBIG_256_56, BIG_256_56, BIG_256_56), x, y, z)
end

function BIG_256_56_smul(x, y, z)
    ccall((:BIG_256_56_smul, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, BIG_256_56), x, y, z)
end

function BIG_256_56_sqr(x, y)
    ccall((:BIG_256_56_sqr, libamcl_curve_BN254), Cvoid, (DBIG_256_56, BIG_256_56), x, y)
end

function BIG_256_56_monty(a, md, MC, d)
    ccall((:BIG_256_56_monty, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, Int64, DBIG_256_56), a, md, MC, d)
end

function BIG_256_56_shl(x, s)
    ccall((:BIG_256_56_shl, libamcl_curve_BN254), Cvoid, (BIG_256_56, Cint), x, s)
end

function BIG_256_56_fshl(x, s)
    ccall((:BIG_256_56_fshl, libamcl_curve_BN254), Cint, (BIG_256_56, Cint), x, s)
end

function BIG_256_56_dshl(x, s)
    ccall((:BIG_256_56_dshl, libamcl_curve_BN254), Cvoid, (DBIG_256_56, Cint), x, s)
end

function BIG_256_56_shr(x, s)
    ccall((:BIG_256_56_shr, libamcl_curve_BN254), Cvoid, (BIG_256_56, Cint), x, s)
end

function BIG_256_56_ssn(r, a, m)
    ccall((:BIG_256_56_ssn, libamcl_curve_BN254), Cint, (BIG_256_56, BIG_256_56, BIG_256_56), r, a, m)
end

function BIG_256_56_fshr(x, s)
    ccall((:BIG_256_56_fshr, libamcl_curve_BN254), Cint, (BIG_256_56, Cint), x, s)
end

function BIG_256_56_dshr(x, s)
    ccall((:BIG_256_56_dshr, libamcl_curve_BN254), Cvoid, (DBIG_256_56, Cint), x, s)
end

function BIG_256_56_split(x, y, z, s)
    ccall((:BIG_256_56_split, libamcl_curve_BN254), Int64, (BIG_256_56, BIG_256_56, DBIG_256_56, Cint), x, y, z, s)
end

function BIG_256_56_norm(x)
    ccall((:BIG_256_56_norm, libamcl_curve_BN254), Int64, (BIG_256_56,), x)
end

function BIG_256_56_dnorm(x)
    ccall((:BIG_256_56_dnorm, libamcl_curve_BN254), Cvoid, (DBIG_256_56,), x)
end

function BIG_256_56_comp(x, y)
    ccall((:BIG_256_56_comp, libamcl_curve_BN254), Cint, (BIG_256_56, BIG_256_56), x, y)
end

function BIG_256_56_dcomp(x, y)
    ccall((:BIG_256_56_dcomp, libamcl_curve_BN254), Cint, (DBIG_256_56, DBIG_256_56), x, y)
end

function BIG_256_56_nbits(x)
    ccall((:BIG_256_56_nbits, libamcl_curve_BN254), Cint, (BIG_256_56,), x)
end

function BIG_256_56_dnbits(x)
    ccall((:BIG_256_56_dnbits, libamcl_curve_BN254), Cint, (DBIG_256_56,), x)
end

function BIG_256_56_mod(x, n)
    ccall((:BIG_256_56_mod, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56), x, n)
end

function BIG_256_56_sdiv(x, n)
    ccall((:BIG_256_56_sdiv, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56), x, n)
end

function BIG_256_56_dmod(x, y, n)
    ccall((:BIG_256_56_dmod, libamcl_curve_BN254), Cvoid, (BIG_256_56, DBIG_256_56, BIG_256_56), x, y, n)
end

function BIG_256_56_ddiv(x, y, n)
    ccall((:BIG_256_56_ddiv, libamcl_curve_BN254), Cvoid, (BIG_256_56, DBIG_256_56, BIG_256_56), x, y, n)
end

function BIG_256_56_parity(x)
    ccall((:BIG_256_56_parity, libamcl_curve_BN254), Cint, (BIG_256_56,), x)
end

function BIG_256_56_bit(x, i)
    ccall((:BIG_256_56_bit, libamcl_curve_BN254), Cint, (BIG_256_56, Cint), x, i)
end

function BIG_256_56_lastbits(x, n)
    ccall((:BIG_256_56_lastbits, libamcl_curve_BN254), Cint, (BIG_256_56, Cint), x, n)
end

function BIG_256_56_random(x, r)
    ccall((:BIG_256_56_random, libamcl_curve_BN254), Cvoid, (BIG_256_56, Ptr{csprng}), x, r)
end

function BIG_256_56_randomnum(x, n, r)
    ccall((:BIG_256_56_randomnum, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, Ptr{csprng}), x, n, r)
end

function BIG_256_56_modmul(x, y, z, n)
    ccall((:BIG_256_56_modmul, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, BIG_256_56, BIG_256_56), x, y, z, n)
end

function BIG_256_56_moddiv(x, y, z, n)
    ccall((:BIG_256_56_moddiv, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, BIG_256_56, BIG_256_56), x, y, z, n)
end

function BIG_256_56_modsqr(x, y, n)
    ccall((:BIG_256_56_modsqr, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, BIG_256_56), x, y, n)
end

function BIG_256_56_modneg(x, y, n)
    ccall((:BIG_256_56_modneg, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, BIG_256_56), x, y, n)
end

function BIG_256_56_jacobi(x, y)
    ccall((:BIG_256_56_jacobi, libamcl_curve_BN254), Cint, (BIG_256_56, BIG_256_56), x, y)
end

function BIG_256_56_invmodp(x, y, n)
    ccall((:BIG_256_56_invmodp, libamcl_curve_BN254), Cvoid, (BIG_256_56, BIG_256_56, BIG_256_56), x, y, n)
end

function BIG_256_56_mod2m(x, m)
    ccall((:BIG_256_56_mod2m, libamcl_curve_BN254), Cvoid, (BIG_256_56, Cint), x, m)
end

function BIG_256_56_dmod2m(x, m)
    ccall((:BIG_256_56_dmod2m, libamcl_curve_BN254), Cvoid, (DBIG_256_56, Cint), x, m)
end

function muladd_256_56(x, y, c, r)
    ccall((:muladd_256_56, libamcl_curve_BN254), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_336_60.h
# Automatically generated using Clang.jl


function BIG_336_60_iszilch(x)
    ccall((:BIG_336_60_iszilch, libamcl_curve_HIFIVE), Cint, (BIG_336_60,), x)
end

function BIG_336_60_isunity(x)
    ccall((:BIG_336_60_isunity, libamcl_curve_HIFIVE), Cint, (BIG_336_60,), x)
end

function BIG_336_60_diszilch(x)
    ccall((:BIG_336_60_diszilch, libamcl_curve_HIFIVE), Cint, (DBIG_336_60,), x)
end

function BIG_336_60_output(x)
    ccall((:BIG_336_60_output, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60,), x)
end

function BIG_336_60_rawoutput(x)
    ccall((:BIG_336_60_rawoutput, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60,), x)
end

function BIG_336_60_cswap(x, y, s)
    ccall((:BIG_336_60_cswap, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, Cint), x, y, s)
end

function BIG_336_60_cmove(x, y, s)
    ccall((:BIG_336_60_cmove, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, Cint), x, y, s)
end

function BIG_336_60_dcmove(x, y, s)
    ccall((:BIG_336_60_dcmove, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, Cint), x, y, s)
end

function BIG_336_60_toBytes(a, x)
    ccall((:BIG_336_60_toBytes, libamcl_curve_HIFIVE), Cvoid, (Cstring, BIG_336_60), a, x)
end

function BIG_336_60_fromBytes(x, a)
    ccall((:BIG_336_60_fromBytes, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, Cstring), x, a)
end

function BIG_336_60_fromBytesLen(x, a, s)
    ccall((:BIG_336_60_fromBytesLen, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, Cstring, Cint), x, a, s)
end

function BIG_336_60_dfromBytesLen(x, a, s)
    ccall((:BIG_336_60_dfromBytesLen, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, Cstring, Cint), x, a, s)
end

function BIG_336_60_doutput(x)
    ccall((:BIG_336_60_doutput, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60,), x)
end

function BIG_336_60_drawoutput(x)
    ccall((:BIG_336_60_drawoutput, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60,), x)
end

function BIG_336_60_rcopy(x, y)
    ccall((:BIG_336_60_rcopy, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60), x, y)
end

function BIG_336_60_copy(x, y)
    ccall((:BIG_336_60_copy, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60), x, y)
end

function BIG_336_60_dcopy(x, y)
    ccall((:BIG_336_60_dcopy, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, DBIG_336_60), x, y)
end

function BIG_336_60_dsucopy(x, y)
    ccall((:BIG_336_60_dsucopy, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, BIG_336_60), x, y)
end

function BIG_336_60_dscopy(x, y)
    ccall((:BIG_336_60_dscopy, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, BIG_336_60), x, y)
end

function BIG_336_60_sdcopy(x, y)
    ccall((:BIG_336_60_sdcopy, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, DBIG_336_60), x, y)
end

function BIG_336_60_sducopy(x, y)
    ccall((:BIG_336_60_sducopy, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, DBIG_336_60), x, y)
end

function BIG_336_60_zero(x)
    ccall((:BIG_336_60_zero, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60,), x)
end

function BIG_336_60_dzero(x)
    ccall((:BIG_336_60_dzero, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60,), x)
end

function BIG_336_60_one(x)
    ccall((:BIG_336_60_one, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60,), x)
end

function BIG_336_60_invmod2m(x)
    ccall((:BIG_336_60_invmod2m, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60,), x)
end

function BIG_336_60_add(x, y, z)
    ccall((:BIG_336_60_add, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, BIG_336_60), x, y, z)
end

function BIG_336_60_or(x, y, z)
    ccall((:BIG_336_60_or, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, BIG_336_60), x, y, z)
end

function BIG_336_60_inc(x, i)
    ccall((:BIG_336_60_inc, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, Cint), x, i)
end

function BIG_336_60_sub(x, y, z)
    ccall((:BIG_336_60_sub, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, BIG_336_60), x, y, z)
end

function BIG_336_60_dec(x, i)
    ccall((:BIG_336_60_dec, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, Cint), x, i)
end

function BIG_336_60_dadd(x, y, z)
    ccall((:BIG_336_60_dadd, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, DBIG_336_60, DBIG_336_60), x, y, z)
end

function BIG_336_60_dsub(x, y, z)
    ccall((:BIG_336_60_dsub, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, DBIG_336_60, DBIG_336_60), x, y, z)
end

function BIG_336_60_imul(x, y, i)
    ccall((:BIG_336_60_imul, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, Cint), x, y, i)
end

function BIG_336_60_pmul(x, y, i)
    ccall((:BIG_336_60_pmul, libamcl_curve_HIFIVE), Int64, (BIG_336_60, BIG_336_60, Cint), x, y, i)
end

function BIG_336_60_div3(x)
    ccall((:BIG_336_60_div3, libamcl_curve_HIFIVE), Cint, (BIG_336_60,), x)
end

function BIG_336_60_pxmul(x, y, i)
    ccall((:BIG_336_60_pxmul, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, BIG_336_60, Cint), x, y, i)
end

function BIG_336_60_mul(x, y, z)
    ccall((:BIG_336_60_mul, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, BIG_336_60, BIG_336_60), x, y, z)
end

function BIG_336_60_smul(x, y, z)
    ccall((:BIG_336_60_smul, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, BIG_336_60), x, y, z)
end

function BIG_336_60_sqr(x, y)
    ccall((:BIG_336_60_sqr, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, BIG_336_60), x, y)
end

function BIG_336_60_monty(a, md, MC, d)
    ccall((:BIG_336_60_monty, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, Int64, DBIG_336_60), a, md, MC, d)
end

function BIG_336_60_shl(x, s)
    ccall((:BIG_336_60_shl, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, Cint), x, s)
end

function BIG_336_60_fshl(x, s)
    ccall((:BIG_336_60_fshl, libamcl_curve_HIFIVE), Cint, (BIG_336_60, Cint), x, s)
end

function BIG_336_60_dshl(x, s)
    ccall((:BIG_336_60_dshl, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, Cint), x, s)
end

function BIG_336_60_shr(x, s)
    ccall((:BIG_336_60_shr, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, Cint), x, s)
end

function BIG_336_60_ssn(r, a, m)
    ccall((:BIG_336_60_ssn, libamcl_curve_HIFIVE), Cint, (BIG_336_60, BIG_336_60, BIG_336_60), r, a, m)
end

function BIG_336_60_fshr(x, s)
    ccall((:BIG_336_60_fshr, libamcl_curve_HIFIVE), Cint, (BIG_336_60, Cint), x, s)
end

function BIG_336_60_dshr(x, s)
    ccall((:BIG_336_60_dshr, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, Cint), x, s)
end

function BIG_336_60_split(x, y, z, s)
    ccall((:BIG_336_60_split, libamcl_curve_HIFIVE), Int64, (BIG_336_60, BIG_336_60, DBIG_336_60, Cint), x, y, z, s)
end

function BIG_336_60_norm(x)
    ccall((:BIG_336_60_norm, libamcl_curve_HIFIVE), Int64, (BIG_336_60,), x)
end

function BIG_336_60_dnorm(x)
    ccall((:BIG_336_60_dnorm, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60,), x)
end

function BIG_336_60_comp(x, y)
    ccall((:BIG_336_60_comp, libamcl_curve_HIFIVE), Cint, (BIG_336_60, BIG_336_60), x, y)
end

function BIG_336_60_dcomp(x, y)
    ccall((:BIG_336_60_dcomp, libamcl_curve_HIFIVE), Cint, (DBIG_336_60, DBIG_336_60), x, y)
end

function BIG_336_60_nbits(x)
    ccall((:BIG_336_60_nbits, libamcl_curve_HIFIVE), Cint, (BIG_336_60,), x)
end

function BIG_336_60_dnbits(x)
    ccall((:BIG_336_60_dnbits, libamcl_curve_HIFIVE), Cint, (DBIG_336_60,), x)
end

function BIG_336_60_mod(x, n)
    ccall((:BIG_336_60_mod, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60), x, n)
end

function BIG_336_60_sdiv(x, n)
    ccall((:BIG_336_60_sdiv, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60), x, n)
end

function BIG_336_60_dmod(x, y, n)
    ccall((:BIG_336_60_dmod, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, DBIG_336_60, BIG_336_60), x, y, n)
end

function BIG_336_60_ddiv(x, y, n)
    ccall((:BIG_336_60_ddiv, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, DBIG_336_60, BIG_336_60), x, y, n)
end

function BIG_336_60_parity(x)
    ccall((:BIG_336_60_parity, libamcl_curve_HIFIVE), Cint, (BIG_336_60,), x)
end

function BIG_336_60_bit(x, i)
    ccall((:BIG_336_60_bit, libamcl_curve_HIFIVE), Cint, (BIG_336_60, Cint), x, i)
end

function BIG_336_60_lastbits(x, n)
    ccall((:BIG_336_60_lastbits, libamcl_curve_HIFIVE), Cint, (BIG_336_60, Cint), x, n)
end

function BIG_336_60_random(x, r)
    ccall((:BIG_336_60_random, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, Ptr{csprng}), x, r)
end

function BIG_336_60_randomnum(x, n, r)
    ccall((:BIG_336_60_randomnum, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, Ptr{csprng}), x, n, r)
end

function BIG_336_60_modmul(x, y, z, n)
    ccall((:BIG_336_60_modmul, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, BIG_336_60, BIG_336_60), x, y, z, n)
end

function BIG_336_60_moddiv(x, y, z, n)
    ccall((:BIG_336_60_moddiv, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, BIG_336_60, BIG_336_60), x, y, z, n)
end

function BIG_336_60_modsqr(x, y, n)
    ccall((:BIG_336_60_modsqr, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, BIG_336_60), x, y, n)
end

function BIG_336_60_modneg(x, y, n)
    ccall((:BIG_336_60_modneg, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, BIG_336_60), x, y, n)
end

function BIG_336_60_jacobi(x, y)
    ccall((:BIG_336_60_jacobi, libamcl_curve_HIFIVE), Cint, (BIG_336_60, BIG_336_60), x, y)
end

function BIG_336_60_invmodp(x, y, n)
    ccall((:BIG_336_60_invmodp, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, BIG_336_60, BIG_336_60), x, y, n)
end

function BIG_336_60_mod2m(x, m)
    ccall((:BIG_336_60_mod2m, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, Cint), x, m)
end

function BIG_336_60_dmod2m(x, m)
    ccall((:BIG_336_60_dmod2m, libamcl_curve_HIFIVE), Cvoid, (DBIG_336_60, Cint), x, m)
end

function muladd_336_60(x, y, c, r)
    ccall((:muladd_336_60, libamcl_curve_HIFIVE), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_384_56.h
# Automatically generated using Clang.jl


function BIG_384_56_iszilch(x)
    ccall((:BIG_384_56_iszilch, libamcl_curve_NIST384), Cint, (BIG_384_56,), x)
end

function BIG_384_56_isunity(x)
    ccall((:BIG_384_56_isunity, libamcl_curve_NIST384), Cint, (BIG_384_56,), x)
end

function BIG_384_56_diszilch(x)
    ccall((:BIG_384_56_diszilch, libamcl_curve_NIST384), Cint, (DBIG_384_56,), x)
end

function BIG_384_56_output(x)
    ccall((:BIG_384_56_output, libamcl_curve_NIST384), Cvoid, (BIG_384_56,), x)
end

function BIG_384_56_rawoutput(x)
    ccall((:BIG_384_56_rawoutput, libamcl_curve_NIST384), Cvoid, (BIG_384_56,), x)
end

function BIG_384_56_cswap(x, y, s)
    ccall((:BIG_384_56_cswap, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, Cint), x, y, s)
end

function BIG_384_56_cmove(x, y, s)
    ccall((:BIG_384_56_cmove, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, Cint), x, y, s)
end

function BIG_384_56_dcmove(x, y, s)
    ccall((:BIG_384_56_dcmove, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, Cint), x, y, s)
end

function BIG_384_56_toBytes(a, x)
    ccall((:BIG_384_56_toBytes, libamcl_curve_NIST384), Cvoid, (Cstring, BIG_384_56), a, x)
end

function BIG_384_56_fromBytes(x, a)
    ccall((:BIG_384_56_fromBytes, libamcl_curve_NIST384), Cvoid, (BIG_384_56, Cstring), x, a)
end

function BIG_384_56_fromBytesLen(x, a, s)
    ccall((:BIG_384_56_fromBytesLen, libamcl_curve_NIST384), Cvoid, (BIG_384_56, Cstring, Cint), x, a, s)
end

function BIG_384_56_dfromBytesLen(x, a, s)
    ccall((:BIG_384_56_dfromBytesLen, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, Cstring, Cint), x, a, s)
end

function BIG_384_56_doutput(x)
    ccall((:BIG_384_56_doutput, libamcl_curve_NIST384), Cvoid, (DBIG_384_56,), x)
end

function BIG_384_56_drawoutput(x)
    ccall((:BIG_384_56_drawoutput, libamcl_curve_NIST384), Cvoid, (DBIG_384_56,), x)
end

function BIG_384_56_rcopy(x, y)
    ccall((:BIG_384_56_rcopy, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56), x, y)
end

function BIG_384_56_copy(x, y)
    ccall((:BIG_384_56_copy, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56), x, y)
end

function BIG_384_56_dcopy(x, y)
    ccall((:BIG_384_56_dcopy, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, DBIG_384_56), x, y)
end

function BIG_384_56_dsucopy(x, y)
    ccall((:BIG_384_56_dsucopy, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, BIG_384_56), x, y)
end

function BIG_384_56_dscopy(x, y)
    ccall((:BIG_384_56_dscopy, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, BIG_384_56), x, y)
end

function BIG_384_56_sdcopy(x, y)
    ccall((:BIG_384_56_sdcopy, libamcl_curve_NIST384), Cvoid, (BIG_384_56, DBIG_384_56), x, y)
end

function BIG_384_56_sducopy(x, y)
    ccall((:BIG_384_56_sducopy, libamcl_curve_NIST384), Cvoid, (BIG_384_56, DBIG_384_56), x, y)
end

function BIG_384_56_zero(x)
    ccall((:BIG_384_56_zero, libamcl_curve_NIST384), Cvoid, (BIG_384_56,), x)
end

function BIG_384_56_dzero(x)
    ccall((:BIG_384_56_dzero, libamcl_curve_NIST384), Cvoid, (DBIG_384_56,), x)
end

function BIG_384_56_one(x)
    ccall((:BIG_384_56_one, libamcl_curve_NIST384), Cvoid, (BIG_384_56,), x)
end

function BIG_384_56_invmod2m(x)
    ccall((:BIG_384_56_invmod2m, libamcl_curve_NIST384), Cvoid, (BIG_384_56,), x)
end

function BIG_384_56_add(x, y, z)
    ccall((:BIG_384_56_add, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, BIG_384_56), x, y, z)
end

function BIG_384_56_or(x, y, z)
    ccall((:BIG_384_56_or, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, BIG_384_56), x, y, z)
end

function BIG_384_56_inc(x, i)
    ccall((:BIG_384_56_inc, libamcl_curve_NIST384), Cvoid, (BIG_384_56, Cint), x, i)
end

function BIG_384_56_sub(x, y, z)
    ccall((:BIG_384_56_sub, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, BIG_384_56), x, y, z)
end

function BIG_384_56_dec(x, i)
    ccall((:BIG_384_56_dec, libamcl_curve_NIST384), Cvoid, (BIG_384_56, Cint), x, i)
end

function BIG_384_56_dadd(x, y, z)
    ccall((:BIG_384_56_dadd, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, DBIG_384_56, DBIG_384_56), x, y, z)
end

function BIG_384_56_dsub(x, y, z)
    ccall((:BIG_384_56_dsub, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, DBIG_384_56, DBIG_384_56), x, y, z)
end

function BIG_384_56_imul(x, y, i)
    ccall((:BIG_384_56_imul, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, Cint), x, y, i)
end

function BIG_384_56_pmul(x, y, i)
    ccall((:BIG_384_56_pmul, libamcl_curve_NIST384), Int64, (BIG_384_56, BIG_384_56, Cint), x, y, i)
end

function BIG_384_56_div3(x)
    ccall((:BIG_384_56_div3, libamcl_curve_NIST384), Cint, (BIG_384_56,), x)
end

function BIG_384_56_pxmul(x, y, i)
    ccall((:BIG_384_56_pxmul, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, BIG_384_56, Cint), x, y, i)
end

function BIG_384_56_mul(x, y, z)
    ccall((:BIG_384_56_mul, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, BIG_384_56, BIG_384_56), x, y, z)
end

function BIG_384_56_smul(x, y, z)
    ccall((:BIG_384_56_smul, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, BIG_384_56), x, y, z)
end

function BIG_384_56_sqr(x, y)
    ccall((:BIG_384_56_sqr, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, BIG_384_56), x, y)
end

function BIG_384_56_monty(a, md, MC, d)
    ccall((:BIG_384_56_monty, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, Int64, DBIG_384_56), a, md, MC, d)
end

function BIG_384_56_shl(x, s)
    ccall((:BIG_384_56_shl, libamcl_curve_NIST384), Cvoid, (BIG_384_56, Cint), x, s)
end

function BIG_384_56_fshl(x, s)
    ccall((:BIG_384_56_fshl, libamcl_curve_NIST384), Cint, (BIG_384_56, Cint), x, s)
end

function BIG_384_56_dshl(x, s)
    ccall((:BIG_384_56_dshl, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, Cint), x, s)
end

function BIG_384_56_shr(x, s)
    ccall((:BIG_384_56_shr, libamcl_curve_NIST384), Cvoid, (BIG_384_56, Cint), x, s)
end

function BIG_384_56_ssn(r, a, m)
    ccall((:BIG_384_56_ssn, libamcl_curve_NIST384), Cint, (BIG_384_56, BIG_384_56, BIG_384_56), r, a, m)
end

function BIG_384_56_fshr(x, s)
    ccall((:BIG_384_56_fshr, libamcl_curve_NIST384), Cint, (BIG_384_56, Cint), x, s)
end

function BIG_384_56_dshr(x, s)
    ccall((:BIG_384_56_dshr, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, Cint), x, s)
end

function BIG_384_56_split(x, y, z, s)
    ccall((:BIG_384_56_split, libamcl_curve_NIST384), Int64, (BIG_384_56, BIG_384_56, DBIG_384_56, Cint), x, y, z, s)
end

function BIG_384_56_norm(x)
    ccall((:BIG_384_56_norm, libamcl_curve_NIST384), Int64, (BIG_384_56,), x)
end

function BIG_384_56_dnorm(x)
    ccall((:BIG_384_56_dnorm, libamcl_curve_NIST384), Cvoid, (DBIG_384_56,), x)
end

function BIG_384_56_comp(x, y)
    ccall((:BIG_384_56_comp, libamcl_curve_NIST384), Cint, (BIG_384_56, BIG_384_56), x, y)
end

function BIG_384_56_dcomp(x, y)
    ccall((:BIG_384_56_dcomp, libamcl_curve_NIST384), Cint, (DBIG_384_56, DBIG_384_56), x, y)
end

function BIG_384_56_nbits(x)
    ccall((:BIG_384_56_nbits, libamcl_curve_NIST384), Cint, (BIG_384_56,), x)
end

function BIG_384_56_dnbits(x)
    ccall((:BIG_384_56_dnbits, libamcl_curve_NIST384), Cint, (DBIG_384_56,), x)
end

function BIG_384_56_mod(x, n)
    ccall((:BIG_384_56_mod, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56), x, n)
end

function BIG_384_56_sdiv(x, n)
    ccall((:BIG_384_56_sdiv, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56), x, n)
end

function BIG_384_56_dmod(x, y, n)
    ccall((:BIG_384_56_dmod, libamcl_curve_NIST384), Cvoid, (BIG_384_56, DBIG_384_56, BIG_384_56), x, y, n)
end

function BIG_384_56_ddiv(x, y, n)
    ccall((:BIG_384_56_ddiv, libamcl_curve_NIST384), Cvoid, (BIG_384_56, DBIG_384_56, BIG_384_56), x, y, n)
end

function BIG_384_56_parity(x)
    ccall((:BIG_384_56_parity, libamcl_curve_NIST384), Cint, (BIG_384_56,), x)
end

function BIG_384_56_bit(x, i)
    ccall((:BIG_384_56_bit, libamcl_curve_NIST384), Cint, (BIG_384_56, Cint), x, i)
end

function BIG_384_56_lastbits(x, n)
    ccall((:BIG_384_56_lastbits, libamcl_curve_NIST384), Cint, (BIG_384_56, Cint), x, n)
end

function BIG_384_56_random(x, r)
    ccall((:BIG_384_56_random, libamcl_curve_NIST384), Cvoid, (BIG_384_56, Ptr{csprng}), x, r)
end

function BIG_384_56_randomnum(x, n, r)
    ccall((:BIG_384_56_randomnum, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, Ptr{csprng}), x, n, r)
end

function BIG_384_56_modmul(x, y, z, n)
    ccall((:BIG_384_56_modmul, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, BIG_384_56, BIG_384_56), x, y, z, n)
end

function BIG_384_56_moddiv(x, y, z, n)
    ccall((:BIG_384_56_moddiv, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, BIG_384_56, BIG_384_56), x, y, z, n)
end

function BIG_384_56_modsqr(x, y, n)
    ccall((:BIG_384_56_modsqr, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, BIG_384_56), x, y, n)
end

function BIG_384_56_modneg(x, y, n)
    ccall((:BIG_384_56_modneg, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, BIG_384_56), x, y, n)
end

function BIG_384_56_jacobi(x, y)
    ccall((:BIG_384_56_jacobi, libamcl_curve_NIST384), Cint, (BIG_384_56, BIG_384_56), x, y)
end

function BIG_384_56_invmodp(x, y, n)
    ccall((:BIG_384_56_invmodp, libamcl_curve_NIST384), Cvoid, (BIG_384_56, BIG_384_56, BIG_384_56), x, y, n)
end

function BIG_384_56_mod2m(x, m)
    ccall((:BIG_384_56_mod2m, libamcl_curve_NIST384), Cvoid, (BIG_384_56, Cint), x, m)
end

function BIG_384_56_dmod2m(x, m)
    ccall((:BIG_384_56_dmod2m, libamcl_curve_NIST384), Cvoid, (DBIG_384_56, Cint), x, m)
end

function muladd_384_56(x, y, c, r)
    ccall((:muladd_384_56, libamcl_curve_NIST384), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_384_58.h
# Automatically generated using Clang.jl


function BIG_384_58_iszilch(x)
    ccall((:BIG_384_58_iszilch, libamcl_curve_BLS381), Cint, (BIG_384_58,), x)
end

function BIG_384_58_isunity(x)
    ccall((:BIG_384_58_isunity, libamcl_curve_BLS381), Cint, (BIG_384_58,), x)
end

function BIG_384_58_diszilch(x)
    ccall((:BIG_384_58_diszilch, libamcl_curve_BLS381), Cint, (DBIG_384_58,), x)
end

function BIG_384_58_output(x)
    ccall((:BIG_384_58_output, libamcl_curve_BLS381), Cvoid, (BIG_384_58,), x)
end

function BIG_384_58_rawoutput(x)
    ccall((:BIG_384_58_rawoutput, libamcl_curve_BLS381), Cvoid, (BIG_384_58,), x)
end

function BIG_384_58_cswap(x, y, s)
    ccall((:BIG_384_58_cswap, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, Cint), x, y, s)
end

function BIG_384_58_cmove(x, y, s)
    ccall((:BIG_384_58_cmove, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, Cint), x, y, s)
end

function BIG_384_58_dcmove(x, y, s)
    ccall((:BIG_384_58_dcmove, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, Cint), x, y, s)
end

function BIG_384_58_toBytes(a, x)
    ccall((:BIG_384_58_toBytes, libamcl_curve_BLS381), Cvoid, (Cstring, BIG_384_58), a, x)
end

function BIG_384_58_fromBytes(x, a)
    ccall((:BIG_384_58_fromBytes, libamcl_curve_BLS381), Cvoid, (BIG_384_58, Cstring), x, a)
end

function BIG_384_58_fromBytesLen(x, a, s)
    ccall((:BIG_384_58_fromBytesLen, libamcl_curve_BLS381), Cvoid, (BIG_384_58, Cstring, Cint), x, a, s)
end

function BIG_384_58_dfromBytesLen(x, a, s)
    ccall((:BIG_384_58_dfromBytesLen, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, Cstring, Cint), x, a, s)
end

function BIG_384_58_doutput(x)
    ccall((:BIG_384_58_doutput, libamcl_curve_BLS381), Cvoid, (DBIG_384_58,), x)
end

function BIG_384_58_drawoutput(x)
    ccall((:BIG_384_58_drawoutput, libamcl_curve_BLS381), Cvoid, (DBIG_384_58,), x)
end

function BIG_384_58_rcopy(x, y)
    ccall((:BIG_384_58_rcopy, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58), x, y)
end

function BIG_384_58_copy(x, y)
    ccall((:BIG_384_58_copy, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58), x, y)
end

function BIG_384_58_dcopy(x, y)
    ccall((:BIG_384_58_dcopy, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, DBIG_384_58), x, y)
end

function BIG_384_58_dsucopy(x, y)
    ccall((:BIG_384_58_dsucopy, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, BIG_384_58), x, y)
end

function BIG_384_58_dscopy(x, y)
    ccall((:BIG_384_58_dscopy, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, BIG_384_58), x, y)
end

function BIG_384_58_sdcopy(x, y)
    ccall((:BIG_384_58_sdcopy, libamcl_curve_BLS381), Cvoid, (BIG_384_58, DBIG_384_58), x, y)
end

function BIG_384_58_sducopy(x, y)
    ccall((:BIG_384_58_sducopy, libamcl_curve_BLS381), Cvoid, (BIG_384_58, DBIG_384_58), x, y)
end

function BIG_384_58_zero(x)
    ccall((:BIG_384_58_zero, libamcl_curve_BLS381), Cvoid, (BIG_384_58,), x)
end

function BIG_384_58_dzero(x)
    ccall((:BIG_384_58_dzero, libamcl_curve_BLS381), Cvoid, (DBIG_384_58,), x)
end

function BIG_384_58_one(x)
    ccall((:BIG_384_58_one, libamcl_curve_BLS381), Cvoid, (BIG_384_58,), x)
end

function BIG_384_58_invmod2m(x)
    ccall((:BIG_384_58_invmod2m, libamcl_curve_BLS381), Cvoid, (BIG_384_58,), x)
end

function BIG_384_58_add(x, y, z)
    ccall((:BIG_384_58_add, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, BIG_384_58), x, y, z)
end

function BIG_384_58_or(x, y, z)
    ccall((:BIG_384_58_or, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, BIG_384_58), x, y, z)
end

function BIG_384_58_inc(x, i)
    ccall((:BIG_384_58_inc, libamcl_curve_BLS381), Cvoid, (BIG_384_58, Cint), x, i)
end

function BIG_384_58_sub(x, y, z)
    ccall((:BIG_384_58_sub, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, BIG_384_58), x, y, z)
end

function BIG_384_58_dec(x, i)
    ccall((:BIG_384_58_dec, libamcl_curve_BLS381), Cvoid, (BIG_384_58, Cint), x, i)
end

function BIG_384_58_dadd(x, y, z)
    ccall((:BIG_384_58_dadd, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, DBIG_384_58, DBIG_384_58), x, y, z)
end

function BIG_384_58_dsub(x, y, z)
    ccall((:BIG_384_58_dsub, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, DBIG_384_58, DBIG_384_58), x, y, z)
end

function BIG_384_58_imul(x, y, i)
    ccall((:BIG_384_58_imul, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, Cint), x, y, i)
end

function BIG_384_58_pmul(x, y, i)
    ccall((:BIG_384_58_pmul, libamcl_curve_BLS381), Int64, (BIG_384_58, BIG_384_58, Cint), x, y, i)
end

function BIG_384_58_div3(x)
    ccall((:BIG_384_58_div3, libamcl_curve_BLS381), Cint, (BIG_384_58,), x)
end

function BIG_384_58_pxmul(x, y, i)
    ccall((:BIG_384_58_pxmul, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, BIG_384_58, Cint), x, y, i)
end

function BIG_384_58_mul(x, y, z)
    ccall((:BIG_384_58_mul, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, BIG_384_58, BIG_384_58), x, y, z)
end

function BIG_384_58_smul(x, y, z)
    ccall((:BIG_384_58_smul, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, BIG_384_58), x, y, z)
end

function BIG_384_58_sqr(x, y)
    ccall((:BIG_384_58_sqr, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, BIG_384_58), x, y)
end

function BIG_384_58_monty(a, md, MC, d)
    ccall((:BIG_384_58_monty, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, Int64, DBIG_384_58), a, md, MC, d)
end

function BIG_384_58_shl(x, s)
    ccall((:BIG_384_58_shl, libamcl_curve_BLS381), Cvoid, (BIG_384_58, Cint), x, s)
end

function BIG_384_58_fshl(x, s)
    ccall((:BIG_384_58_fshl, libamcl_curve_BLS381), Cint, (BIG_384_58, Cint), x, s)
end

function BIG_384_58_dshl(x, s)
    ccall((:BIG_384_58_dshl, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, Cint), x, s)
end

function BIG_384_58_shr(x, s)
    ccall((:BIG_384_58_shr, libamcl_curve_BLS381), Cvoid, (BIG_384_58, Cint), x, s)
end

function BIG_384_58_ssn(r, a, m)
    ccall((:BIG_384_58_ssn, libamcl_curve_BLS381), Cint, (BIG_384_58, BIG_384_58, BIG_384_58), r, a, m)
end

function BIG_384_58_fshr(x, s)
    ccall((:BIG_384_58_fshr, libamcl_curve_BLS381), Cint, (BIG_384_58, Cint), x, s)
end

function BIG_384_58_dshr(x, s)
    ccall((:BIG_384_58_dshr, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, Cint), x, s)
end

function BIG_384_58_split(x, y, z, s)
    ccall((:BIG_384_58_split, libamcl_curve_BLS381), Int64, (BIG_384_58, BIG_384_58, DBIG_384_58, Cint), x, y, z, s)
end

function BIG_384_58_norm(x)
    ccall((:BIG_384_58_norm, libamcl_curve_BLS381), Int64, (BIG_384_58,), x)
end

function BIG_384_58_dnorm(x)
    ccall((:BIG_384_58_dnorm, libamcl_curve_BLS381), Cvoid, (DBIG_384_58,), x)
end

function BIG_384_58_comp(x, y)
    ccall((:BIG_384_58_comp, libamcl_curve_BLS381), Cint, (BIG_384_58, BIG_384_58), x, y)
end

function BIG_384_58_dcomp(x, y)
    ccall((:BIG_384_58_dcomp, libamcl_curve_BLS381), Cint, (DBIG_384_58, DBIG_384_58), x, y)
end

function BIG_384_58_nbits(x)
    ccall((:BIG_384_58_nbits, libamcl_curve_BLS381), Cint, (BIG_384_58,), x)
end

function BIG_384_58_dnbits(x)
    ccall((:BIG_384_58_dnbits, libamcl_curve_BLS381), Cint, (DBIG_384_58,), x)
end

function BIG_384_58_mod(x, n)
    ccall((:BIG_384_58_mod, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58), x, n)
end

function BIG_384_58_sdiv(x, n)
    ccall((:BIG_384_58_sdiv, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58), x, n)
end

function BIG_384_58_dmod(x, y, n)
    ccall((:BIG_384_58_dmod, libamcl_curve_BLS381), Cvoid, (BIG_384_58, DBIG_384_58, BIG_384_58), x, y, n)
end

function BIG_384_58_ddiv(x, y, n)
    ccall((:BIG_384_58_ddiv, libamcl_curve_BLS381), Cvoid, (BIG_384_58, DBIG_384_58, BIG_384_58), x, y, n)
end

function BIG_384_58_parity(x)
    ccall((:BIG_384_58_parity, libamcl_curve_BLS381), Cint, (BIG_384_58,), x)
end

function BIG_384_58_bit(x, i)
    ccall((:BIG_384_58_bit, libamcl_curve_BLS381), Cint, (BIG_384_58, Cint), x, i)
end

function BIG_384_58_lastbits(x, n)
    ccall((:BIG_384_58_lastbits, libamcl_curve_BLS381), Cint, (BIG_384_58, Cint), x, n)
end

function BIG_384_58_random(x, r)
    ccall((:BIG_384_58_random, libamcl_curve_BLS381), Cvoid, (BIG_384_58, Ptr{csprng}), x, r)
end

function BIG_384_58_randomnum(x, n, r)
    ccall((:BIG_384_58_randomnum, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, Ptr{csprng}), x, n, r)
end

function BIG_384_58_modmul(x, y, z, n)
    ccall((:BIG_384_58_modmul, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, BIG_384_58, BIG_384_58), x, y, z, n)
end

function BIG_384_58_moddiv(x, y, z, n)
    ccall((:BIG_384_58_moddiv, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, BIG_384_58, BIG_384_58), x, y, z, n)
end

function BIG_384_58_modsqr(x, y, n)
    ccall((:BIG_384_58_modsqr, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, BIG_384_58), x, y, n)
end

function BIG_384_58_modneg(x, y, n)
    ccall((:BIG_384_58_modneg, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, BIG_384_58), x, y, n)
end

function BIG_384_58_jacobi(x, y)
    ccall((:BIG_384_58_jacobi, libamcl_curve_BLS381), Cint, (BIG_384_58, BIG_384_58), x, y)
end

function BIG_384_58_invmodp(x, y, n)
    ccall((:BIG_384_58_invmodp, libamcl_curve_BLS381), Cvoid, (BIG_384_58, BIG_384_58, BIG_384_58), x, y, n)
end

function BIG_384_58_mod2m(x, m)
    ccall((:BIG_384_58_mod2m, libamcl_curve_BLS381), Cvoid, (BIG_384_58, Cint), x, m)
end

function BIG_384_58_dmod2m(x, m)
    ccall((:BIG_384_58_dmod2m, libamcl_curve_BLS381), Cvoid, (DBIG_384_58, Cint), x, m)
end

function muladd_384_58(x, y, c, r)
    ccall((:muladd_384_58, libamcl_curve_BLS381), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_416_60.h
# Automatically generated using Clang.jl


function BIG_416_60_iszilch(x)
    ccall((:BIG_416_60_iszilch, libamcl_curve_C41417), Cint, (BIG_416_60,), x)
end

function BIG_416_60_isunity(x)
    ccall((:BIG_416_60_isunity, libamcl_curve_C41417), Cint, (BIG_416_60,), x)
end

function BIG_416_60_diszilch(x)
    ccall((:BIG_416_60_diszilch, libamcl_curve_C41417), Cint, (DBIG_416_60,), x)
end

function BIG_416_60_output(x)
    ccall((:BIG_416_60_output, libamcl_curve_C41417), Cvoid, (BIG_416_60,), x)
end

function BIG_416_60_rawoutput(x)
    ccall((:BIG_416_60_rawoutput, libamcl_curve_C41417), Cvoid, (BIG_416_60,), x)
end

function BIG_416_60_cswap(x, y, s)
    ccall((:BIG_416_60_cswap, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, Cint), x, y, s)
end

function BIG_416_60_cmove(x, y, s)
    ccall((:BIG_416_60_cmove, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, Cint), x, y, s)
end

function BIG_416_60_dcmove(x, y, s)
    ccall((:BIG_416_60_dcmove, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, Cint), x, y, s)
end

function BIG_416_60_toBytes(a, x)
    ccall((:BIG_416_60_toBytes, libamcl_curve_C41417), Cvoid, (Cstring, BIG_416_60), a, x)
end

function BIG_416_60_fromBytes(x, a)
    ccall((:BIG_416_60_fromBytes, libamcl_curve_C41417), Cvoid, (BIG_416_60, Cstring), x, a)
end

function BIG_416_60_fromBytesLen(x, a, s)
    ccall((:BIG_416_60_fromBytesLen, libamcl_curve_C41417), Cvoid, (BIG_416_60, Cstring, Cint), x, a, s)
end

function BIG_416_60_dfromBytesLen(x, a, s)
    ccall((:BIG_416_60_dfromBytesLen, libamcl_curve_C41417), Cvoid, (DBIG_416_60, Cstring, Cint), x, a, s)
end

function BIG_416_60_doutput(x)
    ccall((:BIG_416_60_doutput, libamcl_curve_C41417), Cvoid, (DBIG_416_60,), x)
end

function BIG_416_60_drawoutput(x)
    ccall((:BIG_416_60_drawoutput, libamcl_curve_C41417), Cvoid, (DBIG_416_60,), x)
end

function BIG_416_60_rcopy(x, y)
    ccall((:BIG_416_60_rcopy, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60), x, y)
end

function BIG_416_60_copy(x, y)
    ccall((:BIG_416_60_copy, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60), x, y)
end

function BIG_416_60_dcopy(x, y)
    ccall((:BIG_416_60_dcopy, libamcl_curve_C41417), Cvoid, (DBIG_416_60, DBIG_416_60), x, y)
end

function BIG_416_60_dsucopy(x, y)
    ccall((:BIG_416_60_dsucopy, libamcl_curve_C41417), Cvoid, (DBIG_416_60, BIG_416_60), x, y)
end

function BIG_416_60_dscopy(x, y)
    ccall((:BIG_416_60_dscopy, libamcl_curve_C41417), Cvoid, (DBIG_416_60, BIG_416_60), x, y)
end

function BIG_416_60_sdcopy(x, y)
    ccall((:BIG_416_60_sdcopy, libamcl_curve_C41417), Cvoid, (BIG_416_60, DBIG_416_60), x, y)
end

function BIG_416_60_sducopy(x, y)
    ccall((:BIG_416_60_sducopy, libamcl_curve_C41417), Cvoid, (BIG_416_60, DBIG_416_60), x, y)
end

function BIG_416_60_zero(x)
    ccall((:BIG_416_60_zero, libamcl_curve_C41417), Cvoid, (BIG_416_60,), x)
end

function BIG_416_60_dzero(x)
    ccall((:BIG_416_60_dzero, libamcl_curve_C41417), Cvoid, (DBIG_416_60,), x)
end

function BIG_416_60_one(x)
    ccall((:BIG_416_60_one, libamcl_curve_C41417), Cvoid, (BIG_416_60,), x)
end

function BIG_416_60_invmod2m(x)
    ccall((:BIG_416_60_invmod2m, libamcl_curve_C41417), Cvoid, (BIG_416_60,), x)
end

function BIG_416_60_add(x, y, z)
    ccall((:BIG_416_60_add, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, BIG_416_60), x, y, z)
end

function BIG_416_60_or(x, y, z)
    ccall((:BIG_416_60_or, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, BIG_416_60), x, y, z)
end

function BIG_416_60_inc(x, i)
    ccall((:BIG_416_60_inc, libamcl_curve_C41417), Cvoid, (BIG_416_60, Cint), x, i)
end

function BIG_416_60_sub(x, y, z)
    ccall((:BIG_416_60_sub, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, BIG_416_60), x, y, z)
end

function BIG_416_60_dec(x, i)
    ccall((:BIG_416_60_dec, libamcl_curve_C41417), Cvoid, (BIG_416_60, Cint), x, i)
end

function BIG_416_60_dadd(x, y, z)
    ccall((:BIG_416_60_dadd, libamcl_curve_C41417), Cvoid, (DBIG_416_60, DBIG_416_60, DBIG_416_60), x, y, z)
end

function BIG_416_60_dsub(x, y, z)
    ccall((:BIG_416_60_dsub, libamcl_curve_C41417), Cvoid, (DBIG_416_60, DBIG_416_60, DBIG_416_60), x, y, z)
end

function BIG_416_60_imul(x, y, i)
    ccall((:BIG_416_60_imul, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, Cint), x, y, i)
end

function BIG_416_60_pmul(x, y, i)
    ccall((:BIG_416_60_pmul, libamcl_curve_C41417), Int64, (BIG_416_60, BIG_416_60, Cint), x, y, i)
end

function BIG_416_60_div3(x)
    ccall((:BIG_416_60_div3, libamcl_curve_C41417), Cint, (BIG_416_60,), x)
end

function BIG_416_60_pxmul(x, y, i)
    ccall((:BIG_416_60_pxmul, libamcl_curve_C41417), Cvoid, (DBIG_416_60, BIG_416_60, Cint), x, y, i)
end

function BIG_416_60_mul(x, y, z)
    ccall((:BIG_416_60_mul, libamcl_curve_C41417), Cvoid, (DBIG_416_60, BIG_416_60, BIG_416_60), x, y, z)
end

function BIG_416_60_smul(x, y, z)
    ccall((:BIG_416_60_smul, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, BIG_416_60), x, y, z)
end

function BIG_416_60_sqr(x, y)
    ccall((:BIG_416_60_sqr, libamcl_curve_C41417), Cvoid, (DBIG_416_60, BIG_416_60), x, y)
end

function BIG_416_60_monty(a, md, MC, d)
    ccall((:BIG_416_60_monty, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, Int64, DBIG_416_60), a, md, MC, d)
end

function BIG_416_60_shl(x, s)
    ccall((:BIG_416_60_shl, libamcl_curve_C41417), Cvoid, (BIG_416_60, Cint), x, s)
end

function BIG_416_60_fshl(x, s)
    ccall((:BIG_416_60_fshl, libamcl_curve_C41417), Cint, (BIG_416_60, Cint), x, s)
end

function BIG_416_60_dshl(x, s)
    ccall((:BIG_416_60_dshl, libamcl_curve_C41417), Cvoid, (DBIG_416_60, Cint), x, s)
end

function BIG_416_60_shr(x, s)
    ccall((:BIG_416_60_shr, libamcl_curve_C41417), Cvoid, (BIG_416_60, Cint), x, s)
end

function BIG_416_60_ssn(r, a, m)
    ccall((:BIG_416_60_ssn, libamcl_curve_C41417), Cint, (BIG_416_60, BIG_416_60, BIG_416_60), r, a, m)
end

function BIG_416_60_fshr(x, s)
    ccall((:BIG_416_60_fshr, libamcl_curve_C41417), Cint, (BIG_416_60, Cint), x, s)
end

function BIG_416_60_dshr(x, s)
    ccall((:BIG_416_60_dshr, libamcl_curve_C41417), Cvoid, (DBIG_416_60, Cint), x, s)
end

function BIG_416_60_split(x, y, z, s)
    ccall((:BIG_416_60_split, libamcl_curve_C41417), Int64, (BIG_416_60, BIG_416_60, DBIG_416_60, Cint), x, y, z, s)
end

function BIG_416_60_norm(x)
    ccall((:BIG_416_60_norm, libamcl_curve_C41417), Int64, (BIG_416_60,), x)
end

function BIG_416_60_dnorm(x)
    ccall((:BIG_416_60_dnorm, libamcl_curve_C41417), Cvoid, (DBIG_416_60,), x)
end

function BIG_416_60_comp(x, y)
    ccall((:BIG_416_60_comp, libamcl_curve_C41417), Cint, (BIG_416_60, BIG_416_60), x, y)
end

function BIG_416_60_dcomp(x, y)
    ccall((:BIG_416_60_dcomp, libamcl_curve_C41417), Cint, (DBIG_416_60, DBIG_416_60), x, y)
end

function BIG_416_60_nbits(x)
    ccall((:BIG_416_60_nbits, libamcl_curve_C41417), Cint, (BIG_416_60,), x)
end

function BIG_416_60_dnbits(x)
    ccall((:BIG_416_60_dnbits, libamcl_curve_C41417), Cint, (DBIG_416_60,), x)
end

function BIG_416_60_mod(x, n)
    ccall((:BIG_416_60_mod, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60), x, n)
end

function BIG_416_60_sdiv(x, n)
    ccall((:BIG_416_60_sdiv, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60), x, n)
end

function BIG_416_60_dmod(x, y, n)
    ccall((:BIG_416_60_dmod, libamcl_curve_C41417), Cvoid, (BIG_416_60, DBIG_416_60, BIG_416_60), x, y, n)
end

function BIG_416_60_ddiv(x, y, n)
    ccall((:BIG_416_60_ddiv, libamcl_curve_C41417), Cvoid, (BIG_416_60, DBIG_416_60, BIG_416_60), x, y, n)
end

function BIG_416_60_parity(x)
    ccall((:BIG_416_60_parity, libamcl_curve_C41417), Cint, (BIG_416_60,), x)
end

function BIG_416_60_bit(x, i)
    ccall((:BIG_416_60_bit, libamcl_curve_C41417), Cint, (BIG_416_60, Cint), x, i)
end

function BIG_416_60_lastbits(x, n)
    ccall((:BIG_416_60_lastbits, libamcl_curve_C41417), Cint, (BIG_416_60, Cint), x, n)
end

function BIG_416_60_random(x, r)
    ccall((:BIG_416_60_random, libamcl_curve_C41417), Cvoid, (BIG_416_60, Ptr{csprng}), x, r)
end

function BIG_416_60_randomnum(x, n, r)
    ccall((:BIG_416_60_randomnum, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, Ptr{csprng}), x, n, r)
end

function BIG_416_60_modmul(x, y, z, n)
    ccall((:BIG_416_60_modmul, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, BIG_416_60, BIG_416_60), x, y, z, n)
end

function BIG_416_60_moddiv(x, y, z, n)
    ccall((:BIG_416_60_moddiv, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, BIG_416_60, BIG_416_60), x, y, z, n)
end

function BIG_416_60_modsqr(x, y, n)
    ccall((:BIG_416_60_modsqr, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, BIG_416_60), x, y, n)
end

function BIG_416_60_modneg(x, y, n)
    ccall((:BIG_416_60_modneg, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, BIG_416_60), x, y, n)
end

function BIG_416_60_jacobi(x, y)
    ccall((:BIG_416_60_jacobi, libamcl_curve_C41417), Cint, (BIG_416_60, BIG_416_60), x, y)
end

function BIG_416_60_invmodp(x, y, n)
    ccall((:BIG_416_60_invmodp, libamcl_curve_C41417), Cvoid, (BIG_416_60, BIG_416_60, BIG_416_60), x, y, n)
end

function BIG_416_60_mod2m(x, m)
    ccall((:BIG_416_60_mod2m, libamcl_curve_C41417), Cvoid, (BIG_416_60, Cint), x, m)
end

function BIG_416_60_dmod2m(x, m)
    ccall((:BIG_416_60_dmod2m, libamcl_curve_C41417), Cvoid, (DBIG_416_60, Cint), x, m)
end

function muladd_416_60(x, y, c, r)
    ccall((:muladd_416_60, libamcl_curve_C41417), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_448_58.h
# Automatically generated using Clang.jl


function BIG_448_58_iszilch(x)
    ccall((:BIG_448_58_iszilch, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58,), x)
end

function BIG_448_58_isunity(x)
    ccall((:BIG_448_58_isunity, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58,), x)
end

function BIG_448_58_diszilch(x)
    ccall((:BIG_448_58_diszilch, libamcl_curve_GOLDILOCKS), Cint, (DBIG_448_58,), x)
end

function BIG_448_58_output(x)
    ccall((:BIG_448_58_output, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58,), x)
end

function BIG_448_58_rawoutput(x)
    ccall((:BIG_448_58_rawoutput, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58,), x)
end

function BIG_448_58_cswap(x, y, s)
    ccall((:BIG_448_58_cswap, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, Cint), x, y, s)
end

function BIG_448_58_cmove(x, y, s)
    ccall((:BIG_448_58_cmove, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, Cint), x, y, s)
end

function BIG_448_58_dcmove(x, y, s)
    ccall((:BIG_448_58_dcmove, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, Cint), x, y, s)
end

function BIG_448_58_toBytes(a, x)
    ccall((:BIG_448_58_toBytes, libamcl_curve_GOLDILOCKS), Cvoid, (Cstring, BIG_448_58), a, x)
end

function BIG_448_58_fromBytes(x, a)
    ccall((:BIG_448_58_fromBytes, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, Cstring), x, a)
end

function BIG_448_58_fromBytesLen(x, a, s)
    ccall((:BIG_448_58_fromBytesLen, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, Cstring, Cint), x, a, s)
end

function BIG_448_58_dfromBytesLen(x, a, s)
    ccall((:BIG_448_58_dfromBytesLen, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, Cstring, Cint), x, a, s)
end

function BIG_448_58_doutput(x)
    ccall((:BIG_448_58_doutput, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58,), x)
end

function BIG_448_58_drawoutput(x)
    ccall((:BIG_448_58_drawoutput, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58,), x)
end

function BIG_448_58_rcopy(x, y)
    ccall((:BIG_448_58_rcopy, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58), x, y)
end

function BIG_448_58_copy(x, y)
    ccall((:BIG_448_58_copy, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58), x, y)
end

function BIG_448_58_dcopy(x, y)
    ccall((:BIG_448_58_dcopy, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, DBIG_448_58), x, y)
end

function BIG_448_58_dsucopy(x, y)
    ccall((:BIG_448_58_dsucopy, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, BIG_448_58), x, y)
end

function BIG_448_58_dscopy(x, y)
    ccall((:BIG_448_58_dscopy, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, BIG_448_58), x, y)
end

function BIG_448_58_sdcopy(x, y)
    ccall((:BIG_448_58_sdcopy, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, DBIG_448_58), x, y)
end

function BIG_448_58_sducopy(x, y)
    ccall((:BIG_448_58_sducopy, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, DBIG_448_58), x, y)
end

function BIG_448_58_zero(x)
    ccall((:BIG_448_58_zero, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58,), x)
end

function BIG_448_58_dzero(x)
    ccall((:BIG_448_58_dzero, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58,), x)
end

function BIG_448_58_one(x)
    ccall((:BIG_448_58_one, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58,), x)
end

function BIG_448_58_invmod2m(x)
    ccall((:BIG_448_58_invmod2m, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58,), x)
end

function BIG_448_58_add(x, y, z)
    ccall((:BIG_448_58_add, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, BIG_448_58), x, y, z)
end

function BIG_448_58_or(x, y, z)
    ccall((:BIG_448_58_or, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, BIG_448_58), x, y, z)
end

function BIG_448_58_inc(x, i)
    ccall((:BIG_448_58_inc, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, Cint), x, i)
end

function BIG_448_58_sub(x, y, z)
    ccall((:BIG_448_58_sub, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, BIG_448_58), x, y, z)
end

function BIG_448_58_dec(x, i)
    ccall((:BIG_448_58_dec, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, Cint), x, i)
end

function BIG_448_58_dadd(x, y, z)
    ccall((:BIG_448_58_dadd, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, DBIG_448_58, DBIG_448_58), x, y, z)
end

function BIG_448_58_dsub(x, y, z)
    ccall((:BIG_448_58_dsub, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, DBIG_448_58, DBIG_448_58), x, y, z)
end

function BIG_448_58_imul(x, y, i)
    ccall((:BIG_448_58_imul, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, Cint), x, y, i)
end

function BIG_448_58_pmul(x, y, i)
    ccall((:BIG_448_58_pmul, libamcl_curve_GOLDILOCKS), Int64, (BIG_448_58, BIG_448_58, Cint), x, y, i)
end

function BIG_448_58_div3(x)
    ccall((:BIG_448_58_div3, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58,), x)
end

function BIG_448_58_pxmul(x, y, i)
    ccall((:BIG_448_58_pxmul, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, BIG_448_58, Cint), x, y, i)
end

function BIG_448_58_mul(x, y, z)
    ccall((:BIG_448_58_mul, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, BIG_448_58, BIG_448_58), x, y, z)
end

function BIG_448_58_smul(x, y, z)
    ccall((:BIG_448_58_smul, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, BIG_448_58), x, y, z)
end

function BIG_448_58_sqr(x, y)
    ccall((:BIG_448_58_sqr, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, BIG_448_58), x, y)
end

function BIG_448_58_monty(a, md, MC, d)
    ccall((:BIG_448_58_monty, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, Int64, DBIG_448_58), a, md, MC, d)
end

function BIG_448_58_shl(x, s)
    ccall((:BIG_448_58_shl, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, Cint), x, s)
end

function BIG_448_58_fshl(x, s)
    ccall((:BIG_448_58_fshl, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58, Cint), x, s)
end

function BIG_448_58_dshl(x, s)
    ccall((:BIG_448_58_dshl, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, Cint), x, s)
end

function BIG_448_58_shr(x, s)
    ccall((:BIG_448_58_shr, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, Cint), x, s)
end

function BIG_448_58_ssn(r, a, m)
    ccall((:BIG_448_58_ssn, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58, BIG_448_58, BIG_448_58), r, a, m)
end

function BIG_448_58_fshr(x, s)
    ccall((:BIG_448_58_fshr, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58, Cint), x, s)
end

function BIG_448_58_dshr(x, s)
    ccall((:BIG_448_58_dshr, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, Cint), x, s)
end

function BIG_448_58_split(x, y, z, s)
    ccall((:BIG_448_58_split, libamcl_curve_GOLDILOCKS), Int64, (BIG_448_58, BIG_448_58, DBIG_448_58, Cint), x, y, z, s)
end

function BIG_448_58_norm(x)
    ccall((:BIG_448_58_norm, libamcl_curve_GOLDILOCKS), Int64, (BIG_448_58,), x)
end

function BIG_448_58_dnorm(x)
    ccall((:BIG_448_58_dnorm, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58,), x)
end

function BIG_448_58_comp(x, y)
    ccall((:BIG_448_58_comp, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58, BIG_448_58), x, y)
end

function BIG_448_58_dcomp(x, y)
    ccall((:BIG_448_58_dcomp, libamcl_curve_GOLDILOCKS), Cint, (DBIG_448_58, DBIG_448_58), x, y)
end

function BIG_448_58_nbits(x)
    ccall((:BIG_448_58_nbits, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58,), x)
end

function BIG_448_58_dnbits(x)
    ccall((:BIG_448_58_dnbits, libamcl_curve_GOLDILOCKS), Cint, (DBIG_448_58,), x)
end

function BIG_448_58_mod(x, n)
    ccall((:BIG_448_58_mod, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58), x, n)
end

function BIG_448_58_sdiv(x, n)
    ccall((:BIG_448_58_sdiv, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58), x, n)
end

function BIG_448_58_dmod(x, y, n)
    ccall((:BIG_448_58_dmod, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, DBIG_448_58, BIG_448_58), x, y, n)
end

function BIG_448_58_ddiv(x, y, n)
    ccall((:BIG_448_58_ddiv, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, DBIG_448_58, BIG_448_58), x, y, n)
end

function BIG_448_58_parity(x)
    ccall((:BIG_448_58_parity, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58,), x)
end

function BIG_448_58_bit(x, i)
    ccall((:BIG_448_58_bit, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58, Cint), x, i)
end

function BIG_448_58_lastbits(x, n)
    ccall((:BIG_448_58_lastbits, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58, Cint), x, n)
end

function BIG_448_58_random(x, r)
    ccall((:BIG_448_58_random, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, Ptr{csprng}), x, r)
end

function BIG_448_58_randomnum(x, n, r)
    ccall((:BIG_448_58_randomnum, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, Ptr{csprng}), x, n, r)
end

function BIG_448_58_modmul(x, y, z, n)
    ccall((:BIG_448_58_modmul, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, BIG_448_58, BIG_448_58), x, y, z, n)
end

function BIG_448_58_moddiv(x, y, z, n)
    ccall((:BIG_448_58_moddiv, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, BIG_448_58, BIG_448_58), x, y, z, n)
end

function BIG_448_58_modsqr(x, y, n)
    ccall((:BIG_448_58_modsqr, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, BIG_448_58), x, y, n)
end

function BIG_448_58_modneg(x, y, n)
    ccall((:BIG_448_58_modneg, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, BIG_448_58), x, y, n)
end

function BIG_448_58_jacobi(x, y)
    ccall((:BIG_448_58_jacobi, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58, BIG_448_58), x, y)
end

function BIG_448_58_invmodp(x, y, n)
    ccall((:BIG_448_58_invmodp, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, BIG_448_58, BIG_448_58), x, y, n)
end

function BIG_448_58_mod2m(x, m)
    ccall((:BIG_448_58_mod2m, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, Cint), x, m)
end

function BIG_448_58_dmod2m(x, m)
    ccall((:BIG_448_58_dmod2m, libamcl_curve_GOLDILOCKS), Cvoid, (DBIG_448_58, Cint), x, m)
end

function muladd_448_58(x, y, c, r)
    ccall((:muladd_448_58, libamcl_curve_GOLDILOCKS), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_464_60.h
# Automatically generated using Clang.jl


function BIG_464_60_iszilch(x)
    ccall((:BIG_464_60_iszilch, libamcl_curve_BLS461), Cint, (BIG_464_60,), x)
end

function BIG_464_60_isunity(x)
    ccall((:BIG_464_60_isunity, libamcl_curve_BLS461), Cint, (BIG_464_60,), x)
end

function BIG_464_60_diszilch(x)
    ccall((:BIG_464_60_diszilch, libamcl_curve_BLS461), Cint, (DBIG_464_60,), x)
end

function BIG_464_60_output(x)
    ccall((:BIG_464_60_output, libamcl_curve_BLS461), Cvoid, (BIG_464_60,), x)
end

function BIG_464_60_rawoutput(x)
    ccall((:BIG_464_60_rawoutput, libamcl_curve_BLS461), Cvoid, (BIG_464_60,), x)
end

function BIG_464_60_cswap(x, y, s)
    ccall((:BIG_464_60_cswap, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, Cint), x, y, s)
end

function BIG_464_60_cmove(x, y, s)
    ccall((:BIG_464_60_cmove, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, Cint), x, y, s)
end

function BIG_464_60_dcmove(x, y, s)
    ccall((:BIG_464_60_dcmove, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, Cint), x, y, s)
end

function BIG_464_60_toBytes(a, x)
    ccall((:BIG_464_60_toBytes, libamcl_curve_BLS461), Cvoid, (Cstring, BIG_464_60), a, x)
end

function BIG_464_60_fromBytes(x, a)
    ccall((:BIG_464_60_fromBytes, libamcl_curve_BLS461), Cvoid, (BIG_464_60, Cstring), x, a)
end

function BIG_464_60_fromBytesLen(x, a, s)
    ccall((:BIG_464_60_fromBytesLen, libamcl_curve_BLS461), Cvoid, (BIG_464_60, Cstring, Cint), x, a, s)
end

function BIG_464_60_dfromBytesLen(x, a, s)
    ccall((:BIG_464_60_dfromBytesLen, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, Cstring, Cint), x, a, s)
end

function BIG_464_60_doutput(x)
    ccall((:BIG_464_60_doutput, libamcl_curve_BLS461), Cvoid, (DBIG_464_60,), x)
end

function BIG_464_60_drawoutput(x)
    ccall((:BIG_464_60_drawoutput, libamcl_curve_BLS461), Cvoid, (DBIG_464_60,), x)
end

function BIG_464_60_rcopy(x, y)
    ccall((:BIG_464_60_rcopy, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60), x, y)
end

function BIG_464_60_copy(x, y)
    ccall((:BIG_464_60_copy, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60), x, y)
end

function BIG_464_60_dcopy(x, y)
    ccall((:BIG_464_60_dcopy, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, DBIG_464_60), x, y)
end

function BIG_464_60_dsucopy(x, y)
    ccall((:BIG_464_60_dsucopy, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, BIG_464_60), x, y)
end

function BIG_464_60_dscopy(x, y)
    ccall((:BIG_464_60_dscopy, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, BIG_464_60), x, y)
end

function BIG_464_60_sdcopy(x, y)
    ccall((:BIG_464_60_sdcopy, libamcl_curve_BLS461), Cvoid, (BIG_464_60, DBIG_464_60), x, y)
end

function BIG_464_60_sducopy(x, y)
    ccall((:BIG_464_60_sducopy, libamcl_curve_BLS461), Cvoid, (BIG_464_60, DBIG_464_60), x, y)
end

function BIG_464_60_zero(x)
    ccall((:BIG_464_60_zero, libamcl_curve_BLS461), Cvoid, (BIG_464_60,), x)
end

function BIG_464_60_dzero(x)
    ccall((:BIG_464_60_dzero, libamcl_curve_BLS461), Cvoid, (DBIG_464_60,), x)
end

function BIG_464_60_one(x)
    ccall((:BIG_464_60_one, libamcl_curve_BLS461), Cvoid, (BIG_464_60,), x)
end

function BIG_464_60_invmod2m(x)
    ccall((:BIG_464_60_invmod2m, libamcl_curve_BLS461), Cvoid, (BIG_464_60,), x)
end

function BIG_464_60_add(x, y, z)
    ccall((:BIG_464_60_add, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, BIG_464_60), x, y, z)
end

function BIG_464_60_or(x, y, z)
    ccall((:BIG_464_60_or, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, BIG_464_60), x, y, z)
end

function BIG_464_60_inc(x, i)
    ccall((:BIG_464_60_inc, libamcl_curve_BLS461), Cvoid, (BIG_464_60, Cint), x, i)
end

function BIG_464_60_sub(x, y, z)
    ccall((:BIG_464_60_sub, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, BIG_464_60), x, y, z)
end

function BIG_464_60_dec(x, i)
    ccall((:BIG_464_60_dec, libamcl_curve_BLS461), Cvoid, (BIG_464_60, Cint), x, i)
end

function BIG_464_60_dadd(x, y, z)
    ccall((:BIG_464_60_dadd, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, DBIG_464_60, DBIG_464_60), x, y, z)
end

function BIG_464_60_dsub(x, y, z)
    ccall((:BIG_464_60_dsub, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, DBIG_464_60, DBIG_464_60), x, y, z)
end

function BIG_464_60_imul(x, y, i)
    ccall((:BIG_464_60_imul, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, Cint), x, y, i)
end

function BIG_464_60_pmul(x, y, i)
    ccall((:BIG_464_60_pmul, libamcl_curve_BLS461), Int64, (BIG_464_60, BIG_464_60, Cint), x, y, i)
end

function BIG_464_60_div3(x)
    ccall((:BIG_464_60_div3, libamcl_curve_BLS461), Cint, (BIG_464_60,), x)
end

function BIG_464_60_pxmul(x, y, i)
    ccall((:BIG_464_60_pxmul, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, BIG_464_60, Cint), x, y, i)
end

function BIG_464_60_mul(x, y, z)
    ccall((:BIG_464_60_mul, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, BIG_464_60, BIG_464_60), x, y, z)
end

function BIG_464_60_smul(x, y, z)
    ccall((:BIG_464_60_smul, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, BIG_464_60), x, y, z)
end

function BIG_464_60_sqr(x, y)
    ccall((:BIG_464_60_sqr, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, BIG_464_60), x, y)
end

function BIG_464_60_monty(a, md, MC, d)
    ccall((:BIG_464_60_monty, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, Int64, DBIG_464_60), a, md, MC, d)
end

function BIG_464_60_shl(x, s)
    ccall((:BIG_464_60_shl, libamcl_curve_BLS461), Cvoid, (BIG_464_60, Cint), x, s)
end

function BIG_464_60_fshl(x, s)
    ccall((:BIG_464_60_fshl, libamcl_curve_BLS461), Cint, (BIG_464_60, Cint), x, s)
end

function BIG_464_60_dshl(x, s)
    ccall((:BIG_464_60_dshl, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, Cint), x, s)
end

function BIG_464_60_shr(x, s)
    ccall((:BIG_464_60_shr, libamcl_curve_BLS461), Cvoid, (BIG_464_60, Cint), x, s)
end

function BIG_464_60_ssn(r, a, m)
    ccall((:BIG_464_60_ssn, libamcl_curve_BLS461), Cint, (BIG_464_60, BIG_464_60, BIG_464_60), r, a, m)
end

function BIG_464_60_fshr(x, s)
    ccall((:BIG_464_60_fshr, libamcl_curve_BLS461), Cint, (BIG_464_60, Cint), x, s)
end

function BIG_464_60_dshr(x, s)
    ccall((:BIG_464_60_dshr, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, Cint), x, s)
end

function BIG_464_60_split(x, y, z, s)
    ccall((:BIG_464_60_split, libamcl_curve_BLS461), Int64, (BIG_464_60, BIG_464_60, DBIG_464_60, Cint), x, y, z, s)
end

function BIG_464_60_norm(x)
    ccall((:BIG_464_60_norm, libamcl_curve_BLS461), Int64, (BIG_464_60,), x)
end

function BIG_464_60_dnorm(x)
    ccall((:BIG_464_60_dnorm, libamcl_curve_BLS461), Cvoid, (DBIG_464_60,), x)
end

function BIG_464_60_comp(x, y)
    ccall((:BIG_464_60_comp, libamcl_curve_BLS461), Cint, (BIG_464_60, BIG_464_60), x, y)
end

function BIG_464_60_dcomp(x, y)
    ccall((:BIG_464_60_dcomp, libamcl_curve_BLS461), Cint, (DBIG_464_60, DBIG_464_60), x, y)
end

function BIG_464_60_nbits(x)
    ccall((:BIG_464_60_nbits, libamcl_curve_BLS461), Cint, (BIG_464_60,), x)
end

function BIG_464_60_dnbits(x)
    ccall((:BIG_464_60_dnbits, libamcl_curve_BLS461), Cint, (DBIG_464_60,), x)
end

function BIG_464_60_mod(x, n)
    ccall((:BIG_464_60_mod, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60), x, n)
end

function BIG_464_60_sdiv(x, n)
    ccall((:BIG_464_60_sdiv, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60), x, n)
end

function BIG_464_60_dmod(x, y, n)
    ccall((:BIG_464_60_dmod, libamcl_curve_BLS461), Cvoid, (BIG_464_60, DBIG_464_60, BIG_464_60), x, y, n)
end

function BIG_464_60_ddiv(x, y, n)
    ccall((:BIG_464_60_ddiv, libamcl_curve_BLS461), Cvoid, (BIG_464_60, DBIG_464_60, BIG_464_60), x, y, n)
end

function BIG_464_60_parity(x)
    ccall((:BIG_464_60_parity, libamcl_curve_BLS461), Cint, (BIG_464_60,), x)
end

function BIG_464_60_bit(x, i)
    ccall((:BIG_464_60_bit, libamcl_curve_BLS461), Cint, (BIG_464_60, Cint), x, i)
end

function BIG_464_60_lastbits(x, n)
    ccall((:BIG_464_60_lastbits, libamcl_curve_BLS461), Cint, (BIG_464_60, Cint), x, n)
end

function BIG_464_60_random(x, r)
    ccall((:BIG_464_60_random, libamcl_curve_BLS461), Cvoid, (BIG_464_60, Ptr{csprng}), x, r)
end

function BIG_464_60_randomnum(x, n, r)
    ccall((:BIG_464_60_randomnum, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, Ptr{csprng}), x, n, r)
end

function BIG_464_60_modmul(x, y, z, n)
    ccall((:BIG_464_60_modmul, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, BIG_464_60, BIG_464_60), x, y, z, n)
end

function BIG_464_60_moddiv(x, y, z, n)
    ccall((:BIG_464_60_moddiv, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, BIG_464_60, BIG_464_60), x, y, z, n)
end

function BIG_464_60_modsqr(x, y, n)
    ccall((:BIG_464_60_modsqr, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, BIG_464_60), x, y, n)
end

function BIG_464_60_modneg(x, y, n)
    ccall((:BIG_464_60_modneg, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, BIG_464_60), x, y, n)
end

function BIG_464_60_jacobi(x, y)
    ccall((:BIG_464_60_jacobi, libamcl_curve_BLS461), Cint, (BIG_464_60, BIG_464_60), x, y)
end

function BIG_464_60_invmodp(x, y, n)
    ccall((:BIG_464_60_invmodp, libamcl_curve_BLS461), Cvoid, (BIG_464_60, BIG_464_60, BIG_464_60), x, y, n)
end

function BIG_464_60_mod2m(x, m)
    ccall((:BIG_464_60_mod2m, libamcl_curve_BLS461), Cvoid, (BIG_464_60, Cint), x, m)
end

function BIG_464_60_dmod2m(x, m)
    ccall((:BIG_464_60_dmod2m, libamcl_curve_BLS461), Cvoid, (DBIG_464_60, Cint), x, m)
end

function muladd_464_60(x, y, c, r)
    ccall((:muladd_464_60, libamcl_curve_BLS461), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_480_56.h
# Automatically generated using Clang.jl


function BIG_480_56_iszilch(x)
    ccall((:BIG_480_56_iszilch, libamcl_curve_BLS24), Cint, (BIG_480_56,), x)
end

function BIG_480_56_isunity(x)
    ccall((:BIG_480_56_isunity, libamcl_curve_BLS24), Cint, (BIG_480_56,), x)
end

function BIG_480_56_diszilch(x)
    ccall((:BIG_480_56_diszilch, libamcl_curve_BLS24), Cint, (DBIG_480_56,), x)
end

function BIG_480_56_output(x)
    ccall((:BIG_480_56_output, libamcl_curve_BLS24), Cvoid, (BIG_480_56,), x)
end

function BIG_480_56_rawoutput(x)
    ccall((:BIG_480_56_rawoutput, libamcl_curve_BLS24), Cvoid, (BIG_480_56,), x)
end

function BIG_480_56_cswap(x, y, s)
    ccall((:BIG_480_56_cswap, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, Cint), x, y, s)
end

function BIG_480_56_cmove(x, y, s)
    ccall((:BIG_480_56_cmove, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, Cint), x, y, s)
end

function BIG_480_56_dcmove(x, y, s)
    ccall((:BIG_480_56_dcmove, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, Cint), x, y, s)
end

function BIG_480_56_toBytes(a, x)
    ccall((:BIG_480_56_toBytes, libamcl_curve_BLS24), Cvoid, (Cstring, BIG_480_56), a, x)
end

function BIG_480_56_fromBytes(x, a)
    ccall((:BIG_480_56_fromBytes, libamcl_curve_BLS24), Cvoid, (BIG_480_56, Cstring), x, a)
end

function BIG_480_56_fromBytesLen(x, a, s)
    ccall((:BIG_480_56_fromBytesLen, libamcl_curve_BLS24), Cvoid, (BIG_480_56, Cstring, Cint), x, a, s)
end

function BIG_480_56_dfromBytesLen(x, a, s)
    ccall((:BIG_480_56_dfromBytesLen, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, Cstring, Cint), x, a, s)
end

function BIG_480_56_doutput(x)
    ccall((:BIG_480_56_doutput, libamcl_curve_BLS24), Cvoid, (DBIG_480_56,), x)
end

function BIG_480_56_drawoutput(x)
    ccall((:BIG_480_56_drawoutput, libamcl_curve_BLS24), Cvoid, (DBIG_480_56,), x)
end

function BIG_480_56_rcopy(x, y)
    ccall((:BIG_480_56_rcopy, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56), x, y)
end

function BIG_480_56_copy(x, y)
    ccall((:BIG_480_56_copy, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56), x, y)
end

function BIG_480_56_dcopy(x, y)
    ccall((:BIG_480_56_dcopy, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, DBIG_480_56), x, y)
end

function BIG_480_56_dsucopy(x, y)
    ccall((:BIG_480_56_dsucopy, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, BIG_480_56), x, y)
end

function BIG_480_56_dscopy(x, y)
    ccall((:BIG_480_56_dscopy, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, BIG_480_56), x, y)
end

function BIG_480_56_sdcopy(x, y)
    ccall((:BIG_480_56_sdcopy, libamcl_curve_BLS24), Cvoid, (BIG_480_56, DBIG_480_56), x, y)
end

function BIG_480_56_sducopy(x, y)
    ccall((:BIG_480_56_sducopy, libamcl_curve_BLS24), Cvoid, (BIG_480_56, DBIG_480_56), x, y)
end

function BIG_480_56_zero(x)
    ccall((:BIG_480_56_zero, libamcl_curve_BLS24), Cvoid, (BIG_480_56,), x)
end

function BIG_480_56_dzero(x)
    ccall((:BIG_480_56_dzero, libamcl_curve_BLS24), Cvoid, (DBIG_480_56,), x)
end

function BIG_480_56_one(x)
    ccall((:BIG_480_56_one, libamcl_curve_BLS24), Cvoid, (BIG_480_56,), x)
end

function BIG_480_56_invmod2m(x)
    ccall((:BIG_480_56_invmod2m, libamcl_curve_BLS24), Cvoid, (BIG_480_56,), x)
end

function BIG_480_56_add(x, y, z)
    ccall((:BIG_480_56_add, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, BIG_480_56), x, y, z)
end

function BIG_480_56_or(x, y, z)
    ccall((:BIG_480_56_or, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, BIG_480_56), x, y, z)
end

function BIG_480_56_inc(x, i)
    ccall((:BIG_480_56_inc, libamcl_curve_BLS24), Cvoid, (BIG_480_56, Cint), x, i)
end

function BIG_480_56_sub(x, y, z)
    ccall((:BIG_480_56_sub, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, BIG_480_56), x, y, z)
end

function BIG_480_56_dec(x, i)
    ccall((:BIG_480_56_dec, libamcl_curve_BLS24), Cvoid, (BIG_480_56, Cint), x, i)
end

function BIG_480_56_dadd(x, y, z)
    ccall((:BIG_480_56_dadd, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, DBIG_480_56, DBIG_480_56), x, y, z)
end

function BIG_480_56_dsub(x, y, z)
    ccall((:BIG_480_56_dsub, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, DBIG_480_56, DBIG_480_56), x, y, z)
end

function BIG_480_56_imul(x, y, i)
    ccall((:BIG_480_56_imul, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, Cint), x, y, i)
end

function BIG_480_56_pmul(x, y, i)
    ccall((:BIG_480_56_pmul, libamcl_curve_BLS24), Int64, (BIG_480_56, BIG_480_56, Cint), x, y, i)
end

function BIG_480_56_div3(x)
    ccall((:BIG_480_56_div3, libamcl_curve_BLS24), Cint, (BIG_480_56,), x)
end

function BIG_480_56_pxmul(x, y, i)
    ccall((:BIG_480_56_pxmul, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, BIG_480_56, Cint), x, y, i)
end

function BIG_480_56_mul(x, y, z)
    ccall((:BIG_480_56_mul, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, BIG_480_56, BIG_480_56), x, y, z)
end

function BIG_480_56_smul(x, y, z)
    ccall((:BIG_480_56_smul, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, BIG_480_56), x, y, z)
end

function BIG_480_56_sqr(x, y)
    ccall((:BIG_480_56_sqr, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, BIG_480_56), x, y)
end

function BIG_480_56_monty(a, md, MC, d)
    ccall((:BIG_480_56_monty, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, Int64, DBIG_480_56), a, md, MC, d)
end

function BIG_480_56_shl(x, s)
    ccall((:BIG_480_56_shl, libamcl_curve_BLS24), Cvoid, (BIG_480_56, Cint), x, s)
end

function BIG_480_56_fshl(x, s)
    ccall((:BIG_480_56_fshl, libamcl_curve_BLS24), Cint, (BIG_480_56, Cint), x, s)
end

function BIG_480_56_dshl(x, s)
    ccall((:BIG_480_56_dshl, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, Cint), x, s)
end

function BIG_480_56_shr(x, s)
    ccall((:BIG_480_56_shr, libamcl_curve_BLS24), Cvoid, (BIG_480_56, Cint), x, s)
end

function BIG_480_56_ssn(r, a, m)
    ccall((:BIG_480_56_ssn, libamcl_curve_BLS24), Cint, (BIG_480_56, BIG_480_56, BIG_480_56), r, a, m)
end

function BIG_480_56_fshr(x, s)
    ccall((:BIG_480_56_fshr, libamcl_curve_BLS24), Cint, (BIG_480_56, Cint), x, s)
end

function BIG_480_56_dshr(x, s)
    ccall((:BIG_480_56_dshr, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, Cint), x, s)
end

function BIG_480_56_split(x, y, z, s)
    ccall((:BIG_480_56_split, libamcl_curve_BLS24), Int64, (BIG_480_56, BIG_480_56, DBIG_480_56, Cint), x, y, z, s)
end

function BIG_480_56_norm(x)
    ccall((:BIG_480_56_norm, libamcl_curve_BLS24), Int64, (BIG_480_56,), x)
end

function BIG_480_56_dnorm(x)
    ccall((:BIG_480_56_dnorm, libamcl_curve_BLS24), Cvoid, (DBIG_480_56,), x)
end

function BIG_480_56_comp(x, y)
    ccall((:BIG_480_56_comp, libamcl_curve_BLS24), Cint, (BIG_480_56, BIG_480_56), x, y)
end

function BIG_480_56_dcomp(x, y)
    ccall((:BIG_480_56_dcomp, libamcl_curve_BLS24), Cint, (DBIG_480_56, DBIG_480_56), x, y)
end

function BIG_480_56_nbits(x)
    ccall((:BIG_480_56_nbits, libamcl_curve_BLS24), Cint, (BIG_480_56,), x)
end

function BIG_480_56_dnbits(x)
    ccall((:BIG_480_56_dnbits, libamcl_curve_BLS24), Cint, (DBIG_480_56,), x)
end

function BIG_480_56_mod(x, n)
    ccall((:BIG_480_56_mod, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56), x, n)
end

function BIG_480_56_sdiv(x, n)
    ccall((:BIG_480_56_sdiv, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56), x, n)
end

function BIG_480_56_dmod(x, y, n)
    ccall((:BIG_480_56_dmod, libamcl_curve_BLS24), Cvoid, (BIG_480_56, DBIG_480_56, BIG_480_56), x, y, n)
end

function BIG_480_56_ddiv(x, y, n)
    ccall((:BIG_480_56_ddiv, libamcl_curve_BLS24), Cvoid, (BIG_480_56, DBIG_480_56, BIG_480_56), x, y, n)
end

function BIG_480_56_parity(x)
    ccall((:BIG_480_56_parity, libamcl_curve_BLS24), Cint, (BIG_480_56,), x)
end

function BIG_480_56_bit(x, i)
    ccall((:BIG_480_56_bit, libamcl_curve_BLS24), Cint, (BIG_480_56, Cint), x, i)
end

function BIG_480_56_lastbits(x, n)
    ccall((:BIG_480_56_lastbits, libamcl_curve_BLS24), Cint, (BIG_480_56, Cint), x, n)
end

function BIG_480_56_random(x, r)
    ccall((:BIG_480_56_random, libamcl_curve_BLS24), Cvoid, (BIG_480_56, Ptr{csprng}), x, r)
end

function BIG_480_56_randomnum(x, n, r)
    ccall((:BIG_480_56_randomnum, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, Ptr{csprng}), x, n, r)
end

function BIG_480_56_modmul(x, y, z, n)
    ccall((:BIG_480_56_modmul, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, BIG_480_56, BIG_480_56), x, y, z, n)
end

function BIG_480_56_moddiv(x, y, z, n)
    ccall((:BIG_480_56_moddiv, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, BIG_480_56, BIG_480_56), x, y, z, n)
end

function BIG_480_56_modsqr(x, y, n)
    ccall((:BIG_480_56_modsqr, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, BIG_480_56), x, y, n)
end

function BIG_480_56_modneg(x, y, n)
    ccall((:BIG_480_56_modneg, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, BIG_480_56), x, y, n)
end

function BIG_480_56_jacobi(x, y)
    ccall((:BIG_480_56_jacobi, libamcl_curve_BLS24), Cint, (BIG_480_56, BIG_480_56), x, y)
end

function BIG_480_56_invmodp(x, y, n)
    ccall((:BIG_480_56_invmodp, libamcl_curve_BLS24), Cvoid, (BIG_480_56, BIG_480_56, BIG_480_56), x, y, n)
end

function BIG_480_56_mod2m(x, m)
    ccall((:BIG_480_56_mod2m, libamcl_curve_BLS24), Cvoid, (BIG_480_56, Cint), x, m)
end

function BIG_480_56_dmod2m(x, m)
    ccall((:BIG_480_56_dmod2m, libamcl_curve_BLS24), Cvoid, (DBIG_480_56, Cint), x, m)
end

function muladd_480_56(x, y, c, r)
    ccall((:muladd_480_56, libamcl_curve_BLS24), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_512_56.h
# Automatically generated using Clang.jl


function BIG_512_56_iszilch(x)
    ccall((:BIG_512_56_iszilch, libamcl_curve_NUMS512E), Cint, (BIG_512_56,), x)
end

function BIG_512_56_isunity(x)
    ccall((:BIG_512_56_isunity, libamcl_curve_NUMS512E), Cint, (BIG_512_56,), x)
end

function BIG_512_56_diszilch(x)
    ccall((:BIG_512_56_diszilch, libamcl_curve_NUMS512E), Cint, (DBIG_512_56,), x)
end

function BIG_512_56_output(x)
    ccall((:BIG_512_56_output, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56,), x)
end

function BIG_512_56_rawoutput(x)
    ccall((:BIG_512_56_rawoutput, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56,), x)
end

function BIG_512_56_cswap(x, y, s)
    ccall((:BIG_512_56_cswap, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, Cint), x, y, s)
end

function BIG_512_56_cmove(x, y, s)
    ccall((:BIG_512_56_cmove, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, Cint), x, y, s)
end

function BIG_512_56_dcmove(x, y, s)
    ccall((:BIG_512_56_dcmove, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, Cint), x, y, s)
end

function BIG_512_56_toBytes(a, x)
    ccall((:BIG_512_56_toBytes, libamcl_curve_NUMS512E), Cvoid, (Cstring, BIG_512_56), a, x)
end

function BIG_512_56_fromBytes(x, a)
    ccall((:BIG_512_56_fromBytes, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, Cstring), x, a)
end

function BIG_512_56_fromBytesLen(x, a, s)
    ccall((:BIG_512_56_fromBytesLen, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, Cstring, Cint), x, a, s)
end

function BIG_512_56_dfromBytesLen(x, a, s)
    ccall((:BIG_512_56_dfromBytesLen, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, Cstring, Cint), x, a, s)
end

function BIG_512_56_doutput(x)
    ccall((:BIG_512_56_doutput, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56,), x)
end

function BIG_512_56_drawoutput(x)
    ccall((:BIG_512_56_drawoutput, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56,), x)
end

function BIG_512_56_rcopy(x, y)
    ccall((:BIG_512_56_rcopy, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56), x, y)
end

function BIG_512_56_copy(x, y)
    ccall((:BIG_512_56_copy, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56), x, y)
end

function BIG_512_56_dcopy(x, y)
    ccall((:BIG_512_56_dcopy, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, DBIG_512_56), x, y)
end

function BIG_512_56_dsucopy(x, y)
    ccall((:BIG_512_56_dsucopy, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, BIG_512_56), x, y)
end

function BIG_512_56_dscopy(x, y)
    ccall((:BIG_512_56_dscopy, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, BIG_512_56), x, y)
end

function BIG_512_56_sdcopy(x, y)
    ccall((:BIG_512_56_sdcopy, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, DBIG_512_56), x, y)
end

function BIG_512_56_sducopy(x, y)
    ccall((:BIG_512_56_sducopy, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, DBIG_512_56), x, y)
end

function BIG_512_56_zero(x)
    ccall((:BIG_512_56_zero, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56,), x)
end

function BIG_512_56_dzero(x)
    ccall((:BIG_512_56_dzero, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56,), x)
end

function BIG_512_56_one(x)
    ccall((:BIG_512_56_one, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56,), x)
end

function BIG_512_56_invmod2m(x)
    ccall((:BIG_512_56_invmod2m, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56,), x)
end

function BIG_512_56_add(x, y, z)
    ccall((:BIG_512_56_add, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, BIG_512_56), x, y, z)
end

function BIG_512_56_or(x, y, z)
    ccall((:BIG_512_56_or, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, BIG_512_56), x, y, z)
end

function BIG_512_56_inc(x, i)
    ccall((:BIG_512_56_inc, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, Cint), x, i)
end

function BIG_512_56_sub(x, y, z)
    ccall((:BIG_512_56_sub, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, BIG_512_56), x, y, z)
end

function BIG_512_56_dec(x, i)
    ccall((:BIG_512_56_dec, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, Cint), x, i)
end

function BIG_512_56_dadd(x, y, z)
    ccall((:BIG_512_56_dadd, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, DBIG_512_56, DBIG_512_56), x, y, z)
end

function BIG_512_56_dsub(x, y, z)
    ccall((:BIG_512_56_dsub, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, DBIG_512_56, DBIG_512_56), x, y, z)
end

function BIG_512_56_imul(x, y, i)
    ccall((:BIG_512_56_imul, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, Cint), x, y, i)
end

function BIG_512_56_pmul(x, y, i)
    ccall((:BIG_512_56_pmul, libamcl_curve_NUMS512E), Int64, (BIG_512_56, BIG_512_56, Cint), x, y, i)
end

function BIG_512_56_div3(x)
    ccall((:BIG_512_56_div3, libamcl_curve_NUMS512E), Cint, (BIG_512_56,), x)
end

function BIG_512_56_pxmul(x, y, i)
    ccall((:BIG_512_56_pxmul, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, BIG_512_56, Cint), x, y, i)
end

function BIG_512_56_mul(x, y, z)
    ccall((:BIG_512_56_mul, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, BIG_512_56, BIG_512_56), x, y, z)
end

function BIG_512_56_smul(x, y, z)
    ccall((:BIG_512_56_smul, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, BIG_512_56), x, y, z)
end

function BIG_512_56_sqr(x, y)
    ccall((:BIG_512_56_sqr, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, BIG_512_56), x, y)
end

function BIG_512_56_monty(a, md, MC, d)
    ccall((:BIG_512_56_monty, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, Int64, DBIG_512_56), a, md, MC, d)
end

function BIG_512_56_shl(x, s)
    ccall((:BIG_512_56_shl, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, Cint), x, s)
end

function BIG_512_56_fshl(x, s)
    ccall((:BIG_512_56_fshl, libamcl_curve_NUMS512E), Cint, (BIG_512_56, Cint), x, s)
end

function BIG_512_56_dshl(x, s)
    ccall((:BIG_512_56_dshl, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, Cint), x, s)
end

function BIG_512_56_shr(x, s)
    ccall((:BIG_512_56_shr, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, Cint), x, s)
end

function BIG_512_56_ssn(r, a, m)
    ccall((:BIG_512_56_ssn, libamcl_curve_NUMS512E), Cint, (BIG_512_56, BIG_512_56, BIG_512_56), r, a, m)
end

function BIG_512_56_fshr(x, s)
    ccall((:BIG_512_56_fshr, libamcl_curve_NUMS512E), Cint, (BIG_512_56, Cint), x, s)
end

function BIG_512_56_dshr(x, s)
    ccall((:BIG_512_56_dshr, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, Cint), x, s)
end

function BIG_512_56_split(x, y, z, s)
    ccall((:BIG_512_56_split, libamcl_curve_NUMS512E), Int64, (BIG_512_56, BIG_512_56, DBIG_512_56, Cint), x, y, z, s)
end

function BIG_512_56_norm(x)
    ccall((:BIG_512_56_norm, libamcl_curve_NUMS512E), Int64, (BIG_512_56,), x)
end

function BIG_512_56_dnorm(x)
    ccall((:BIG_512_56_dnorm, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56,), x)
end

function BIG_512_56_comp(x, y)
    ccall((:BIG_512_56_comp, libamcl_curve_NUMS512E), Cint, (BIG_512_56, BIG_512_56), x, y)
end

function BIG_512_56_dcomp(x, y)
    ccall((:BIG_512_56_dcomp, libamcl_curve_NUMS512E), Cint, (DBIG_512_56, DBIG_512_56), x, y)
end

function BIG_512_56_nbits(x)
    ccall((:BIG_512_56_nbits, libamcl_curve_NUMS512E), Cint, (BIG_512_56,), x)
end

function BIG_512_56_dnbits(x)
    ccall((:BIG_512_56_dnbits, libamcl_curve_NUMS512E), Cint, (DBIG_512_56,), x)
end

function BIG_512_56_mod(x, n)
    ccall((:BIG_512_56_mod, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56), x, n)
end

function BIG_512_56_sdiv(x, n)
    ccall((:BIG_512_56_sdiv, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56), x, n)
end

function BIG_512_56_dmod(x, y, n)
    ccall((:BIG_512_56_dmod, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, DBIG_512_56, BIG_512_56), x, y, n)
end

function BIG_512_56_ddiv(x, y, n)
    ccall((:BIG_512_56_ddiv, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, DBIG_512_56, BIG_512_56), x, y, n)
end

function BIG_512_56_parity(x)
    ccall((:BIG_512_56_parity, libamcl_curve_NUMS512E), Cint, (BIG_512_56,), x)
end

function BIG_512_56_bit(x, i)
    ccall((:BIG_512_56_bit, libamcl_curve_NUMS512E), Cint, (BIG_512_56, Cint), x, i)
end

function BIG_512_56_lastbits(x, n)
    ccall((:BIG_512_56_lastbits, libamcl_curve_NUMS512E), Cint, (BIG_512_56, Cint), x, n)
end

function BIG_512_56_random(x, r)
    ccall((:BIG_512_56_random, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, Ptr{csprng}), x, r)
end

function BIG_512_56_randomnum(x, n, r)
    ccall((:BIG_512_56_randomnum, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, Ptr{csprng}), x, n, r)
end

function BIG_512_56_modmul(x, y, z, n)
    ccall((:BIG_512_56_modmul, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, BIG_512_56, BIG_512_56), x, y, z, n)
end

function BIG_512_56_moddiv(x, y, z, n)
    ccall((:BIG_512_56_moddiv, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, BIG_512_56, BIG_512_56), x, y, z, n)
end

function BIG_512_56_modsqr(x, y, n)
    ccall((:BIG_512_56_modsqr, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, BIG_512_56), x, y, n)
end

function BIG_512_56_modneg(x, y, n)
    ccall((:BIG_512_56_modneg, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, BIG_512_56), x, y, n)
end

function BIG_512_56_jacobi(x, y)
    ccall((:BIG_512_56_jacobi, libamcl_curve_NUMS512E), Cint, (BIG_512_56, BIG_512_56), x, y)
end

function BIG_512_56_invmodp(x, y, n)
    ccall((:BIG_512_56_invmodp, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, BIG_512_56, BIG_512_56), x, y, n)
end

function BIG_512_56_mod2m(x, m)
    ccall((:BIG_512_56_mod2m, libamcl_curve_NUMS512E), Cvoid, (BIG_512_56, Cint), x, m)
end

function BIG_512_56_dmod2m(x, m)
    ccall((:BIG_512_56_dmod2m, libamcl_curve_NUMS512E), Cvoid, (DBIG_512_56, Cint), x, m)
end

function muladd_512_56(x, y, c, r)
    ccall((:muladd_512_56, libamcl_curve_NUMS512E), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_512_60.h
# Automatically generated using Clang.jl


function BIG_512_60_iszilch(x)
    ccall((:BIG_512_60_iszilch, libamcl_rsa_4096), Cint, (BIG_512_60,), x)
end

function BIG_512_60_isunity(x)
    ccall((:BIG_512_60_isunity, libamcl_rsa_4096), Cint, (BIG_512_60,), x)
end

function BIG_512_60_diszilch(x)
    ccall((:BIG_512_60_diszilch, libamcl_rsa_4096), Cint, (DBIG_512_60,), x)
end

function BIG_512_60_output(x)
    ccall((:BIG_512_60_output, libamcl_rsa_4096), Cvoid, (BIG_512_60,), x)
end

function BIG_512_60_rawoutput(x)
    ccall((:BIG_512_60_rawoutput, libamcl_rsa_4096), Cvoid, (BIG_512_60,), x)
end

function BIG_512_60_cswap(x, y, s)
    ccall((:BIG_512_60_cswap, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, Cint), x, y, s)
end

function BIG_512_60_cmove(x, y, s)
    ccall((:BIG_512_60_cmove, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, Cint), x, y, s)
end

function BIG_512_60_dcmove(x, y, s)
    ccall((:BIG_512_60_dcmove, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, Cint), x, y, s)
end

function BIG_512_60_toBytes(a, x)
    ccall((:BIG_512_60_toBytes, libamcl_rsa_4096), Cvoid, (Cstring, BIG_512_60), a, x)
end

function BIG_512_60_fromBytes(x, a)
    ccall((:BIG_512_60_fromBytes, libamcl_rsa_4096), Cvoid, (BIG_512_60, Cstring), x, a)
end

function BIG_512_60_fromBytesLen(x, a, s)
    ccall((:BIG_512_60_fromBytesLen, libamcl_rsa_4096), Cvoid, (BIG_512_60, Cstring, Cint), x, a, s)
end

function BIG_512_60_dfromBytesLen(x, a, s)
    ccall((:BIG_512_60_dfromBytesLen, libamcl_rsa_4096), Cvoid, (DBIG_512_60, Cstring, Cint), x, a, s)
end

function BIG_512_60_doutput(x)
    ccall((:BIG_512_60_doutput, libamcl_rsa_4096), Cvoid, (DBIG_512_60,), x)
end

function BIG_512_60_drawoutput(x)
    ccall((:BIG_512_60_drawoutput, libamcl_rsa_4096), Cvoid, (DBIG_512_60,), x)
end

function BIG_512_60_rcopy(x, y)
    ccall((:BIG_512_60_rcopy, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60), x, y)
end

function BIG_512_60_copy(x, y)
    ccall((:BIG_512_60_copy, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60), x, y)
end

function BIG_512_60_dcopy(x, y)
    ccall((:BIG_512_60_dcopy, libamcl_rsa_4096), Cvoid, (DBIG_512_60, DBIG_512_60), x, y)
end

function BIG_512_60_dsucopy(x, y)
    ccall((:BIG_512_60_dsucopy, libamcl_rsa_4096), Cvoid, (DBIG_512_60, BIG_512_60), x, y)
end

function BIG_512_60_dscopy(x, y)
    ccall((:BIG_512_60_dscopy, libamcl_rsa_4096), Cvoid, (DBIG_512_60, BIG_512_60), x, y)
end

function BIG_512_60_sdcopy(x, y)
    ccall((:BIG_512_60_sdcopy, libamcl_rsa_4096), Cvoid, (BIG_512_60, DBIG_512_60), x, y)
end

function BIG_512_60_sducopy(x, y)
    ccall((:BIG_512_60_sducopy, libamcl_rsa_4096), Cvoid, (BIG_512_60, DBIG_512_60), x, y)
end

function BIG_512_60_zero(x)
    ccall((:BIG_512_60_zero, libamcl_rsa_4096), Cvoid, (BIG_512_60,), x)
end

function BIG_512_60_dzero(x)
    ccall((:BIG_512_60_dzero, libamcl_rsa_4096), Cvoid, (DBIG_512_60,), x)
end

function BIG_512_60_one(x)
    ccall((:BIG_512_60_one, libamcl_rsa_4096), Cvoid, (BIG_512_60,), x)
end

function BIG_512_60_invmod2m(x)
    ccall((:BIG_512_60_invmod2m, libamcl_rsa_4096), Cvoid, (BIG_512_60,), x)
end

function BIG_512_60_add(x, y, z)
    ccall((:BIG_512_60_add, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, BIG_512_60), x, y, z)
end

function BIG_512_60_or(x, y, z)
    ccall((:BIG_512_60_or, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, BIG_512_60), x, y, z)
end

function BIG_512_60_inc(x, i)
    ccall((:BIG_512_60_inc, libamcl_rsa_4096), Cvoid, (BIG_512_60, Cint), x, i)
end

function BIG_512_60_sub(x, y, z)
    ccall((:BIG_512_60_sub, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, BIG_512_60), x, y, z)
end

function BIG_512_60_dec(x, i)
    ccall((:BIG_512_60_dec, libamcl_rsa_4096), Cvoid, (BIG_512_60, Cint), x, i)
end

function BIG_512_60_dadd(x, y, z)
    ccall((:BIG_512_60_dadd, libamcl_rsa_4096), Cvoid, (DBIG_512_60, DBIG_512_60, DBIG_512_60), x, y, z)
end

function BIG_512_60_dsub(x, y, z)
    ccall((:BIG_512_60_dsub, libamcl_rsa_4096), Cvoid, (DBIG_512_60, DBIG_512_60, DBIG_512_60), x, y, z)
end

function BIG_512_60_imul(x, y, i)
    ccall((:BIG_512_60_imul, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, Cint), x, y, i)
end

function BIG_512_60_pmul(x, y, i)
    ccall((:BIG_512_60_pmul, libamcl_rsa_4096), Int64, (BIG_512_60, BIG_512_60, Cint), x, y, i)
end

function BIG_512_60_div3(x)
    ccall((:BIG_512_60_div3, libamcl_rsa_4096), Cint, (BIG_512_60,), x)
end

function BIG_512_60_pxmul(x, y, i)
    ccall((:BIG_512_60_pxmul, libamcl_rsa_4096), Cvoid, (DBIG_512_60, BIG_512_60, Cint), x, y, i)
end

function BIG_512_60_mul(x, y, z)
    ccall((:BIG_512_60_mul, libamcl_rsa_4096), Cvoid, (DBIG_512_60, BIG_512_60, BIG_512_60), x, y, z)
end

function BIG_512_60_smul(x, y, z)
    ccall((:BIG_512_60_smul, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, BIG_512_60), x, y, z)
end

function BIG_512_60_sqr(x, y)
    ccall((:BIG_512_60_sqr, libamcl_rsa_4096), Cvoid, (DBIG_512_60, BIG_512_60), x, y)
end

function BIG_512_60_monty(a, md, MC, d)
    ccall((:BIG_512_60_monty, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, Int64, DBIG_512_60), a, md, MC, d)
end

function BIG_512_60_shl(x, s)
    ccall((:BIG_512_60_shl, libamcl_rsa_4096), Cvoid, (BIG_512_60, Cint), x, s)
end

function BIG_512_60_fshl(x, s)
    ccall((:BIG_512_60_fshl, libamcl_rsa_4096), Cint, (BIG_512_60, Cint), x, s)
end

function BIG_512_60_dshl(x, s)
    ccall((:BIG_512_60_dshl, libamcl_rsa_4096), Cvoid, (DBIG_512_60, Cint), x, s)
end

function BIG_512_60_shr(x, s)
    ccall((:BIG_512_60_shr, libamcl_rsa_4096), Cvoid, (BIG_512_60, Cint), x, s)
end

function BIG_512_60_ssn(r, a, m)
    ccall((:BIG_512_60_ssn, libamcl_rsa_4096), Cint, (BIG_512_60, BIG_512_60, BIG_512_60), r, a, m)
end

function BIG_512_60_fshr(x, s)
    ccall((:BIG_512_60_fshr, libamcl_rsa_4096), Cint, (BIG_512_60, Cint), x, s)
end

function BIG_512_60_dshr(x, s)
    ccall((:BIG_512_60_dshr, libamcl_rsa_4096), Cvoid, (DBIG_512_60, Cint), x, s)
end

function BIG_512_60_split(x, y, z, s)
    ccall((:BIG_512_60_split, libamcl_rsa_4096), Int64, (BIG_512_60, BIG_512_60, DBIG_512_60, Cint), x, y, z, s)
end

function BIG_512_60_norm(x)
    ccall((:BIG_512_60_norm, libamcl_rsa_4096), Int64, (BIG_512_60,), x)
end

function BIG_512_60_dnorm(x)
    ccall((:BIG_512_60_dnorm, libamcl_rsa_4096), Cvoid, (DBIG_512_60,), x)
end

function BIG_512_60_comp(x, y)
    ccall((:BIG_512_60_comp, libamcl_rsa_4096), Cint, (BIG_512_60, BIG_512_60), x, y)
end

function BIG_512_60_dcomp(x, y)
    ccall((:BIG_512_60_dcomp, libamcl_rsa_4096), Cint, (DBIG_512_60, DBIG_512_60), x, y)
end

function BIG_512_60_nbits(x)
    ccall((:BIG_512_60_nbits, libamcl_rsa_4096), Cint, (BIG_512_60,), x)
end

function BIG_512_60_dnbits(x)
    ccall((:BIG_512_60_dnbits, libamcl_rsa_4096), Cint, (DBIG_512_60,), x)
end

function BIG_512_60_mod(x, n)
    ccall((:BIG_512_60_mod, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60), x, n)
end

function BIG_512_60_sdiv(x, n)
    ccall((:BIG_512_60_sdiv, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60), x, n)
end

function BIG_512_60_dmod(x, y, n)
    ccall((:BIG_512_60_dmod, libamcl_rsa_4096), Cvoid, (BIG_512_60, DBIG_512_60, BIG_512_60), x, y, n)
end

function BIG_512_60_ddiv(x, y, n)
    ccall((:BIG_512_60_ddiv, libamcl_rsa_4096), Cvoid, (BIG_512_60, DBIG_512_60, BIG_512_60), x, y, n)
end

function BIG_512_60_parity(x)
    ccall((:BIG_512_60_parity, libamcl_rsa_4096), Cint, (BIG_512_60,), x)
end

function BIG_512_60_bit(x, i)
    ccall((:BIG_512_60_bit, libamcl_rsa_4096), Cint, (BIG_512_60, Cint), x, i)
end

function BIG_512_60_lastbits(x, n)
    ccall((:BIG_512_60_lastbits, libamcl_rsa_4096), Cint, (BIG_512_60, Cint), x, n)
end

function BIG_512_60_random(x, r)
    ccall((:BIG_512_60_random, libamcl_rsa_4096), Cvoid, (BIG_512_60, Ptr{csprng}), x, r)
end

function BIG_512_60_randomnum(x, n, r)
    ccall((:BIG_512_60_randomnum, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, Ptr{csprng}), x, n, r)
end

function BIG_512_60_modmul(x, y, z, n)
    ccall((:BIG_512_60_modmul, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, BIG_512_60, BIG_512_60), x, y, z, n)
end

function BIG_512_60_moddiv(x, y, z, n)
    ccall((:BIG_512_60_moddiv, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, BIG_512_60, BIG_512_60), x, y, z, n)
end

function BIG_512_60_modsqr(x, y, n)
    ccall((:BIG_512_60_modsqr, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, BIG_512_60), x, y, n)
end

function BIG_512_60_modneg(x, y, n)
    ccall((:BIG_512_60_modneg, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, BIG_512_60), x, y, n)
end

function BIG_512_60_jacobi(x, y)
    ccall((:BIG_512_60_jacobi, libamcl_rsa_4096), Cint, (BIG_512_60, BIG_512_60), x, y)
end

function BIG_512_60_invmodp(x, y, n)
    ccall((:BIG_512_60_invmodp, libamcl_rsa_4096), Cvoid, (BIG_512_60, BIG_512_60, BIG_512_60), x, y, n)
end

function BIG_512_60_mod2m(x, m)
    ccall((:BIG_512_60_mod2m, libamcl_rsa_4096), Cvoid, (BIG_512_60, Cint), x, m)
end

function BIG_512_60_dmod2m(x, m)
    ccall((:BIG_512_60_dmod2m, libamcl_rsa_4096), Cvoid, (DBIG_512_60, Cint), x, m)
end

function muladd_512_60(x, y, c, r)
    ccall((:muladd_512_60, libamcl_rsa_4096), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_528_60.h
# Automatically generated using Clang.jl


function BIG_528_60_iszilch(x)
    ccall((:BIG_528_60_iszilch, libamcl_curve_NIST521), Cint, (BIG_528_60,), x)
end

function BIG_528_60_isunity(x)
    ccall((:BIG_528_60_isunity, libamcl_curve_NIST521), Cint, (BIG_528_60,), x)
end

function BIG_528_60_diszilch(x)
    ccall((:BIG_528_60_diszilch, libamcl_curve_NIST521), Cint, (DBIG_528_60,), x)
end

function BIG_528_60_output(x)
    ccall((:BIG_528_60_output, libamcl_curve_NIST521), Cvoid, (BIG_528_60,), x)
end

function BIG_528_60_rawoutput(x)
    ccall((:BIG_528_60_rawoutput, libamcl_curve_NIST521), Cvoid, (BIG_528_60,), x)
end

function BIG_528_60_cswap(x, y, s)
    ccall((:BIG_528_60_cswap, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, Cint), x, y, s)
end

function BIG_528_60_cmove(x, y, s)
    ccall((:BIG_528_60_cmove, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, Cint), x, y, s)
end

function BIG_528_60_dcmove(x, y, s)
    ccall((:BIG_528_60_dcmove, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, Cint), x, y, s)
end

function BIG_528_60_toBytes(a, x)
    ccall((:BIG_528_60_toBytes, libamcl_curve_NIST521), Cvoid, (Cstring, BIG_528_60), a, x)
end

function BIG_528_60_fromBytes(x, a)
    ccall((:BIG_528_60_fromBytes, libamcl_curve_NIST521), Cvoid, (BIG_528_60, Cstring), x, a)
end

function BIG_528_60_fromBytesLen(x, a, s)
    ccall((:BIG_528_60_fromBytesLen, libamcl_curve_NIST521), Cvoid, (BIG_528_60, Cstring, Cint), x, a, s)
end

function BIG_528_60_dfromBytesLen(x, a, s)
    ccall((:BIG_528_60_dfromBytesLen, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, Cstring, Cint), x, a, s)
end

function BIG_528_60_doutput(x)
    ccall((:BIG_528_60_doutput, libamcl_curve_NIST521), Cvoid, (DBIG_528_60,), x)
end

function BIG_528_60_drawoutput(x)
    ccall((:BIG_528_60_drawoutput, libamcl_curve_NIST521), Cvoid, (DBIG_528_60,), x)
end

function BIG_528_60_rcopy(x, y)
    ccall((:BIG_528_60_rcopy, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60), x, y)
end

function BIG_528_60_copy(x, y)
    ccall((:BIG_528_60_copy, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60), x, y)
end

function BIG_528_60_dcopy(x, y)
    ccall((:BIG_528_60_dcopy, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, DBIG_528_60), x, y)
end

function BIG_528_60_dsucopy(x, y)
    ccall((:BIG_528_60_dsucopy, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, BIG_528_60), x, y)
end

function BIG_528_60_dscopy(x, y)
    ccall((:BIG_528_60_dscopy, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, BIG_528_60), x, y)
end

function BIG_528_60_sdcopy(x, y)
    ccall((:BIG_528_60_sdcopy, libamcl_curve_NIST521), Cvoid, (BIG_528_60, DBIG_528_60), x, y)
end

function BIG_528_60_sducopy(x, y)
    ccall((:BIG_528_60_sducopy, libamcl_curve_NIST521), Cvoid, (BIG_528_60, DBIG_528_60), x, y)
end

function BIG_528_60_zero(x)
    ccall((:BIG_528_60_zero, libamcl_curve_NIST521), Cvoid, (BIG_528_60,), x)
end

function BIG_528_60_dzero(x)
    ccall((:BIG_528_60_dzero, libamcl_curve_NIST521), Cvoid, (DBIG_528_60,), x)
end

function BIG_528_60_one(x)
    ccall((:BIG_528_60_one, libamcl_curve_NIST521), Cvoid, (BIG_528_60,), x)
end

function BIG_528_60_invmod2m(x)
    ccall((:BIG_528_60_invmod2m, libamcl_curve_NIST521), Cvoid, (BIG_528_60,), x)
end

function BIG_528_60_add(x, y, z)
    ccall((:BIG_528_60_add, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, BIG_528_60), x, y, z)
end

function BIG_528_60_or(x, y, z)
    ccall((:BIG_528_60_or, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, BIG_528_60), x, y, z)
end

function BIG_528_60_inc(x, i)
    ccall((:BIG_528_60_inc, libamcl_curve_NIST521), Cvoid, (BIG_528_60, Cint), x, i)
end

function BIG_528_60_sub(x, y, z)
    ccall((:BIG_528_60_sub, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, BIG_528_60), x, y, z)
end

function BIG_528_60_dec(x, i)
    ccall((:BIG_528_60_dec, libamcl_curve_NIST521), Cvoid, (BIG_528_60, Cint), x, i)
end

function BIG_528_60_dadd(x, y, z)
    ccall((:BIG_528_60_dadd, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, DBIG_528_60, DBIG_528_60), x, y, z)
end

function BIG_528_60_dsub(x, y, z)
    ccall((:BIG_528_60_dsub, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, DBIG_528_60, DBIG_528_60), x, y, z)
end

function BIG_528_60_imul(x, y, i)
    ccall((:BIG_528_60_imul, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, Cint), x, y, i)
end

function BIG_528_60_pmul(x, y, i)
    ccall((:BIG_528_60_pmul, libamcl_curve_NIST521), Int64, (BIG_528_60, BIG_528_60, Cint), x, y, i)
end

function BIG_528_60_div3(x)
    ccall((:BIG_528_60_div3, libamcl_curve_NIST521), Cint, (BIG_528_60,), x)
end

function BIG_528_60_pxmul(x, y, i)
    ccall((:BIG_528_60_pxmul, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, BIG_528_60, Cint), x, y, i)
end

function BIG_528_60_mul(x, y, z)
    ccall((:BIG_528_60_mul, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, BIG_528_60, BIG_528_60), x, y, z)
end

function BIG_528_60_smul(x, y, z)
    ccall((:BIG_528_60_smul, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, BIG_528_60), x, y, z)
end

function BIG_528_60_sqr(x, y)
    ccall((:BIG_528_60_sqr, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, BIG_528_60), x, y)
end

function BIG_528_60_monty(a, md, MC, d)
    ccall((:BIG_528_60_monty, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, Int64, DBIG_528_60), a, md, MC, d)
end

function BIG_528_60_shl(x, s)
    ccall((:BIG_528_60_shl, libamcl_curve_NIST521), Cvoid, (BIG_528_60, Cint), x, s)
end

function BIG_528_60_fshl(x, s)
    ccall((:BIG_528_60_fshl, libamcl_curve_NIST521), Cint, (BIG_528_60, Cint), x, s)
end

function BIG_528_60_dshl(x, s)
    ccall((:BIG_528_60_dshl, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, Cint), x, s)
end

function BIG_528_60_shr(x, s)
    ccall((:BIG_528_60_shr, libamcl_curve_NIST521), Cvoid, (BIG_528_60, Cint), x, s)
end

function BIG_528_60_ssn(r, a, m)
    ccall((:BIG_528_60_ssn, libamcl_curve_NIST521), Cint, (BIG_528_60, BIG_528_60, BIG_528_60), r, a, m)
end

function BIG_528_60_fshr(x, s)
    ccall((:BIG_528_60_fshr, libamcl_curve_NIST521), Cint, (BIG_528_60, Cint), x, s)
end

function BIG_528_60_dshr(x, s)
    ccall((:BIG_528_60_dshr, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, Cint), x, s)
end

function BIG_528_60_split(x, y, z, s)
    ccall((:BIG_528_60_split, libamcl_curve_NIST521), Int64, (BIG_528_60, BIG_528_60, DBIG_528_60, Cint), x, y, z, s)
end

function BIG_528_60_norm(x)
    ccall((:BIG_528_60_norm, libamcl_curve_NIST521), Int64, (BIG_528_60,), x)
end

function BIG_528_60_dnorm(x)
    ccall((:BIG_528_60_dnorm, libamcl_curve_NIST521), Cvoid, (DBIG_528_60,), x)
end

function BIG_528_60_comp(x, y)
    ccall((:BIG_528_60_comp, libamcl_curve_NIST521), Cint, (BIG_528_60, BIG_528_60), x, y)
end

function BIG_528_60_dcomp(x, y)
    ccall((:BIG_528_60_dcomp, libamcl_curve_NIST521), Cint, (DBIG_528_60, DBIG_528_60), x, y)
end

function BIG_528_60_nbits(x)
    ccall((:BIG_528_60_nbits, libamcl_curve_NIST521), Cint, (BIG_528_60,), x)
end

function BIG_528_60_dnbits(x)
    ccall((:BIG_528_60_dnbits, libamcl_curve_NIST521), Cint, (DBIG_528_60,), x)
end

function BIG_528_60_mod(x, n)
    ccall((:BIG_528_60_mod, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60), x, n)
end

function BIG_528_60_sdiv(x, n)
    ccall((:BIG_528_60_sdiv, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60), x, n)
end

function BIG_528_60_dmod(x, y, n)
    ccall((:BIG_528_60_dmod, libamcl_curve_NIST521), Cvoid, (BIG_528_60, DBIG_528_60, BIG_528_60), x, y, n)
end

function BIG_528_60_ddiv(x, y, n)
    ccall((:BIG_528_60_ddiv, libamcl_curve_NIST521), Cvoid, (BIG_528_60, DBIG_528_60, BIG_528_60), x, y, n)
end

function BIG_528_60_parity(x)
    ccall((:BIG_528_60_parity, libamcl_curve_NIST521), Cint, (BIG_528_60,), x)
end

function BIG_528_60_bit(x, i)
    ccall((:BIG_528_60_bit, libamcl_curve_NIST521), Cint, (BIG_528_60, Cint), x, i)
end

function BIG_528_60_lastbits(x, n)
    ccall((:BIG_528_60_lastbits, libamcl_curve_NIST521), Cint, (BIG_528_60, Cint), x, n)
end

function BIG_528_60_random(x, r)
    ccall((:BIG_528_60_random, libamcl_curve_NIST521), Cvoid, (BIG_528_60, Ptr{csprng}), x, r)
end

function BIG_528_60_randomnum(x, n, r)
    ccall((:BIG_528_60_randomnum, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, Ptr{csprng}), x, n, r)
end

function BIG_528_60_modmul(x, y, z, n)
    ccall((:BIG_528_60_modmul, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, BIG_528_60, BIG_528_60), x, y, z, n)
end

function BIG_528_60_moddiv(x, y, z, n)
    ccall((:BIG_528_60_moddiv, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, BIG_528_60, BIG_528_60), x, y, z, n)
end

function BIG_528_60_modsqr(x, y, n)
    ccall((:BIG_528_60_modsqr, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, BIG_528_60), x, y, n)
end

function BIG_528_60_modneg(x, y, n)
    ccall((:BIG_528_60_modneg, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, BIG_528_60), x, y, n)
end

function BIG_528_60_jacobi(x, y)
    ccall((:BIG_528_60_jacobi, libamcl_curve_NIST521), Cint, (BIG_528_60, BIG_528_60), x, y)
end

function BIG_528_60_invmodp(x, y, n)
    ccall((:BIG_528_60_invmodp, libamcl_curve_NIST521), Cvoid, (BIG_528_60, BIG_528_60, BIG_528_60), x, y, n)
end

function BIG_528_60_mod2m(x, m)
    ccall((:BIG_528_60_mod2m, libamcl_curve_NIST521), Cvoid, (BIG_528_60, Cint), x, m)
end

function BIG_528_60_dmod2m(x, m)
    ccall((:BIG_528_60_dmod2m, libamcl_curve_NIST521), Cvoid, (DBIG_528_60, Cint), x, m)
end

function muladd_528_60(x, y, c, r)
    ccall((:muladd_528_60, libamcl_curve_NIST521), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: big_560_58.h
# Automatically generated using Clang.jl


function BIG_560_58_iszilch(x)
    ccall((:BIG_560_58_iszilch, libamcl_curve_BLS48), Cint, (BIG_560_58,), x)
end

function BIG_560_58_isunity(x)
    ccall((:BIG_560_58_isunity, libamcl_curve_BLS48), Cint, (BIG_560_58,), x)
end

function BIG_560_58_diszilch(x)
    ccall((:BIG_560_58_diszilch, libamcl_curve_BLS48), Cint, (DBIG_560_58,), x)
end

function BIG_560_58_output(x)
    ccall((:BIG_560_58_output, libamcl_curve_BLS48), Cvoid, (BIG_560_58,), x)
end

function BIG_560_58_rawoutput(x)
    ccall((:BIG_560_58_rawoutput, libamcl_curve_BLS48), Cvoid, (BIG_560_58,), x)
end

function BIG_560_58_cswap(x, y, s)
    ccall((:BIG_560_58_cswap, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, Cint), x, y, s)
end

function BIG_560_58_cmove(x, y, s)
    ccall((:BIG_560_58_cmove, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, Cint), x, y, s)
end

function BIG_560_58_dcmove(x, y, s)
    ccall((:BIG_560_58_dcmove, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, Cint), x, y, s)
end

function BIG_560_58_toBytes(a, x)
    ccall((:BIG_560_58_toBytes, libamcl_curve_BLS48), Cvoid, (Cstring, BIG_560_58), a, x)
end

function BIG_560_58_fromBytes(x, a)
    ccall((:BIG_560_58_fromBytes, libamcl_curve_BLS48), Cvoid, (BIG_560_58, Cstring), x, a)
end

function BIG_560_58_fromBytesLen(x, a, s)
    ccall((:BIG_560_58_fromBytesLen, libamcl_curve_BLS48), Cvoid, (BIG_560_58, Cstring, Cint), x, a, s)
end

function BIG_560_58_dfromBytesLen(x, a, s)
    ccall((:BIG_560_58_dfromBytesLen, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, Cstring, Cint), x, a, s)
end

function BIG_560_58_doutput(x)
    ccall((:BIG_560_58_doutput, libamcl_curve_BLS48), Cvoid, (DBIG_560_58,), x)
end

function BIG_560_58_drawoutput(x)
    ccall((:BIG_560_58_drawoutput, libamcl_curve_BLS48), Cvoid, (DBIG_560_58,), x)
end

function BIG_560_58_rcopy(x, y)
    ccall((:BIG_560_58_rcopy, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58), x, y)
end

function BIG_560_58_copy(x, y)
    ccall((:BIG_560_58_copy, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58), x, y)
end

function BIG_560_58_dcopy(x, y)
    ccall((:BIG_560_58_dcopy, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, DBIG_560_58), x, y)
end

function BIG_560_58_dsucopy(x, y)
    ccall((:BIG_560_58_dsucopy, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, BIG_560_58), x, y)
end

function BIG_560_58_dscopy(x, y)
    ccall((:BIG_560_58_dscopy, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, BIG_560_58), x, y)
end

function BIG_560_58_sdcopy(x, y)
    ccall((:BIG_560_58_sdcopy, libamcl_curve_BLS48), Cvoid, (BIG_560_58, DBIG_560_58), x, y)
end

function BIG_560_58_sducopy(x, y)
    ccall((:BIG_560_58_sducopy, libamcl_curve_BLS48), Cvoid, (BIG_560_58, DBIG_560_58), x, y)
end

function BIG_560_58_zero(x)
    ccall((:BIG_560_58_zero, libamcl_curve_BLS48), Cvoid, (BIG_560_58,), x)
end

function BIG_560_58_dzero(x)
    ccall((:BIG_560_58_dzero, libamcl_curve_BLS48), Cvoid, (DBIG_560_58,), x)
end

function BIG_560_58_one(x)
    ccall((:BIG_560_58_one, libamcl_curve_BLS48), Cvoid, (BIG_560_58,), x)
end

function BIG_560_58_invmod2m(x)
    ccall((:BIG_560_58_invmod2m, libamcl_curve_BLS48), Cvoid, (BIG_560_58,), x)
end

function BIG_560_58_add(x, y, z)
    ccall((:BIG_560_58_add, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, BIG_560_58), x, y, z)
end

function BIG_560_58_or(x, y, z)
    ccall((:BIG_560_58_or, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, BIG_560_58), x, y, z)
end

function BIG_560_58_inc(x, i)
    ccall((:BIG_560_58_inc, libamcl_curve_BLS48), Cvoid, (BIG_560_58, Cint), x, i)
end

function BIG_560_58_sub(x, y, z)
    ccall((:BIG_560_58_sub, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, BIG_560_58), x, y, z)
end

function BIG_560_58_dec(x, i)
    ccall((:BIG_560_58_dec, libamcl_curve_BLS48), Cvoid, (BIG_560_58, Cint), x, i)
end

function BIG_560_58_dadd(x, y, z)
    ccall((:BIG_560_58_dadd, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, DBIG_560_58, DBIG_560_58), x, y, z)
end

function BIG_560_58_dsub(x, y, z)
    ccall((:BIG_560_58_dsub, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, DBIG_560_58, DBIG_560_58), x, y, z)
end

function BIG_560_58_imul(x, y, i)
    ccall((:BIG_560_58_imul, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, Cint), x, y, i)
end

function BIG_560_58_pmul(x, y, i)
    ccall((:BIG_560_58_pmul, libamcl_curve_BLS48), Int64, (BIG_560_58, BIG_560_58, Cint), x, y, i)
end

function BIG_560_58_div3(x)
    ccall((:BIG_560_58_div3, libamcl_curve_BLS48), Cint, (BIG_560_58,), x)
end

function BIG_560_58_pxmul(x, y, i)
    ccall((:BIG_560_58_pxmul, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, BIG_560_58, Cint), x, y, i)
end

function BIG_560_58_mul(x, y, z)
    ccall((:BIG_560_58_mul, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, BIG_560_58, BIG_560_58), x, y, z)
end

function BIG_560_58_smul(x, y, z)
    ccall((:BIG_560_58_smul, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, BIG_560_58), x, y, z)
end

function BIG_560_58_sqr(x, y)
    ccall((:BIG_560_58_sqr, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, BIG_560_58), x, y)
end

function BIG_560_58_monty(a, md, MC, d)
    ccall((:BIG_560_58_monty, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, Int64, DBIG_560_58), a, md, MC, d)
end

function BIG_560_58_shl(x, s)
    ccall((:BIG_560_58_shl, libamcl_curve_BLS48), Cvoid, (BIG_560_58, Cint), x, s)
end

function BIG_560_58_fshl(x, s)
    ccall((:BIG_560_58_fshl, libamcl_curve_BLS48), Cint, (BIG_560_58, Cint), x, s)
end

function BIG_560_58_dshl(x, s)
    ccall((:BIG_560_58_dshl, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, Cint), x, s)
end

function BIG_560_58_shr(x, s)
    ccall((:BIG_560_58_shr, libamcl_curve_BLS48), Cvoid, (BIG_560_58, Cint), x, s)
end

function BIG_560_58_ssn(r, a, m)
    ccall((:BIG_560_58_ssn, libamcl_curve_BLS48), Cint, (BIG_560_58, BIG_560_58, BIG_560_58), r, a, m)
end

function BIG_560_58_fshr(x, s)
    ccall((:BIG_560_58_fshr, libamcl_curve_BLS48), Cint, (BIG_560_58, Cint), x, s)
end

function BIG_560_58_dshr(x, s)
    ccall((:BIG_560_58_dshr, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, Cint), x, s)
end

function BIG_560_58_split(x, y, z, s)
    ccall((:BIG_560_58_split, libamcl_curve_BLS48), Int64, (BIG_560_58, BIG_560_58, DBIG_560_58, Cint), x, y, z, s)
end

function BIG_560_58_norm(x)
    ccall((:BIG_560_58_norm, libamcl_curve_BLS48), Int64, (BIG_560_58,), x)
end

function BIG_560_58_dnorm(x)
    ccall((:BIG_560_58_dnorm, libamcl_curve_BLS48), Cvoid, (DBIG_560_58,), x)
end

function BIG_560_58_comp(x, y)
    ccall((:BIG_560_58_comp, libamcl_curve_BLS48), Cint, (BIG_560_58, BIG_560_58), x, y)
end

function BIG_560_58_dcomp(x, y)
    ccall((:BIG_560_58_dcomp, libamcl_curve_BLS48), Cint, (DBIG_560_58, DBIG_560_58), x, y)
end

function BIG_560_58_nbits(x)
    ccall((:BIG_560_58_nbits, libamcl_curve_BLS48), Cint, (BIG_560_58,), x)
end

function BIG_560_58_dnbits(x)
    ccall((:BIG_560_58_dnbits, libamcl_curve_BLS48), Cint, (DBIG_560_58,), x)
end

function BIG_560_58_mod(x, n)
    ccall((:BIG_560_58_mod, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58), x, n)
end

function BIG_560_58_sdiv(x, n)
    ccall((:BIG_560_58_sdiv, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58), x, n)
end

function BIG_560_58_dmod(x, y, n)
    ccall((:BIG_560_58_dmod, libamcl_curve_BLS48), Cvoid, (BIG_560_58, DBIG_560_58, BIG_560_58), x, y, n)
end

function BIG_560_58_ddiv(x, y, n)
    ccall((:BIG_560_58_ddiv, libamcl_curve_BLS48), Cvoid, (BIG_560_58, DBIG_560_58, BIG_560_58), x, y, n)
end

function BIG_560_58_parity(x)
    ccall((:BIG_560_58_parity, libamcl_curve_BLS48), Cint, (BIG_560_58,), x)
end

function BIG_560_58_bit(x, i)
    ccall((:BIG_560_58_bit, libamcl_curve_BLS48), Cint, (BIG_560_58, Cint), x, i)
end

function BIG_560_58_lastbits(x, n)
    ccall((:BIG_560_58_lastbits, libamcl_curve_BLS48), Cint, (BIG_560_58, Cint), x, n)
end

function BIG_560_58_random(x, r)
    ccall((:BIG_560_58_random, libamcl_curve_BLS48), Cvoid, (BIG_560_58, Ptr{csprng}), x, r)
end

function BIG_560_58_randomnum(x, n, r)
    ccall((:BIG_560_58_randomnum, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, Ptr{csprng}), x, n, r)
end

function BIG_560_58_modmul(x, y, z, n)
    ccall((:BIG_560_58_modmul, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, BIG_560_58, BIG_560_58), x, y, z, n)
end

function BIG_560_58_moddiv(x, y, z, n)
    ccall((:BIG_560_58_moddiv, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, BIG_560_58, BIG_560_58), x, y, z, n)
end

function BIG_560_58_modsqr(x, y, n)
    ccall((:BIG_560_58_modsqr, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, BIG_560_58), x, y, n)
end

function BIG_560_58_modneg(x, y, n)
    ccall((:BIG_560_58_modneg, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, BIG_560_58), x, y, n)
end

function BIG_560_58_jacobi(x, y)
    ccall((:BIG_560_58_jacobi, libamcl_curve_BLS48), Cint, (BIG_560_58, BIG_560_58), x, y)
end

function BIG_560_58_invmodp(x, y, n)
    ccall((:BIG_560_58_invmodp, libamcl_curve_BLS48), Cvoid, (BIG_560_58, BIG_560_58, BIG_560_58), x, y, n)
end

function BIG_560_58_mod2m(x, m)
    ccall((:BIG_560_58_mod2m, libamcl_curve_BLS48), Cvoid, (BIG_560_58, Cint), x, m)
end

function BIG_560_58_dmod2m(x, m)
    ccall((:BIG_560_58_dmod2m, libamcl_curve_BLS48), Cvoid, (DBIG_560_58, Cint), x, m)
end

function muladd_560_58(x, y, c, r)
    ccall((:muladd_560_58, libamcl_curve_BLS48), Int64, (Int64, Int64, Int64, Ptr{Int64}), x, y, c, r)
end
# Julia wrapper for header: bls192_BLS24.h
# Automatically generated using Clang.jl


function BLS_BLS24_KEY_PAIR_GENERATE(RNG, S, W)
    ccall((:BLS_BLS24_KEY_PAIR_GENERATE, libamcl_bls_BLS24), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), RNG, S, W)
end

function BLS_BLS24_SIGN(SIG, M, S)
    ccall((:BLS_BLS24_SIGN, libamcl_bls_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, S)
end

function BLS_BLS24_VERIFY(SIG, M, W)
    ccall((:BLS_BLS24_VERIFY, libamcl_bls_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, W)
end

function BLS_BLS24_ADD_G1(R1, R2, R)
    ccall((:BLS_BLS24_ADD_G1, libamcl_bls_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function BLS_BLS24_ADD_G2(W1, W2, W)
    ccall((:BLS_BLS24_ADD_G2, libamcl_bls_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end

function BLS_BLS24_MAKE_SHARES(k, n, RNG, X, Y, SKI, SKO)
    ccall((:BLS_BLS24_MAKE_SHARES, libamcl_bls_BLS24), Cint, (Cint, Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, n, RNG, X, Y, SKI, SKO)
end

function BLS_BLS24_RECOVER_SECRET(k, X, Y, SK)
    ccall((:BLS_BLS24_RECOVER_SECRET, libamcl_bls_BLS24), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SK)
end

function BLS_BLS24_RECOVER_SIGNATURE(k, X, Y, SIG)
    ccall((:BLS_BLS24_RECOVER_SIGNATURE, libamcl_bls_BLS24), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SIG)
end
# Julia wrapper for header: bls256_BLS48.h
# Automatically generated using Clang.jl


function BLS_BLS48_KEY_PAIR_GENERATE(RNG, S, W)
    ccall((:BLS_BLS48_KEY_PAIR_GENERATE, libamcl_bls_BLS48), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), RNG, S, W)
end

function BLS_BLS48_SIGN(SIG, M, S)
    ccall((:BLS_BLS48_SIGN, libamcl_bls_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, S)
end

function BLS_BLS48_VERIFY(SIG, M, W)
    ccall((:BLS_BLS48_VERIFY, libamcl_bls_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, W)
end

function BLS_BLS48_ADD_G1(R1, R2, R)
    ccall((:BLS_BLS48_ADD_G1, libamcl_bls_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function BLS_BLS48_ADD_G2(W1, W2, W)
    ccall((:BLS_BLS48_ADD_G2, libamcl_bls_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end

function BLS_BLS48_MAKE_SHARES(k, n, RNG, X, Y, SKI, SKO)
    ccall((:BLS_BLS48_MAKE_SHARES, libamcl_bls_BLS48), Cint, (Cint, Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, n, RNG, X, Y, SKI, SKO)
end

function BLS_BLS48_RECOVER_SECRET(k, X, Y, SK)
    ccall((:BLS_BLS48_RECOVER_SECRET, libamcl_bls_BLS48), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SK)
end

function BLS_BLS48_RECOVER_SIGNATURE(k, X, Y, SIG)
    ccall((:BLS_BLS48_RECOVER_SIGNATURE, libamcl_bls_BLS48), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SIG)
end
# Julia wrapper for header: bls_BLS381.h
# Automatically generated using Clang.jl


function BLS_BLS381_KEY_PAIR_GENERATE(RNG, S, W)
    ccall((:BLS_BLS381_KEY_PAIR_GENERATE, libamcl_bls_BLS381), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), RNG, S, W)
end

function BLS_BLS381_SIGN(SIG, M, S)
    ccall((:BLS_BLS381_SIGN, libamcl_bls_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, S)
end

function BLS_BLS381_VERIFY(SIG, M, W)
    ccall((:BLS_BLS381_VERIFY, libamcl_bls_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, W)
end

function BLS_BLS381_ADD_G1(R1, R2, R)
    ccall((:BLS_BLS381_ADD_G1, libamcl_bls_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function BLS_BLS381_ADD_G2(W1, W2, W)
    ccall((:BLS_BLS381_ADD_G2, libamcl_bls_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end

function BLS_BLS381_MAKE_SHARES(k, n, RNG, X, Y, SKI, SKO)
    ccall((:BLS_BLS381_MAKE_SHARES, libamcl_bls_BLS381), Cint, (Cint, Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, n, RNG, X, Y, SKI, SKO)
end

function BLS_BLS381_RECOVER_SECRET(k, X, Y, SK)
    ccall((:BLS_BLS381_RECOVER_SECRET, libamcl_bls_BLS381), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SK)
end

function BLS_BLS381_RECOVER_SIGNATURE(k, X, Y, SIG)
    ccall((:BLS_BLS381_RECOVER_SIGNATURE, libamcl_bls_BLS381), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SIG)
end
# Julia wrapper for header: bls_BLS383.h
# Automatically generated using Clang.jl


function BLS_BLS383_KEY_PAIR_GENERATE(RNG, S, W)
    ccall((:BLS_BLS383_KEY_PAIR_GENERATE, libamcl_bls_BLS383), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), RNG, S, W)
end

function BLS_BLS383_SIGN(SIG, M, S)
    ccall((:BLS_BLS383_SIGN, libamcl_bls_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, S)
end

function BLS_BLS383_VERIFY(SIG, M, W)
    ccall((:BLS_BLS383_VERIFY, libamcl_bls_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, W)
end

function BLS_BLS383_ADD_G1(R1, R2, R)
    ccall((:BLS_BLS383_ADD_G1, libamcl_bls_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function BLS_BLS383_ADD_G2(W1, W2, W)
    ccall((:BLS_BLS383_ADD_G2, libamcl_bls_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end

function BLS_BLS383_MAKE_SHARES(k, n, RNG, X, Y, SKI, SKO)
    ccall((:BLS_BLS383_MAKE_SHARES, libamcl_bls_BLS383), Cint, (Cint, Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, n, RNG, X, Y, SKI, SKO)
end

function BLS_BLS383_RECOVER_SECRET(k, X, Y, SK)
    ccall((:BLS_BLS383_RECOVER_SECRET, libamcl_bls_BLS383), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SK)
end

function BLS_BLS383_RECOVER_SIGNATURE(k, X, Y, SIG)
    ccall((:BLS_BLS383_RECOVER_SIGNATURE, libamcl_bls_BLS383), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SIG)
end
# Julia wrapper for header: bls_BLS461.h
# Automatically generated using Clang.jl


function BLS_BLS461_KEY_PAIR_GENERATE(RNG, S, W)
    ccall((:BLS_BLS461_KEY_PAIR_GENERATE, libamcl_bls_BLS461), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), RNG, S, W)
end

function BLS_BLS461_SIGN(SIG, M, S)
    ccall((:BLS_BLS461_SIGN, libamcl_bls_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, S)
end

function BLS_BLS461_VERIFY(SIG, M, W)
    ccall((:BLS_BLS461_VERIFY, libamcl_bls_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, W)
end

function BLS_BLS461_ADD_G1(R1, R2, R)
    ccall((:BLS_BLS461_ADD_G1, libamcl_bls_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function BLS_BLS461_ADD_G2(W1, W2, W)
    ccall((:BLS_BLS461_ADD_G2, libamcl_bls_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end

function BLS_BLS461_MAKE_SHARES(k, n, RNG, X, Y, SKI, SKO)
    ccall((:BLS_BLS461_MAKE_SHARES, libamcl_bls_BLS461), Cint, (Cint, Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, n, RNG, X, Y, SKI, SKO)
end

function BLS_BLS461_RECOVER_SECRET(k, X, Y, SK)
    ccall((:BLS_BLS461_RECOVER_SECRET, libamcl_bls_BLS461), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SK)
end

function BLS_BLS461_RECOVER_SIGNATURE(k, X, Y, SIG)
    ccall((:BLS_BLS461_RECOVER_SIGNATURE, libamcl_bls_BLS461), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SIG)
end
# Julia wrapper for header: bls_BN254.h
# Automatically generated using Clang.jl


function BLS_BN254_KEY_PAIR_GENERATE(RNG, S, W)
    ccall((:BLS_BN254_KEY_PAIR_GENERATE, libamcl_bls_BN254), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), RNG, S, W)
end

function BLS_BN254_SIGN(SIG, M, S)
    ccall((:BLS_BN254_SIGN, libamcl_bls_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, S)
end

function BLS_BN254_VERIFY(SIG, M, W)
    ccall((:BLS_BN254_VERIFY, libamcl_bls_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, W)
end

function BLS_BN254_ADD_G1(R1, R2, R)
    ccall((:BLS_BN254_ADD_G1, libamcl_bls_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function BLS_BN254_ADD_G2(W1, W2, W)
    ccall((:BLS_BN254_ADD_G2, libamcl_bls_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end

function BLS_BN254_MAKE_SHARES(k, n, RNG, X, Y, SKI, SKO)
    ccall((:BLS_BN254_MAKE_SHARES, libamcl_bls_BN254), Cint, (Cint, Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, n, RNG, X, Y, SKI, SKO)
end

function BLS_BN254_RECOVER_SECRET(k, X, Y, SK)
    ccall((:BLS_BN254_RECOVER_SECRET, libamcl_bls_BN254), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SK)
end

function BLS_BN254_RECOVER_SIGNATURE(k, X, Y, SIG)
    ccall((:BLS_BN254_RECOVER_SIGNATURE, libamcl_bls_BN254), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SIG)
end
# Julia wrapper for header: bls_BN254CX.h
# Automatically generated using Clang.jl


function BLS_BN254CX_KEY_PAIR_GENERATE(RNG, S, W)
    ccall((:BLS_BN254CX_KEY_PAIR_GENERATE, libamcl_bls_BN254CX), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), RNG, S, W)
end

function BLS_BN254CX_SIGN(SIG, M, S)
    ccall((:BLS_BN254CX_SIGN, libamcl_bls_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, S)
end

function BLS_BN254CX_VERIFY(SIG, M, W)
    ccall((:BLS_BN254CX_VERIFY, libamcl_bls_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, W)
end

function BLS_BN254CX_ADD_G1(R1, R2, R)
    ccall((:BLS_BN254CX_ADD_G1, libamcl_bls_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function BLS_BN254CX_ADD_G2(W1, W2, W)
    ccall((:BLS_BN254CX_ADD_G2, libamcl_bls_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end

function BLS_BN254CX_MAKE_SHARES(k, n, RNG, X, Y, SKI, SKO)
    ccall((:BLS_BN254CX_MAKE_SHARES, libamcl_bls_BN254CX), Cint, (Cint, Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, n, RNG, X, Y, SKI, SKO)
end

function BLS_BN254CX_RECOVER_SECRET(k, X, Y, SK)
    ccall((:BLS_BN254CX_RECOVER_SECRET, libamcl_bls_BN254CX), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SK)
end

function BLS_BN254CX_RECOVER_SIGNATURE(k, X, Y, SIG)
    ccall((:BLS_BN254CX_RECOVER_SIGNATURE, libamcl_bls_BN254CX), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SIG)
end
# Julia wrapper for header: bls_FP256BN.h
# Automatically generated using Clang.jl


function BLS_FP256BN_KEY_PAIR_GENERATE(RNG, S, W)
    ccall((:BLS_FP256BN_KEY_PAIR_GENERATE, libamcl_bls_FP256BN), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), RNG, S, W)
end

function BLS_FP256BN_SIGN(SIG, M, S)
    ccall((:BLS_FP256BN_SIGN, libamcl_bls_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, S)
end

function BLS_FP256BN_VERIFY(SIG, M, W)
    ccall((:BLS_FP256BN_VERIFY, libamcl_bls_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, W)
end

function BLS_FP256BN_ADD_G1(R1, R2, R)
    ccall((:BLS_FP256BN_ADD_G1, libamcl_bls_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function BLS_FP256BN_ADD_G2(W1, W2, W)
    ccall((:BLS_FP256BN_ADD_G2, libamcl_bls_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end

function BLS_FP256BN_MAKE_SHARES(k, n, RNG, X, Y, SKI, SKO)
    ccall((:BLS_FP256BN_MAKE_SHARES, libamcl_bls_FP256BN), Cint, (Cint, Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, n, RNG, X, Y, SKI, SKO)
end

function BLS_FP256BN_RECOVER_SECRET(k, X, Y, SK)
    ccall((:BLS_FP256BN_RECOVER_SECRET, libamcl_bls_FP256BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SK)
end

function BLS_FP256BN_RECOVER_SIGNATURE(k, X, Y, SIG)
    ccall((:BLS_FP256BN_RECOVER_SIGNATURE, libamcl_bls_FP256BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SIG)
end
# Julia wrapper for header: bls_FP512BN.h
# Automatically generated using Clang.jl


function BLS_FP512BN_KEY_PAIR_GENERATE(RNG, S, W)
    ccall((:BLS_FP512BN_KEY_PAIR_GENERATE, libamcl_bls_FP512BN), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), RNG, S, W)
end

function BLS_FP512BN_SIGN(SIG, M, S)
    ccall((:BLS_FP512BN_SIGN, libamcl_bls_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, S)
end

function BLS_FP512BN_VERIFY(SIG, M, W)
    ccall((:BLS_FP512BN_VERIFY, libamcl_bls_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), SIG, M, W)
end

function BLS_FP512BN_ADD_G1(R1, R2, R)
    ccall((:BLS_FP512BN_ADD_G1, libamcl_bls_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function BLS_FP512BN_ADD_G2(W1, W2, W)
    ccall((:BLS_FP512BN_ADD_G2, libamcl_bls_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end

function BLS_FP512BN_MAKE_SHARES(k, n, RNG, X, Y, SKI, SKO)
    ccall((:BLS_FP512BN_MAKE_SHARES, libamcl_bls_FP512BN), Cint, (Cint, Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, n, RNG, X, Y, SKI, SKO)
end

function BLS_FP512BN_RECOVER_SECRET(k, X, Y, SK)
    ccall((:BLS_FP512BN_RECOVER_SECRET, libamcl_bls_FP512BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SK)
end

function BLS_FP512BN_RECOVER_SIGNATURE(k, X, Y, SIG)
    ccall((:BLS_FP512BN_RECOVER_SIGNATURE, libamcl_bls_FP512BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), k, X, Y, SIG)
end
# Julia wrapper for header: config_big_1024_58.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_256_56.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_336_60.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_384_56.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_384_58.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_416_60.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_448_58.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_464_60.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_480_56.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_512_56.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_512_60.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_528_60.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_big_560_58.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_ANSSI.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_BLS24.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_BLS381.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_BLS383.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_BLS461.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_BLS48.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_BN254.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_BN254CX.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_BRAINPOOL.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_C25519.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_C41417.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_ED25519.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_FP256BN.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_FP512BN.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_GOLDILOCKS.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_HIFIVE.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_NIST256.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_NIST384.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_NIST521.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_NUMS256E.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_NUMS256W.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_NUMS384E.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_NUMS384W.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_NUMS512E.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_NUMS512W.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_curve_SECP256K1.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_ff_2048.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_ff_3072.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_ff_4096.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_25519.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_256PME.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_256PMW.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_384PM.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_512PM.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_ANSSI.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_BLS24.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_BLS381.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_BLS383.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_BLS461.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_BLS48.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_BN254.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_BN254CX.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_BRAINPOOL.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_C41417.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_FP256BN.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_FP512BN.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_GOLDILOCKS.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_HIFIVE.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_NIST256.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_NIST384.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_NIST521.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_field_SECP256K1.h
# Automatically generated using Clang.jl

# Julia wrapper for header: config_test.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ecdh_ANSSI.h
# Automatically generated using Clang.jl


function ECP_ANSSI_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_ANSSI_KEY_PAIR_GENERATE, libamcl_curve_ANSSI), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_ANSSI_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_ANSSI_PUBLIC_KEY_VALIDATE, libamcl_curve_ANSSI), Cint, (Ptr{octet},), W)
end

function ECP_ANSSI_SVDP_DH(s, W, K)
    ccall((:ECP_ANSSI_SVDP_DH, libamcl_curve_ANSSI), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_ANSSI_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_ANSSI_ECIES_ENCRYPT, libamcl_curve_ANSSI), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_ANSSI_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_ANSSI_ECIES_DECRYPT, libamcl_curve_ANSSI), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_ANSSI_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_ANSSI_SP_DSA, libamcl_curve_ANSSI), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_ANSSI_VP_DSA(h, W, M, c, d)
    ccall((:ECP_ANSSI_VP_DSA, libamcl_curve_ANSSI), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_BLS24.h
# Automatically generated using Clang.jl


function ECP_BLS24_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_BLS24_KEY_PAIR_GENERATE, libamcl_curve_BLS24), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_BLS24_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_BLS24_PUBLIC_KEY_VALIDATE, libamcl_curve_BLS24), Cint, (Ptr{octet},), W)
end

function ECP_BLS24_SVDP_DH(s, W, K)
    ccall((:ECP_BLS24_SVDP_DH, libamcl_curve_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_BLS24_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_BLS24_ECIES_ENCRYPT, libamcl_curve_BLS24), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_BLS24_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_BLS24_ECIES_DECRYPT, libamcl_curve_BLS24), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_BLS24_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_BLS24_SP_DSA, libamcl_curve_BLS24), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_BLS24_VP_DSA(h, W, M, c, d)
    ccall((:ECP_BLS24_VP_DSA, libamcl_curve_BLS24), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_BLS381.h
# Automatically generated using Clang.jl


function ECP_BLS381_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_BLS381_KEY_PAIR_GENERATE, libamcl_curve_BLS381), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_BLS381_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_BLS381_PUBLIC_KEY_VALIDATE, libamcl_curve_BLS381), Cint, (Ptr{octet},), W)
end

function ECP_BLS381_SVDP_DH(s, W, K)
    ccall((:ECP_BLS381_SVDP_DH, libamcl_curve_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_BLS381_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_BLS381_ECIES_ENCRYPT, libamcl_curve_BLS381), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_BLS381_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_BLS381_ECIES_DECRYPT, libamcl_curve_BLS381), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_BLS381_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_BLS381_SP_DSA, libamcl_curve_BLS381), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_BLS381_VP_DSA(h, W, M, c, d)
    ccall((:ECP_BLS381_VP_DSA, libamcl_curve_BLS381), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_BLS383.h
# Automatically generated using Clang.jl


function ECP_BLS383_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_BLS383_KEY_PAIR_GENERATE, libamcl_curve_BLS383), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_BLS383_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_BLS383_PUBLIC_KEY_VALIDATE, libamcl_curve_BLS383), Cint, (Ptr{octet},), W)
end

function ECP_BLS383_SVDP_DH(s, W, K)
    ccall((:ECP_BLS383_SVDP_DH, libamcl_curve_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_BLS383_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_BLS383_ECIES_ENCRYPT, libamcl_curve_BLS383), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_BLS383_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_BLS383_ECIES_DECRYPT, libamcl_curve_BLS383), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_BLS383_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_BLS383_SP_DSA, libamcl_curve_BLS383), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_BLS383_VP_DSA(h, W, M, c, d)
    ccall((:ECP_BLS383_VP_DSA, libamcl_curve_BLS383), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_BLS461.h
# Automatically generated using Clang.jl


function ECP_BLS461_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_BLS461_KEY_PAIR_GENERATE, libamcl_curve_BLS461), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_BLS461_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_BLS461_PUBLIC_KEY_VALIDATE, libamcl_curve_BLS461), Cint, (Ptr{octet},), W)
end

function ECP_BLS461_SVDP_DH(s, W, K)
    ccall((:ECP_BLS461_SVDP_DH, libamcl_curve_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_BLS461_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_BLS461_ECIES_ENCRYPT, libamcl_curve_BLS461), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_BLS461_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_BLS461_ECIES_DECRYPT, libamcl_curve_BLS461), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_BLS461_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_BLS461_SP_DSA, libamcl_curve_BLS461), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_BLS461_VP_DSA(h, W, M, c, d)
    ccall((:ECP_BLS461_VP_DSA, libamcl_curve_BLS461), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_BLS48.h
# Automatically generated using Clang.jl


function ECP_BLS48_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_BLS48_KEY_PAIR_GENERATE, libamcl_curve_BLS48), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_BLS48_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_BLS48_PUBLIC_KEY_VALIDATE, libamcl_curve_BLS48), Cint, (Ptr{octet},), W)
end

function ECP_BLS48_SVDP_DH(s, W, K)
    ccall((:ECP_BLS48_SVDP_DH, libamcl_curve_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_BLS48_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_BLS48_ECIES_ENCRYPT, libamcl_curve_BLS48), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_BLS48_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_BLS48_ECIES_DECRYPT, libamcl_curve_BLS48), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_BLS48_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_BLS48_SP_DSA, libamcl_curve_BLS48), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_BLS48_VP_DSA(h, W, M, c, d)
    ccall((:ECP_BLS48_VP_DSA, libamcl_curve_BLS48), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_BN254.h
# Automatically generated using Clang.jl


function ECP_BN254_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_BN254_KEY_PAIR_GENERATE, libamcl_curve_BN254), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_BN254_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_BN254_PUBLIC_KEY_VALIDATE, libamcl_curve_BN254), Cint, (Ptr{octet},), W)
end

function ECP_BN254_SVDP_DH(s, W, K)
    ccall((:ECP_BN254_SVDP_DH, libamcl_curve_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_BN254_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_BN254_ECIES_ENCRYPT, libamcl_curve_BN254), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_BN254_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_BN254_ECIES_DECRYPT, libamcl_curve_BN254), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_BN254_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_BN254_SP_DSA, libamcl_curve_BN254), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_BN254_VP_DSA(h, W, M, c, d)
    ccall((:ECP_BN254_VP_DSA, libamcl_curve_BN254), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_BN254CX.h
# Automatically generated using Clang.jl


function ECP_BN254CX_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_BN254CX_KEY_PAIR_GENERATE, libamcl_curve_BN254CX), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_BN254CX_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_BN254CX_PUBLIC_KEY_VALIDATE, libamcl_curve_BN254CX), Cint, (Ptr{octet},), W)
end

function ECP_BN254CX_SVDP_DH(s, W, K)
    ccall((:ECP_BN254CX_SVDP_DH, libamcl_curve_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_BN254CX_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_BN254CX_ECIES_ENCRYPT, libamcl_curve_BN254CX), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_BN254CX_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_BN254CX_ECIES_DECRYPT, libamcl_curve_BN254CX), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_BN254CX_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_BN254CX_SP_DSA, libamcl_curve_BN254CX), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_BN254CX_VP_DSA(h, W, M, c, d)
    ccall((:ECP_BN254CX_VP_DSA, libamcl_curve_BN254CX), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_BRAINPOOL.h
# Automatically generated using Clang.jl


function ECP_BRAINPOOL_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_BRAINPOOL_KEY_PAIR_GENERATE, libamcl_curve_BRAINPOOL), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_BRAINPOOL_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_BRAINPOOL_PUBLIC_KEY_VALIDATE, libamcl_curve_BRAINPOOL), Cint, (Ptr{octet},), W)
end

function ECP_BRAINPOOL_SVDP_DH(s, W, K)
    ccall((:ECP_BRAINPOOL_SVDP_DH, libamcl_curve_BRAINPOOL), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_BRAINPOOL_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_BRAINPOOL_ECIES_ENCRYPT, libamcl_curve_BRAINPOOL), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_BRAINPOOL_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_BRAINPOOL_ECIES_DECRYPT, libamcl_curve_BRAINPOOL), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_BRAINPOOL_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_BRAINPOOL_SP_DSA, libamcl_curve_BRAINPOOL), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_BRAINPOOL_VP_DSA(h, W, M, c, d)
    ccall((:ECP_BRAINPOOL_VP_DSA, libamcl_curve_BRAINPOOL), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_C25519.h
# Automatically generated using Clang.jl


function ECP_C25519_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_C25519_KEY_PAIR_GENERATE, libamcl_curve_C25519), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_C25519_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_C25519_PUBLIC_KEY_VALIDATE, libamcl_curve_C25519), Cint, (Ptr{octet},), W)
end

function ECP_C25519_SVDP_DH(s, W, K)
    ccall((:ECP_C25519_SVDP_DH, libamcl_curve_C25519), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_C25519_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_C25519_ECIES_ENCRYPT, libamcl_curve_C25519), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_C25519_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_C25519_ECIES_DECRYPT, libamcl_curve_C25519), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_C25519_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_C25519_SP_DSA, libamcl_curve_C25519), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_C25519_VP_DSA(h, W, M, c, d)
    ccall((:ECP_C25519_VP_DSA, libamcl_curve_C25519), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_C41417.h
# Automatically generated using Clang.jl


function ECP_C41417_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_C41417_KEY_PAIR_GENERATE, libamcl_curve_C41417), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_C41417_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_C41417_PUBLIC_KEY_VALIDATE, libamcl_curve_C41417), Cint, (Ptr{octet},), W)
end

function ECP_C41417_SVDP_DH(s, W, K)
    ccall((:ECP_C41417_SVDP_DH, libamcl_curve_C41417), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_C41417_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_C41417_ECIES_ENCRYPT, libamcl_curve_C41417), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_C41417_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_C41417_ECIES_DECRYPT, libamcl_curve_C41417), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_C41417_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_C41417_SP_DSA, libamcl_curve_C41417), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_C41417_VP_DSA(h, W, M, c, d)
    ccall((:ECP_C41417_VP_DSA, libamcl_curve_C41417), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_ED25519.h
# Automatically generated using Clang.jl


function ECP_ED25519_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_ED25519_KEY_PAIR_GENERATE, libamcl_curve_ED25519), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_ED25519_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_ED25519_PUBLIC_KEY_VALIDATE, libamcl_curve_ED25519), Cint, (Ptr{octet},), W)
end

function ECP_ED25519_SVDP_DH(s, W, K)
    ccall((:ECP_ED25519_SVDP_DH, libamcl_curve_ED25519), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_ED25519_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_ED25519_ECIES_ENCRYPT, libamcl_curve_ED25519), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_ED25519_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_ED25519_ECIES_DECRYPT, libamcl_curve_ED25519), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_ED25519_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_ED25519_SP_DSA, libamcl_curve_ED25519), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_ED25519_VP_DSA(h, W, M, c, d)
    ccall((:ECP_ED25519_VP_DSA, libamcl_curve_ED25519), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_FP256BN.h
# Automatically generated using Clang.jl


function ECP_FP256BN_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_FP256BN_KEY_PAIR_GENERATE, libamcl_curve_FP256BN), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_FP256BN_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_FP256BN_PUBLIC_KEY_VALIDATE, libamcl_curve_FP256BN), Cint, (Ptr{octet},), W)
end

function ECP_FP256BN_SVDP_DH(s, W, K)
    ccall((:ECP_FP256BN_SVDP_DH, libamcl_curve_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_FP256BN_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_FP256BN_ECIES_ENCRYPT, libamcl_curve_FP256BN), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_FP256BN_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_FP256BN_ECIES_DECRYPT, libamcl_curve_FP256BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_FP256BN_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_FP256BN_SP_DSA, libamcl_curve_FP256BN), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_FP256BN_VP_DSA(h, W, M, c, d)
    ccall((:ECP_FP256BN_VP_DSA, libamcl_curve_FP256BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_FP512BN.h
# Automatically generated using Clang.jl


function ECP_FP512BN_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_FP512BN_KEY_PAIR_GENERATE, libamcl_curve_FP512BN), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_FP512BN_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_FP512BN_PUBLIC_KEY_VALIDATE, libamcl_curve_FP512BN), Cint, (Ptr{octet},), W)
end

function ECP_FP512BN_SVDP_DH(s, W, K)
    ccall((:ECP_FP512BN_SVDP_DH, libamcl_curve_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_FP512BN_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_FP512BN_ECIES_ENCRYPT, libamcl_curve_FP512BN), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_FP512BN_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_FP512BN_ECIES_DECRYPT, libamcl_curve_FP512BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_FP512BN_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_FP512BN_SP_DSA, libamcl_curve_FP512BN), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_FP512BN_VP_DSA(h, W, M, c, d)
    ccall((:ECP_FP512BN_VP_DSA, libamcl_curve_FP512BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_GOLDILOCKS.h
# Automatically generated using Clang.jl


function ECP_GOLDILOCKS_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_GOLDILOCKS_KEY_PAIR_GENERATE, libamcl_curve_GOLDILOCKS), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_GOLDILOCKS_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_GOLDILOCKS_PUBLIC_KEY_VALIDATE, libamcl_curve_GOLDILOCKS), Cint, (Ptr{octet},), W)
end

function ECP_GOLDILOCKS_SVDP_DH(s, W, K)
    ccall((:ECP_GOLDILOCKS_SVDP_DH, libamcl_curve_GOLDILOCKS), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_GOLDILOCKS_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_GOLDILOCKS_ECIES_ENCRYPT, libamcl_curve_GOLDILOCKS), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_GOLDILOCKS_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_GOLDILOCKS_ECIES_DECRYPT, libamcl_curve_GOLDILOCKS), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_GOLDILOCKS_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_GOLDILOCKS_SP_DSA, libamcl_curve_GOLDILOCKS), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_GOLDILOCKS_VP_DSA(h, W, M, c, d)
    ccall((:ECP_GOLDILOCKS_VP_DSA, libamcl_curve_GOLDILOCKS), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_HIFIVE.h
# Automatically generated using Clang.jl


function ECP_HIFIVE_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_HIFIVE_KEY_PAIR_GENERATE, libamcl_curve_HIFIVE), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_HIFIVE_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_HIFIVE_PUBLIC_KEY_VALIDATE, libamcl_curve_HIFIVE), Cint, (Ptr{octet},), W)
end

function ECP_HIFIVE_SVDP_DH(s, W, K)
    ccall((:ECP_HIFIVE_SVDP_DH, libamcl_curve_HIFIVE), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_HIFIVE_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_HIFIVE_ECIES_ENCRYPT, libamcl_curve_HIFIVE), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_HIFIVE_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_HIFIVE_ECIES_DECRYPT, libamcl_curve_HIFIVE), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_HIFIVE_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_HIFIVE_SP_DSA, libamcl_curve_HIFIVE), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_HIFIVE_VP_DSA(h, W, M, c, d)
    ccall((:ECP_HIFIVE_VP_DSA, libamcl_curve_HIFIVE), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_NIST256.h
# Automatically generated using Clang.jl


function ECP_NIST256_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_NIST256_KEY_PAIR_GENERATE, libamcl_curve_NIST256), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_NIST256_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_NIST256_PUBLIC_KEY_VALIDATE, libamcl_curve_NIST256), Cint, (Ptr{octet},), W)
end

function ECP_NIST256_SVDP_DH(s, W, K)
    ccall((:ECP_NIST256_SVDP_DH, libamcl_curve_NIST256), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_NIST256_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_NIST256_ECIES_ENCRYPT, libamcl_curve_NIST256), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_NIST256_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_NIST256_ECIES_DECRYPT, libamcl_curve_NIST256), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_NIST256_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_NIST256_SP_DSA, libamcl_curve_NIST256), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_NIST256_VP_DSA(h, W, M, c, d)
    ccall((:ECP_NIST256_VP_DSA, libamcl_curve_NIST256), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_NIST384.h
# Automatically generated using Clang.jl


function ECP_NIST384_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_NIST384_KEY_PAIR_GENERATE, libamcl_curve_NIST384), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_NIST384_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_NIST384_PUBLIC_KEY_VALIDATE, libamcl_curve_NIST384), Cint, (Ptr{octet},), W)
end

function ECP_NIST384_SVDP_DH(s, W, K)
    ccall((:ECP_NIST384_SVDP_DH, libamcl_curve_NIST384), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_NIST384_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_NIST384_ECIES_ENCRYPT, libamcl_curve_NIST384), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_NIST384_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_NIST384_ECIES_DECRYPT, libamcl_curve_NIST384), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_NIST384_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_NIST384_SP_DSA, libamcl_curve_NIST384), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_NIST384_VP_DSA(h, W, M, c, d)
    ccall((:ECP_NIST384_VP_DSA, libamcl_curve_NIST384), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_NIST521.h
# Automatically generated using Clang.jl


function ECP_NIST521_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_NIST521_KEY_PAIR_GENERATE, libamcl_curve_NIST521), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_NIST521_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_NIST521_PUBLIC_KEY_VALIDATE, libamcl_curve_NIST521), Cint, (Ptr{octet},), W)
end

function ECP_NIST521_SVDP_DH(s, W, K)
    ccall((:ECP_NIST521_SVDP_DH, libamcl_curve_NIST521), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_NIST521_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_NIST521_ECIES_ENCRYPT, libamcl_curve_NIST521), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_NIST521_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_NIST521_ECIES_DECRYPT, libamcl_curve_NIST521), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_NIST521_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_NIST521_SP_DSA, libamcl_curve_NIST521), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_NIST521_VP_DSA(h, W, M, c, d)
    ccall((:ECP_NIST521_VP_DSA, libamcl_curve_NIST521), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_NUMS256E.h
# Automatically generated using Clang.jl


function ECP_NUMS256E_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_NUMS256E_KEY_PAIR_GENERATE, libamcl_curve_NUMS256E), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_NUMS256E_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_NUMS256E_PUBLIC_KEY_VALIDATE, libamcl_curve_NUMS256E), Cint, (Ptr{octet},), W)
end

function ECP_NUMS256E_SVDP_DH(s, W, K)
    ccall((:ECP_NUMS256E_SVDP_DH, libamcl_curve_NUMS256E), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_NUMS256E_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_NUMS256E_ECIES_ENCRYPT, libamcl_curve_NUMS256E), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_NUMS256E_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_NUMS256E_ECIES_DECRYPT, libamcl_curve_NUMS256E), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_NUMS256E_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_NUMS256E_SP_DSA, libamcl_curve_NUMS256E), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_NUMS256E_VP_DSA(h, W, M, c, d)
    ccall((:ECP_NUMS256E_VP_DSA, libamcl_curve_NUMS256E), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_NUMS256W.h
# Automatically generated using Clang.jl


function ECP_NUMS256W_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_NUMS256W_KEY_PAIR_GENERATE, libamcl_curve_NUMS256W), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_NUMS256W_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_NUMS256W_PUBLIC_KEY_VALIDATE, libamcl_curve_NUMS256W), Cint, (Ptr{octet},), W)
end

function ECP_NUMS256W_SVDP_DH(s, W, K)
    ccall((:ECP_NUMS256W_SVDP_DH, libamcl_curve_NUMS256W), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_NUMS256W_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_NUMS256W_ECIES_ENCRYPT, libamcl_curve_NUMS256W), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_NUMS256W_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_NUMS256W_ECIES_DECRYPT, libamcl_curve_NUMS256W), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_NUMS256W_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_NUMS256W_SP_DSA, libamcl_curve_NUMS256W), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_NUMS256W_VP_DSA(h, W, M, c, d)
    ccall((:ECP_NUMS256W_VP_DSA, libamcl_curve_NUMS256W), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_NUMS384E.h
# Automatically generated using Clang.jl


function ECP_NUMS384E_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_NUMS384E_KEY_PAIR_GENERATE, libamcl_curve_NUMS384E), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_NUMS384E_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_NUMS384E_PUBLIC_KEY_VALIDATE, libamcl_curve_NUMS384E), Cint, (Ptr{octet},), W)
end

function ECP_NUMS384E_SVDP_DH(s, W, K)
    ccall((:ECP_NUMS384E_SVDP_DH, libamcl_curve_NUMS384E), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_NUMS384E_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_NUMS384E_ECIES_ENCRYPT, libamcl_curve_NUMS384E), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_NUMS384E_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_NUMS384E_ECIES_DECRYPT, libamcl_curve_NUMS384E), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_NUMS384E_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_NUMS384E_SP_DSA, libamcl_curve_NUMS384E), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_NUMS384E_VP_DSA(h, W, M, c, d)
    ccall((:ECP_NUMS384E_VP_DSA, libamcl_curve_NUMS384E), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_NUMS384W.h
# Automatically generated using Clang.jl


function ECP_NUMS384W_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_NUMS384W_KEY_PAIR_GENERATE, libamcl_curve_NUMS384W), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_NUMS384W_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_NUMS384W_PUBLIC_KEY_VALIDATE, libamcl_curve_NUMS384W), Cint, (Ptr{octet},), W)
end

function ECP_NUMS384W_SVDP_DH(s, W, K)
    ccall((:ECP_NUMS384W_SVDP_DH, libamcl_curve_NUMS384W), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_NUMS384W_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_NUMS384W_ECIES_ENCRYPT, libamcl_curve_NUMS384W), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_NUMS384W_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_NUMS384W_ECIES_DECRYPT, libamcl_curve_NUMS384W), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_NUMS384W_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_NUMS384W_SP_DSA, libamcl_curve_NUMS384W), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_NUMS384W_VP_DSA(h, W, M, c, d)
    ccall((:ECP_NUMS384W_VP_DSA, libamcl_curve_NUMS384W), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_NUMS512E.h
# Automatically generated using Clang.jl


function ECP_NUMS512E_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_NUMS512E_KEY_PAIR_GENERATE, libamcl_curve_NUMS512E), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_NUMS512E_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_NUMS512E_PUBLIC_KEY_VALIDATE, libamcl_curve_NUMS512E), Cint, (Ptr{octet},), W)
end

function ECP_NUMS512E_SVDP_DH(s, W, K)
    ccall((:ECP_NUMS512E_SVDP_DH, libamcl_curve_NUMS512E), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_NUMS512E_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_NUMS512E_ECIES_ENCRYPT, libamcl_curve_NUMS512E), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_NUMS512E_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_NUMS512E_ECIES_DECRYPT, libamcl_curve_NUMS512E), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_NUMS512E_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_NUMS512E_SP_DSA, libamcl_curve_NUMS512E), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_NUMS512E_VP_DSA(h, W, M, c, d)
    ccall((:ECP_NUMS512E_VP_DSA, libamcl_curve_NUMS512E), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_NUMS512W.h
# Automatically generated using Clang.jl


function ECP_NUMS512W_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_NUMS512W_KEY_PAIR_GENERATE, libamcl_curve_NUMS512W), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_NUMS512W_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_NUMS512W_PUBLIC_KEY_VALIDATE, libamcl_curve_NUMS512W), Cint, (Ptr{octet},), W)
end

function ECP_NUMS512W_SVDP_DH(s, W, K)
    ccall((:ECP_NUMS512W_SVDP_DH, libamcl_curve_NUMS512W), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_NUMS512W_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_NUMS512W_ECIES_ENCRYPT, libamcl_curve_NUMS512W), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_NUMS512W_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_NUMS512W_ECIES_DECRYPT, libamcl_curve_NUMS512W), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_NUMS512W_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_NUMS512W_SP_DSA, libamcl_curve_NUMS512W), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_NUMS512W_VP_DSA(h, W, M, c, d)
    ccall((:ECP_NUMS512W_VP_DSA, libamcl_curve_NUMS512W), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_SECP256K1.h
# Automatically generated using Clang.jl


function ECP_SECP256K1_KEY_PAIR_GENERATE(R, s, W)
    ccall((:ECP_SECP256K1_KEY_PAIR_GENERATE, libamcl_curve_SECP256K1), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, s, W)
end

function ECP_SECP256K1_PUBLIC_KEY_VALIDATE(W)
    ccall((:ECP_SECP256K1_PUBLIC_KEY_VALIDATE, libamcl_curve_SECP256K1), Cint, (Ptr{octet},), W)
end

function ECP_SECP256K1_SVDP_DH(s, W, K)
    ccall((:ECP_SECP256K1_SVDP_DH, libamcl_curve_SECP256K1), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), s, W, K)
end

function ECP_SECP256K1_ECIES_ENCRYPT(h, P1, P2, R, W, M, len, V, C, T)
    ccall((:ECP_SECP256K1_ECIES_ENCRYPT, libamcl_curve_SECP256K1), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, R, W, M, len, V, C, T)
end

function ECP_SECP256K1_ECIES_DECRYPT(h, P1, P2, V, C, T, U, M)
    ccall((:ECP_SECP256K1_ECIES_DECRYPT, libamcl_curve_SECP256K1), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, P1, P2, V, C, T, U, M)
end

function ECP_SECP256K1_SP_DSA(h, R, k, s, M, c, d)
    ccall((:ECP_SECP256K1_SP_DSA, libamcl_curve_SECP256K1), Cint, (Cint, Ptr{csprng}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, R, k, s, M, c, d)
end

function ECP_SECP256K1_VP_DSA(h, W, M, c, d)
    ccall((:ECP_SECP256K1_VP_DSA, libamcl_curve_SECP256K1), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, W, M, c, d)
end
# Julia wrapper for header: ecdh_support.h
# Automatically generated using Clang.jl


function ehashit(sha, p, n, x, w, pad)
    ccall((:ehashit, libamcl_core), Cvoid, (Cint, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Cint), sha, p, n, x, w, pad)
end

function HASH(h, I, O)
    ccall((:HASH, libamcl_core), Cvoid, (Cint, Ptr{octet}, Ptr{octet}), h, I, O)
end

function HMAC(h, M, K, len, tag)
    ccall((:HMAC, libamcl_core), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, M, K, len, tag)
end

function KDF2(h, Z, P, len, K)
    ccall((:KDF2, libamcl_core), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, Z, P, len, K)
end

function PBKDF2(h, P, S, rep, len, K)
    ccall((:PBKDF2, libamcl_core), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Cint, Cint, Ptr{octet}), h, P, S, rep, len, K)
end

function AES_CBC_IV0_ENCRYPT(K, P, C)
    ccall((:AES_CBC_IV0_ENCRYPT, libamcl_core), Cvoid, (Ptr{octet}, Ptr{octet}, Ptr{octet}), K, P, C)
end

function AES_CBC_IV0_DECRYPT(K, C, P)
    ccall((:AES_CBC_IV0_DECRYPT, libamcl_core), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), K, C, P)
end
# Julia wrapper for header: ecp2_BLS381.h
# Automatically generated using Clang.jl


function ECP2_BLS381_isinf(P)
    ccall((:ECP2_BLS381_isinf, libamcl_pairing_BLS381), Cint, (Ptr{ECP2_BLS381},), P)
end

function ECP2_BLS381_copy(P, Q)
    ccall((:ECP2_BLS381_copy, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381}, Ptr{ECP2_BLS381}), P, Q)
end

function ECP2_BLS381_inf(P)
    ccall((:ECP2_BLS381_inf, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381},), P)
end

function ECP2_BLS381_equals(P, Q)
    ccall((:ECP2_BLS381_equals, libamcl_pairing_BLS381), Cint, (Ptr{ECP2_BLS381}, Ptr{ECP2_BLS381}), P, Q)
end

function ECP2_BLS381_affine(P)
    ccall((:ECP2_BLS381_affine, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381},), P)
end

function ECP2_BLS381_get(x, y, P)
    ccall((:ECP2_BLS381_get, libamcl_pairing_BLS381), Cint, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}, Ptr{ECP2_BLS381}), x, y, P)
end

function ECP2_BLS381_output(P)
    ccall((:ECP2_BLS381_output, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381},), P)
end

function ECP2_BLS381_outputxyz(P)
    ccall((:ECP2_BLS381_outputxyz, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381},), P)
end

function ECP2_BLS381_toOctet(S, P)
    ccall((:ECP2_BLS381_toOctet, libamcl_pairing_BLS381), Cvoid, (Ptr{octet}, Ptr{ECP2_BLS381}), S, P)
end

function ECP2_BLS381_fromOctet(P, S)
    ccall((:ECP2_BLS381_fromOctet, libamcl_pairing_BLS381), Cint, (Ptr{ECP2_BLS381}, Ptr{octet}), P, S)
end

function ECP2_BLS381_rhs(r, x)
    ccall((:ECP2_BLS381_rhs, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), r, x)
end

function ECP2_BLS381_set(P, x, y)
    ccall((:ECP2_BLS381_set, libamcl_pairing_BLS381), Cint, (Ptr{ECP2_BLS381}, Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), P, x, y)
end

function ECP2_BLS381_setx(P, x)
    ccall((:ECP2_BLS381_setx, libamcl_pairing_BLS381), Cint, (Ptr{ECP2_BLS381}, Ptr{FP2_BLS381}), P, x)
end

function ECP2_BLS381_neg(P)
    ccall((:ECP2_BLS381_neg, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381},), P)
end

function ECP2_BLS381_dbl(P)
    ccall((:ECP2_BLS381_dbl, libamcl_pairing_BLS381), Cint, (Ptr{ECP2_BLS381},), P)
end

function ECP2_BLS381_add(P, Q)
    ccall((:ECP2_BLS381_add, libamcl_pairing_BLS381), Cint, (Ptr{ECP2_BLS381}, Ptr{ECP2_BLS381}), P, Q)
end

function ECP2_BLS381_sub(P, Q)
    ccall((:ECP2_BLS381_sub, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381}, Ptr{ECP2_BLS381}), P, Q)
end

function ECP2_BLS381_mul(P, b)
    ccall((:ECP2_BLS381_mul, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381}, BIG_384_58), P, b)
end

function ECP2_BLS381_frob(P, f)
    ccall((:ECP2_BLS381_frob, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381}, Ptr{FP2_BLS381}), P, f)
end

function ECP2_BLS381_mul4(P, Q, b)
    ccall((:ECP2_BLS381_mul4, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381}, Ptr{ECP2_BLS381}, Ptr{BIG_384_58}), P, Q, b)
end

function ECP2_BLS381_mapit(P, w)
    ccall((:ECP2_BLS381_mapit, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381}, Ptr{octet}), P, w)
end

function ECP2_BLS381_generator(G)
    ccall((:ECP2_BLS381_generator, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381},), G)
end
# Julia wrapper for header: ecp2_BLS383.h
# Automatically generated using Clang.jl


function ECP2_BLS383_isinf(P)
    ccall((:ECP2_BLS383_isinf, libamcl_pairing_BLS383), Cint, (Ptr{ECP2_BLS383},), P)
end

function ECP2_BLS383_copy(P, Q)
    ccall((:ECP2_BLS383_copy, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383}, Ptr{ECP2_BLS383}), P, Q)
end

function ECP2_BLS383_inf(P)
    ccall((:ECP2_BLS383_inf, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383},), P)
end

function ECP2_BLS383_equals(P, Q)
    ccall((:ECP2_BLS383_equals, libamcl_pairing_BLS383), Cint, (Ptr{ECP2_BLS383}, Ptr{ECP2_BLS383}), P, Q)
end

function ECP2_BLS383_affine(P)
    ccall((:ECP2_BLS383_affine, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383},), P)
end

function ECP2_BLS383_get(x, y, P)
    ccall((:ECP2_BLS383_get, libamcl_pairing_BLS383), Cint, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}, Ptr{ECP2_BLS383}), x, y, P)
end

function ECP2_BLS383_output(P)
    ccall((:ECP2_BLS383_output, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383},), P)
end

function ECP2_BLS383_outputxyz(P)
    ccall((:ECP2_BLS383_outputxyz, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383},), P)
end

function ECP2_BLS383_toOctet(S, P)
    ccall((:ECP2_BLS383_toOctet, libamcl_pairing_BLS383), Cvoid, (Ptr{octet}, Ptr{ECP2_BLS383}), S, P)
end

function ECP2_BLS383_fromOctet(P, S)
    ccall((:ECP2_BLS383_fromOctet, libamcl_pairing_BLS383), Cint, (Ptr{ECP2_BLS383}, Ptr{octet}), P, S)
end

function ECP2_BLS383_rhs(r, x)
    ccall((:ECP2_BLS383_rhs, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), r, x)
end

function ECP2_BLS383_set(P, x, y)
    ccall((:ECP2_BLS383_set, libamcl_pairing_BLS383), Cint, (Ptr{ECP2_BLS383}, Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), P, x, y)
end

function ECP2_BLS383_setx(P, x)
    ccall((:ECP2_BLS383_setx, libamcl_pairing_BLS383), Cint, (Ptr{ECP2_BLS383}, Ptr{FP2_BLS383}), P, x)
end

function ECP2_BLS383_neg(P)
    ccall((:ECP2_BLS383_neg, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383},), P)
end

function ECP2_BLS383_dbl(P)
    ccall((:ECP2_BLS383_dbl, libamcl_pairing_BLS383), Cint, (Ptr{ECP2_BLS383},), P)
end

function ECP2_BLS383_add(P, Q)
    ccall((:ECP2_BLS383_add, libamcl_pairing_BLS383), Cint, (Ptr{ECP2_BLS383}, Ptr{ECP2_BLS383}), P, Q)
end

function ECP2_BLS383_sub(P, Q)
    ccall((:ECP2_BLS383_sub, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383}, Ptr{ECP2_BLS383}), P, Q)
end

function ECP2_BLS383_mul(P, b)
    ccall((:ECP2_BLS383_mul, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383}, BIG_384_58), P, b)
end

function ECP2_BLS383_frob(P, f)
    ccall((:ECP2_BLS383_frob, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383}, Ptr{FP2_BLS383}), P, f)
end

function ECP2_BLS383_mul4(P, Q, b)
    ccall((:ECP2_BLS383_mul4, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383}, Ptr{ECP2_BLS383}, Ptr{BIG_384_58}), P, Q, b)
end

function ECP2_BLS383_mapit(P, w)
    ccall((:ECP2_BLS383_mapit, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383}, Ptr{octet}), P, w)
end

function ECP2_BLS383_generator(G)
    ccall((:ECP2_BLS383_generator, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383},), G)
end
# Julia wrapper for header: ecp2_BLS461.h
# Automatically generated using Clang.jl


function ECP2_BLS461_isinf(P)
    ccall((:ECP2_BLS461_isinf, libamcl_pairing_BLS461), Cint, (Ptr{ECP2_BLS461},), P)
end

function ECP2_BLS461_copy(P, Q)
    ccall((:ECP2_BLS461_copy, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461}, Ptr{ECP2_BLS461}), P, Q)
end

function ECP2_BLS461_inf(P)
    ccall((:ECP2_BLS461_inf, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461},), P)
end

function ECP2_BLS461_equals(P, Q)
    ccall((:ECP2_BLS461_equals, libamcl_pairing_BLS461), Cint, (Ptr{ECP2_BLS461}, Ptr{ECP2_BLS461}), P, Q)
end

function ECP2_BLS461_affine(P)
    ccall((:ECP2_BLS461_affine, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461},), P)
end

function ECP2_BLS461_get(x, y, P)
    ccall((:ECP2_BLS461_get, libamcl_pairing_BLS461), Cint, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}, Ptr{ECP2_BLS461}), x, y, P)
end

function ECP2_BLS461_output(P)
    ccall((:ECP2_BLS461_output, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461},), P)
end

function ECP2_BLS461_outputxyz(P)
    ccall((:ECP2_BLS461_outputxyz, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461},), P)
end

function ECP2_BLS461_toOctet(S, P)
    ccall((:ECP2_BLS461_toOctet, libamcl_pairing_BLS461), Cvoid, (Ptr{octet}, Ptr{ECP2_BLS461}), S, P)
end

function ECP2_BLS461_fromOctet(P, S)
    ccall((:ECP2_BLS461_fromOctet, libamcl_pairing_BLS461), Cint, (Ptr{ECP2_BLS461}, Ptr{octet}), P, S)
end

function ECP2_BLS461_rhs(r, x)
    ccall((:ECP2_BLS461_rhs, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), r, x)
end

function ECP2_BLS461_set(P, x, y)
    ccall((:ECP2_BLS461_set, libamcl_pairing_BLS461), Cint, (Ptr{ECP2_BLS461}, Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), P, x, y)
end

function ECP2_BLS461_setx(P, x)
    ccall((:ECP2_BLS461_setx, libamcl_pairing_BLS461), Cint, (Ptr{ECP2_BLS461}, Ptr{FP2_BLS461}), P, x)
end

function ECP2_BLS461_neg(P)
    ccall((:ECP2_BLS461_neg, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461},), P)
end

function ECP2_BLS461_dbl(P)
    ccall((:ECP2_BLS461_dbl, libamcl_pairing_BLS461), Cint, (Ptr{ECP2_BLS461},), P)
end

function ECP2_BLS461_add(P, Q)
    ccall((:ECP2_BLS461_add, libamcl_pairing_BLS461), Cint, (Ptr{ECP2_BLS461}, Ptr{ECP2_BLS461}), P, Q)
end

function ECP2_BLS461_sub(P, Q)
    ccall((:ECP2_BLS461_sub, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461}, Ptr{ECP2_BLS461}), P, Q)
end

function ECP2_BLS461_mul(P, b)
    ccall((:ECP2_BLS461_mul, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461}, BIG_464_60), P, b)
end

function ECP2_BLS461_frob(P, f)
    ccall((:ECP2_BLS461_frob, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461}, Ptr{FP2_BLS461}), P, f)
end

function ECP2_BLS461_mul4(P, Q, b)
    ccall((:ECP2_BLS461_mul4, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461}, Ptr{ECP2_BLS461}, Ptr{BIG_464_60}), P, Q, b)
end

function ECP2_BLS461_mapit(P, w)
    ccall((:ECP2_BLS461_mapit, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461}, Ptr{octet}), P, w)
end

function ECP2_BLS461_generator(G)
    ccall((:ECP2_BLS461_generator, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461},), G)
end
# Julia wrapper for header: ecp2_BN254.h
# Automatically generated using Clang.jl


function ECP2_BN254_isinf(P)
    ccall((:ECP2_BN254_isinf, libamcl_pairing_BN254), Cint, (Ptr{ECP2_BN254},), P)
end

function ECP2_BN254_copy(P, Q)
    ccall((:ECP2_BN254_copy, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254}, Ptr{ECP2_BN254}), P, Q)
end

function ECP2_BN254_inf(P)
    ccall((:ECP2_BN254_inf, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254},), P)
end

function ECP2_BN254_equals(P, Q)
    ccall((:ECP2_BN254_equals, libamcl_pairing_BN254), Cint, (Ptr{ECP2_BN254}, Ptr{ECP2_BN254}), P, Q)
end

function ECP2_BN254_affine(P)
    ccall((:ECP2_BN254_affine, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254},), P)
end

function ECP2_BN254_get(x, y, P)
    ccall((:ECP2_BN254_get, libamcl_pairing_BN254), Cint, (Ptr{FP2_BN254}, Ptr{FP2_BN254}, Ptr{ECP2_BN254}), x, y, P)
end

function ECP2_BN254_output(P)
    ccall((:ECP2_BN254_output, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254},), P)
end

function ECP2_BN254_outputxyz(P)
    ccall((:ECP2_BN254_outputxyz, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254},), P)
end

function ECP2_BN254_toOctet(S, P)
    ccall((:ECP2_BN254_toOctet, libamcl_pairing_BN254), Cvoid, (Ptr{octet}, Ptr{ECP2_BN254}), S, P)
end

function ECP2_BN254_fromOctet(P, S)
    ccall((:ECP2_BN254_fromOctet, libamcl_pairing_BN254), Cint, (Ptr{ECP2_BN254}, Ptr{octet}), P, S)
end

function ECP2_BN254_rhs(r, x)
    ccall((:ECP2_BN254_rhs, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}), r, x)
end

function ECP2_BN254_set(P, x, y)
    ccall((:ECP2_BN254_set, libamcl_pairing_BN254), Cint, (Ptr{ECP2_BN254}, Ptr{FP2_BN254}, Ptr{FP2_BN254}), P, x, y)
end

function ECP2_BN254_setx(P, x)
    ccall((:ECP2_BN254_setx, libamcl_pairing_BN254), Cint, (Ptr{ECP2_BN254}, Ptr{FP2_BN254}), P, x)
end

function ECP2_BN254_neg(P)
    ccall((:ECP2_BN254_neg, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254},), P)
end

function ECP2_BN254_dbl(P)
    ccall((:ECP2_BN254_dbl, libamcl_pairing_BN254), Cint, (Ptr{ECP2_BN254},), P)
end

function ECP2_BN254_add(P, Q)
    ccall((:ECP2_BN254_add, libamcl_pairing_BN254), Cint, (Ptr{ECP2_BN254}, Ptr{ECP2_BN254}), P, Q)
end

function ECP2_BN254_sub(P, Q)
    ccall((:ECP2_BN254_sub, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254}, Ptr{ECP2_BN254}), P, Q)
end

function ECP2_BN254_mul(P, b)
    ccall((:ECP2_BN254_mul, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254}, BIG_256_56), P, b)
end

function ECP2_BN254_frob(P, f)
    ccall((:ECP2_BN254_frob, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254}, Ptr{FP2_BN254}), P, f)
end

function ECP2_BN254_mul4(P, Q, b)
    ccall((:ECP2_BN254_mul4, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254}, Ptr{ECP2_BN254}, Ptr{BIG_256_56}), P, Q, b)
end

function ECP2_BN254_mapit(P, w)
    ccall((:ECP2_BN254_mapit, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254}, Ptr{octet}), P, w)
end

function ECP2_BN254_generator(G)
    ccall((:ECP2_BN254_generator, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254},), G)
end
# Julia wrapper for header: ecp2_BN254CX.h
# Automatically generated using Clang.jl


function ECP2_BN254CX_isinf(P)
    ccall((:ECP2_BN254CX_isinf, libamcl_pairing_BN254CX), Cint, (Ptr{ECP2_BN254CX},), P)
end

function ECP2_BN254CX_copy(P, Q)
    ccall((:ECP2_BN254CX_copy, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX}, Ptr{ECP2_BN254CX}), P, Q)
end

function ECP2_BN254CX_inf(P)
    ccall((:ECP2_BN254CX_inf, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX},), P)
end

function ECP2_BN254CX_equals(P, Q)
    ccall((:ECP2_BN254CX_equals, libamcl_pairing_BN254CX), Cint, (Ptr{ECP2_BN254CX}, Ptr{ECP2_BN254CX}), P, Q)
end

function ECP2_BN254CX_affine(P)
    ccall((:ECP2_BN254CX_affine, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX},), P)
end

function ECP2_BN254CX_get(x, y, P)
    ccall((:ECP2_BN254CX_get, libamcl_pairing_BN254CX), Cint, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}, Ptr{ECP2_BN254CX}), x, y, P)
end

function ECP2_BN254CX_output(P)
    ccall((:ECP2_BN254CX_output, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX},), P)
end

function ECP2_BN254CX_outputxyz(P)
    ccall((:ECP2_BN254CX_outputxyz, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX},), P)
end

function ECP2_BN254CX_toOctet(S, P)
    ccall((:ECP2_BN254CX_toOctet, libamcl_pairing_BN254CX), Cvoid, (Ptr{octet}, Ptr{ECP2_BN254CX}), S, P)
end

function ECP2_BN254CX_fromOctet(P, S)
    ccall((:ECP2_BN254CX_fromOctet, libamcl_pairing_BN254CX), Cint, (Ptr{ECP2_BN254CX}, Ptr{octet}), P, S)
end

function ECP2_BN254CX_rhs(r, x)
    ccall((:ECP2_BN254CX_rhs, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), r, x)
end

function ECP2_BN254CX_set(P, x, y)
    ccall((:ECP2_BN254CX_set, libamcl_pairing_BN254CX), Cint, (Ptr{ECP2_BN254CX}, Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), P, x, y)
end

function ECP2_BN254CX_setx(P, x)
    ccall((:ECP2_BN254CX_setx, libamcl_pairing_BN254CX), Cint, (Ptr{ECP2_BN254CX}, Ptr{FP2_BN254CX}), P, x)
end

function ECP2_BN254CX_neg(P)
    ccall((:ECP2_BN254CX_neg, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX},), P)
end

function ECP2_BN254CX_dbl(P)
    ccall((:ECP2_BN254CX_dbl, libamcl_pairing_BN254CX), Cint, (Ptr{ECP2_BN254CX},), P)
end

function ECP2_BN254CX_add(P, Q)
    ccall((:ECP2_BN254CX_add, libamcl_pairing_BN254CX), Cint, (Ptr{ECP2_BN254CX}, Ptr{ECP2_BN254CX}), P, Q)
end

function ECP2_BN254CX_sub(P, Q)
    ccall((:ECP2_BN254CX_sub, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX}, Ptr{ECP2_BN254CX}), P, Q)
end

function ECP2_BN254CX_mul(P, b)
    ccall((:ECP2_BN254CX_mul, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX}, BIG_256_56), P, b)
end

function ECP2_BN254CX_frob(P, f)
    ccall((:ECP2_BN254CX_frob, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX}, Ptr{FP2_BN254CX}), P, f)
end

function ECP2_BN254CX_mul4(P, Q, b)
    ccall((:ECP2_BN254CX_mul4, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX}, Ptr{ECP2_BN254CX}, Ptr{BIG_256_56}), P, Q, b)
end

function ECP2_BN254CX_mapit(P, w)
    ccall((:ECP2_BN254CX_mapit, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX}, Ptr{octet}), P, w)
end

function ECP2_BN254CX_generator(G)
    ccall((:ECP2_BN254CX_generator, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX},), G)
end
# Julia wrapper for header: ecp2_FP256BN.h
# Automatically generated using Clang.jl


function ECP2_FP256BN_isinf(P)
    ccall((:ECP2_FP256BN_isinf, libamcl_pairing_FP256BN), Cint, (Ptr{ECP2_FP256BN},), P)
end

function ECP2_FP256BN_copy(P, Q)
    ccall((:ECP2_FP256BN_copy, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN}, Ptr{ECP2_FP256BN}), P, Q)
end

function ECP2_FP256BN_inf(P)
    ccall((:ECP2_FP256BN_inf, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN},), P)
end

function ECP2_FP256BN_equals(P, Q)
    ccall((:ECP2_FP256BN_equals, libamcl_pairing_FP256BN), Cint, (Ptr{ECP2_FP256BN}, Ptr{ECP2_FP256BN}), P, Q)
end

function ECP2_FP256BN_affine(P)
    ccall((:ECP2_FP256BN_affine, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN},), P)
end

function ECP2_FP256BN_get(x, y, P)
    ccall((:ECP2_FP256BN_get, libamcl_pairing_FP256BN), Cint, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}, Ptr{ECP2_FP256BN}), x, y, P)
end

function ECP2_FP256BN_output(P)
    ccall((:ECP2_FP256BN_output, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN},), P)
end

function ECP2_FP256BN_outputxyz(P)
    ccall((:ECP2_FP256BN_outputxyz, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN},), P)
end

function ECP2_FP256BN_toOctet(S, P)
    ccall((:ECP2_FP256BN_toOctet, libamcl_pairing_FP256BN), Cvoid, (Ptr{octet}, Ptr{ECP2_FP256BN}), S, P)
end

function ECP2_FP256BN_fromOctet(P, S)
    ccall((:ECP2_FP256BN_fromOctet, libamcl_pairing_FP256BN), Cint, (Ptr{ECP2_FP256BN}, Ptr{octet}), P, S)
end

function ECP2_FP256BN_rhs(r, x)
    ccall((:ECP2_FP256BN_rhs, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), r, x)
end

function ECP2_FP256BN_set(P, x, y)
    ccall((:ECP2_FP256BN_set, libamcl_pairing_FP256BN), Cint, (Ptr{ECP2_FP256BN}, Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), P, x, y)
end

function ECP2_FP256BN_setx(P, x)
    ccall((:ECP2_FP256BN_setx, libamcl_pairing_FP256BN), Cint, (Ptr{ECP2_FP256BN}, Ptr{FP2_FP256BN}), P, x)
end

function ECP2_FP256BN_neg(P)
    ccall((:ECP2_FP256BN_neg, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN},), P)
end

function ECP2_FP256BN_dbl(P)
    ccall((:ECP2_FP256BN_dbl, libamcl_pairing_FP256BN), Cint, (Ptr{ECP2_FP256BN},), P)
end

function ECP2_FP256BN_add(P, Q)
    ccall((:ECP2_FP256BN_add, libamcl_pairing_FP256BN), Cint, (Ptr{ECP2_FP256BN}, Ptr{ECP2_FP256BN}), P, Q)
end

function ECP2_FP256BN_sub(P, Q)
    ccall((:ECP2_FP256BN_sub, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN}, Ptr{ECP2_FP256BN}), P, Q)
end

function ECP2_FP256BN_mul(P, b)
    ccall((:ECP2_FP256BN_mul, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN}, BIG_256_56), P, b)
end

function ECP2_FP256BN_frob(P, f)
    ccall((:ECP2_FP256BN_frob, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN}, Ptr{FP2_FP256BN}), P, f)
end

function ECP2_FP256BN_mul4(P, Q, b)
    ccall((:ECP2_FP256BN_mul4, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN}, Ptr{ECP2_FP256BN}, Ptr{BIG_256_56}), P, Q, b)
end

function ECP2_FP256BN_mapit(P, w)
    ccall((:ECP2_FP256BN_mapit, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN}, Ptr{octet}), P, w)
end

function ECP2_FP256BN_generator(G)
    ccall((:ECP2_FP256BN_generator, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN},), G)
end
# Julia wrapper for header: ecp2_FP512BN.h
# Automatically generated using Clang.jl


function ECP2_FP512BN_isinf(P)
    ccall((:ECP2_FP512BN_isinf, libamcl_pairing_FP512BN), Cint, (Ptr{ECP2_FP512BN},), P)
end

function ECP2_FP512BN_copy(P, Q)
    ccall((:ECP2_FP512BN_copy, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN}, Ptr{ECP2_FP512BN}), P, Q)
end

function ECP2_FP512BN_inf(P)
    ccall((:ECP2_FP512BN_inf, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN},), P)
end

function ECP2_FP512BN_equals(P, Q)
    ccall((:ECP2_FP512BN_equals, libamcl_pairing_FP512BN), Cint, (Ptr{ECP2_FP512BN}, Ptr{ECP2_FP512BN}), P, Q)
end

function ECP2_FP512BN_affine(P)
    ccall((:ECP2_FP512BN_affine, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN},), P)
end

function ECP2_FP512BN_get(x, y, P)
    ccall((:ECP2_FP512BN_get, libamcl_pairing_FP512BN), Cint, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}, Ptr{ECP2_FP512BN}), x, y, P)
end

function ECP2_FP512BN_output(P)
    ccall((:ECP2_FP512BN_output, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN},), P)
end

function ECP2_FP512BN_outputxyz(P)
    ccall((:ECP2_FP512BN_outputxyz, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN},), P)
end

function ECP2_FP512BN_toOctet(S, P)
    ccall((:ECP2_FP512BN_toOctet, libamcl_pairing_FP512BN), Cvoid, (Ptr{octet}, Ptr{ECP2_FP512BN}), S, P)
end

function ECP2_FP512BN_fromOctet(P, S)
    ccall((:ECP2_FP512BN_fromOctet, libamcl_pairing_FP512BN), Cint, (Ptr{ECP2_FP512BN}, Ptr{octet}), P, S)
end

function ECP2_FP512BN_rhs(r, x)
    ccall((:ECP2_FP512BN_rhs, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), r, x)
end

function ECP2_FP512BN_set(P, x, y)
    ccall((:ECP2_FP512BN_set, libamcl_pairing_FP512BN), Cint, (Ptr{ECP2_FP512BN}, Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), P, x, y)
end

function ECP2_FP512BN_setx(P, x)
    ccall((:ECP2_FP512BN_setx, libamcl_pairing_FP512BN), Cint, (Ptr{ECP2_FP512BN}, Ptr{FP2_FP512BN}), P, x)
end

function ECP2_FP512BN_neg(P)
    ccall((:ECP2_FP512BN_neg, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN},), P)
end

function ECP2_FP512BN_dbl(P)
    ccall((:ECP2_FP512BN_dbl, libamcl_pairing_FP512BN), Cint, (Ptr{ECP2_FP512BN},), P)
end

function ECP2_FP512BN_add(P, Q)
    ccall((:ECP2_FP512BN_add, libamcl_pairing_FP512BN), Cint, (Ptr{ECP2_FP512BN}, Ptr{ECP2_FP512BN}), P, Q)
end

function ECP2_FP512BN_sub(P, Q)
    ccall((:ECP2_FP512BN_sub, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN}, Ptr{ECP2_FP512BN}), P, Q)
end

function ECP2_FP512BN_mul(P, b)
    ccall((:ECP2_FP512BN_mul, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN}, BIG_512_60), P, b)
end

function ECP2_FP512BN_frob(P, f)
    ccall((:ECP2_FP512BN_frob, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN}, Ptr{FP2_FP512BN}), P, f)
end

function ECP2_FP512BN_mul4(P, Q, b)
    ccall((:ECP2_FP512BN_mul4, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN}, Ptr{ECP2_FP512BN}, Ptr{BIG_512_60}), P, Q, b)
end

function ECP2_FP512BN_mapit(P, w)
    ccall((:ECP2_FP512BN_mapit, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN}, Ptr{octet}), P, w)
end

function ECP2_FP512BN_generator(G)
    ccall((:ECP2_FP512BN_generator, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN},), G)
end
# Julia wrapper for header: ecp4_BLS24.h
# Automatically generated using Clang.jl


function ECP4_BLS24_isinf(P)
    ccall((:ECP4_BLS24_isinf, libamcl_pairing_BLS24), Cint, (Ptr{ECP4_BLS24},), P)
end

function ECP4_BLS24_copy(P, Q)
    ccall((:ECP4_BLS24_copy, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24}, Ptr{ECP4_BLS24}), P, Q)
end

function ECP4_BLS24_inf(P)
    ccall((:ECP4_BLS24_inf, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24},), P)
end

function ECP4_BLS24_equals(P, Q)
    ccall((:ECP4_BLS24_equals, libamcl_pairing_BLS24), Cint, (Ptr{ECP4_BLS24}, Ptr{ECP4_BLS24}), P, Q)
end

function ECP4_BLS24_affine(P)
    ccall((:ECP4_BLS24_affine, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24},), P)
end

function ECP4_BLS24_get(x, y, P)
    ccall((:ECP4_BLS24_get, libamcl_pairing_BLS24), Cint, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{ECP4_BLS24}), x, y, P)
end

function ECP4_BLS24_output(P)
    ccall((:ECP4_BLS24_output, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24},), P)
end

function ECP4_BLS24_toOctet(S, P)
    ccall((:ECP4_BLS24_toOctet, libamcl_pairing_BLS24), Cvoid, (Ptr{octet}, Ptr{ECP4_BLS24}), S, P)
end

function ECP4_BLS24_fromOctet(P, S)
    ccall((:ECP4_BLS24_fromOctet, libamcl_pairing_BLS24), Cint, (Ptr{ECP4_BLS24}, Ptr{octet}), P, S)
end

function ECP4_BLS24_rhs(r, x)
    ccall((:ECP4_BLS24_rhs, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), r, x)
end

function ECP4_BLS24_set(P, x, y)
    ccall((:ECP4_BLS24_set, libamcl_pairing_BLS24), Cint, (Ptr{ECP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), P, x, y)
end

function ECP4_BLS24_setx(P, x)
    ccall((:ECP4_BLS24_setx, libamcl_pairing_BLS24), Cint, (Ptr{ECP4_BLS24}, Ptr{FP4_BLS24}), P, x)
end

function ECP4_BLS24_neg(P)
    ccall((:ECP4_BLS24_neg, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24},), P)
end

function ECP4_BLS24_reduce(P)
    ccall((:ECP4_BLS24_reduce, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24},), P)
end

function ECP4_BLS24_dbl(P)
    ccall((:ECP4_BLS24_dbl, libamcl_pairing_BLS24), Cint, (Ptr{ECP4_BLS24},), P)
end

function ECP4_BLS24_add(P, Q)
    ccall((:ECP4_BLS24_add, libamcl_pairing_BLS24), Cint, (Ptr{ECP4_BLS24}, Ptr{ECP4_BLS24}), P, Q)
end

function ECP4_BLS24_sub(P, Q)
    ccall((:ECP4_BLS24_sub, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24}, Ptr{ECP4_BLS24}), P, Q)
end

function ECP4_BLS24_mul(P, b)
    ccall((:ECP4_BLS24_mul, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24}, BIG_480_56), P, b)
end

function ECP4_BLS24_frob_constants(F)
    ccall((:ECP4_BLS24_frob_constants, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), F)
end

function ECP4_BLS24_frob(P, F, n)
    ccall((:ECP4_BLS24_frob, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24}, Ptr{FP2_BLS24}, Cint), P, F, n)
end

function ECP4_BLS24_mul8(P, Q, b)
    ccall((:ECP4_BLS24_mul8, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24}, Ptr{ECP4_BLS24}, Ptr{BIG_480_56}), P, Q, b)
end

function ECP4_BLS24_mapit(P, w)
    ccall((:ECP4_BLS24_mapit, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24}, Ptr{octet}), P, w)
end

function ECP4_BLS24_generator(G)
    ccall((:ECP4_BLS24_generator, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24},), G)
end
# Julia wrapper for header: ecp8_BLS48.h
# Automatically generated using Clang.jl


function ECP8_BLS48_isinf(P)
    ccall((:ECP8_BLS48_isinf, libamcl_pairing_BLS48), Cint, (Ptr{ECP8_BLS48},), P)
end

function ECP8_BLS48_copy(P, Q)
    ccall((:ECP8_BLS48_copy, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48}, Ptr{ECP8_BLS48}), P, Q)
end

function ECP8_BLS48_inf(P)
    ccall((:ECP8_BLS48_inf, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48},), P)
end

function ECP8_BLS48_equals(P, Q)
    ccall((:ECP8_BLS48_equals, libamcl_pairing_BLS48), Cint, (Ptr{ECP8_BLS48}, Ptr{ECP8_BLS48}), P, Q)
end

function ECP8_BLS48_affine(P)
    ccall((:ECP8_BLS48_affine, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48},), P)
end

function ECP8_BLS48_get(x, y, P)
    ccall((:ECP8_BLS48_get, libamcl_pairing_BLS48), Cint, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{ECP8_BLS48}), x, y, P)
end

function ECP8_BLS48_output(P)
    ccall((:ECP8_BLS48_output, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48},), P)
end

function ECP8_BLS48_toOctet(S, P)
    ccall((:ECP8_BLS48_toOctet, libamcl_pairing_BLS48), Cvoid, (Ptr{octet}, Ptr{ECP8_BLS48}), S, P)
end

function ECP8_BLS48_fromOctet(P, S)
    ccall((:ECP8_BLS48_fromOctet, libamcl_pairing_BLS48), Cint, (Ptr{ECP8_BLS48}, Ptr{octet}), P, S)
end

function ECP8_BLS48_rhs(r, x)
    ccall((:ECP8_BLS48_rhs, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), r, x)
end

function ECP8_BLS48_set(P, x, y)
    ccall((:ECP8_BLS48_set, libamcl_pairing_BLS48), Cint, (Ptr{ECP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), P, x, y)
end

function ECP8_BLS48_setx(P, x)
    ccall((:ECP8_BLS48_setx, libamcl_pairing_BLS48), Cint, (Ptr{ECP8_BLS48}, Ptr{FP8_BLS48}), P, x)
end

function ECP8_BLS48_neg(P)
    ccall((:ECP8_BLS48_neg, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48},), P)
end

function ECP8_BLS48_reduce(P)
    ccall((:ECP8_BLS48_reduce, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48},), P)
end

function ECP8_BLS48_dbl(P)
    ccall((:ECP8_BLS48_dbl, libamcl_pairing_BLS48), Cint, (Ptr{ECP8_BLS48},), P)
end

function ECP8_BLS48_add(P, Q)
    ccall((:ECP8_BLS48_add, libamcl_pairing_BLS48), Cint, (Ptr{ECP8_BLS48}, Ptr{ECP8_BLS48}), P, Q)
end

function ECP8_BLS48_sub(P, Q)
    ccall((:ECP8_BLS48_sub, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48}, Ptr{ECP8_BLS48}), P, Q)
end

function ECP8_BLS48_mul(P, b)
    ccall((:ECP8_BLS48_mul, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48}, BIG_560_58), P, b)
end

function ECP8_BLS48_frob_constants(F)
    ccall((:ECP8_BLS48_frob_constants, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), F)
end

function ECP8_BLS48_frob(P, F, n)
    ccall((:ECP8_BLS48_frob, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48}, Ptr{FP2_BLS48}, Cint), P, F, n)
end

function ECP8_BLS48_mul16(P, Q, b)
    ccall((:ECP8_BLS48_mul16, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48}, Ptr{ECP8_BLS48}, Ptr{BIG_560_58}), P, Q, b)
end

function ECP8_BLS48_mapit(P, w)
    ccall((:ECP8_BLS48_mapit, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48}, Ptr{octet}), P, w)
end

function ECP8_BLS48_generator(G)
    ccall((:ECP8_BLS48_generator, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48},), G)
end
# Julia wrapper for header: ecp_ANSSI.h
# Automatically generated using Clang.jl


function ECP_ANSSI_isinf(P)
    ccall((:ECP_ANSSI_isinf, libamcl_curve_ANSSI), Cint, (Ptr{ECP_ANSSI},), P)
end

function ECP_ANSSI_equals(P, Q)
    ccall((:ECP_ANSSI_equals, libamcl_curve_ANSSI), Cint, (Ptr{ECP_ANSSI}, Ptr{ECP_ANSSI}), P, Q)
end

function ECP_ANSSI_copy(P, Q)
    ccall((:ECP_ANSSI_copy, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI}, Ptr{ECP_ANSSI}), P, Q)
end

function ECP_ANSSI_neg(P)
    ccall((:ECP_ANSSI_neg, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI},), P)
end

function ECP_ANSSI_inf(P)
    ccall((:ECP_ANSSI_inf, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI},), P)
end

function ECP_ANSSI_rhs(r, x)
    ccall((:ECP_ANSSI_rhs, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), r, x)
end

function ECP_ANSSI_set(P, x, y)
    ccall((:ECP_ANSSI_set, libamcl_curve_ANSSI), Cint, (Ptr{ECP_ANSSI}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_ANSSI_get(x, y, P)
    ccall((:ECP_ANSSI_get, libamcl_curve_ANSSI), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_ANSSI}), x, y, P)
end

function ECP_ANSSI_add(P, Q)
    ccall((:ECP_ANSSI_add, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI}, Ptr{ECP_ANSSI}), P, Q)
end

function ECP_ANSSI_sub(P, Q)
    ccall((:ECP_ANSSI_sub, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI}, Ptr{ECP_ANSSI}), P, Q)
end

function ECP_ANSSI_setx(P, x, s)
    ccall((:ECP_ANSSI_setx, libamcl_curve_ANSSI), Cint, (Ptr{ECP_ANSSI}, BIG_256_56, Cint), P, x, s)
end

function ECP_ANSSI_cfp(Q)
    ccall((:ECP_ANSSI_cfp, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI},), Q)
end

function ECP_ANSSI_mapit(Q, w)
    ccall((:ECP_ANSSI_mapit, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI}, Ptr{octet}), Q, w)
end

function ECP_ANSSI_affine(P)
    ccall((:ECP_ANSSI_affine, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI},), P)
end

function ECP_ANSSI_outputxyz(P)
    ccall((:ECP_ANSSI_outputxyz, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI},), P)
end

function ECP_ANSSI_output(P)
    ccall((:ECP_ANSSI_output, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI},), P)
end

function ECP_ANSSI_rawoutput(P)
    ccall((:ECP_ANSSI_rawoutput, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI},), P)
end

function ECP_ANSSI_toOctet(S, P, c)
    ccall((:ECP_ANSSI_toOctet, libamcl_curve_ANSSI), Cvoid, (Ptr{octet}, Ptr{ECP_ANSSI}, Bool), S, P, c)
end

function ECP_ANSSI_fromOctet(P, S)
    ccall((:ECP_ANSSI_fromOctet, libamcl_curve_ANSSI), Cint, (Ptr{ECP_ANSSI}, Ptr{octet}), P, S)
end

function ECP_ANSSI_dbl(P)
    ccall((:ECP_ANSSI_dbl, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI},), P)
end

function ECP_ANSSI_pinmul(P, i, b)
    ccall((:ECP_ANSSI_pinmul, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI}, Cint, Cint), P, i, b)
end

function ECP_ANSSI_mul(P, b)
    ccall((:ECP_ANSSI_mul, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI}, BIG_256_56), P, b)
end

function ECP_ANSSI_mul2(P, Q, e, f)
    ccall((:ECP_ANSSI_mul2, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI}, Ptr{ECP_ANSSI}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_ANSSI_generator(G)
    ccall((:ECP_ANSSI_generator, libamcl_curve_ANSSI), Cvoid, (Ptr{ECP_ANSSI},), G)
end
# Julia wrapper for header: ecp_BLS24.h
# Automatically generated using Clang.jl


function ECP_BLS24_isinf(P)
    ccall((:ECP_BLS24_isinf, libamcl_curve_BLS24), Cint, (Ptr{ECP_BLS24},), P)
end

function ECP_BLS24_equals(P, Q)
    ccall((:ECP_BLS24_equals, libamcl_curve_BLS24), Cint, (Ptr{ECP_BLS24}, Ptr{ECP_BLS24}), P, Q)
end

function ECP_BLS24_copy(P, Q)
    ccall((:ECP_BLS24_copy, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24}, Ptr{ECP_BLS24}), P, Q)
end

function ECP_BLS24_neg(P)
    ccall((:ECP_BLS24_neg, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24},), P)
end

function ECP_BLS24_inf(P)
    ccall((:ECP_BLS24_inf, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24},), P)
end

function ECP_BLS24_rhs(r, x)
    ccall((:ECP_BLS24_rhs, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}), r, x)
end

function ECP_BLS24_set(P, x, y)
    ccall((:ECP_BLS24_set, libamcl_curve_BLS24), Cint, (Ptr{ECP_BLS24}, BIG_480_56, BIG_480_56), P, x, y)
end

function ECP_BLS24_get(x, y, P)
    ccall((:ECP_BLS24_get, libamcl_curve_BLS24), Cint, (BIG_480_56, BIG_480_56, Ptr{ECP_BLS24}), x, y, P)
end

function ECP_BLS24_add(P, Q)
    ccall((:ECP_BLS24_add, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24}, Ptr{ECP_BLS24}), P, Q)
end

function ECP_BLS24_sub(P, Q)
    ccall((:ECP_BLS24_sub, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24}, Ptr{ECP_BLS24}), P, Q)
end

function ECP_BLS24_setx(P, x, s)
    ccall((:ECP_BLS24_setx, libamcl_curve_BLS24), Cint, (Ptr{ECP_BLS24}, BIG_480_56, Cint), P, x, s)
end

function ECP_BLS24_cfp(Q)
    ccall((:ECP_BLS24_cfp, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24},), Q)
end

function ECP_BLS24_mapit(Q, w)
    ccall((:ECP_BLS24_mapit, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24}, Ptr{octet}), Q, w)
end

function ECP_BLS24_affine(P)
    ccall((:ECP_BLS24_affine, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24},), P)
end

function ECP_BLS24_outputxyz(P)
    ccall((:ECP_BLS24_outputxyz, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24},), P)
end

function ECP_BLS24_output(P)
    ccall((:ECP_BLS24_output, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24},), P)
end

function ECP_BLS24_rawoutput(P)
    ccall((:ECP_BLS24_rawoutput, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24},), P)
end

function ECP_BLS24_toOctet(S, P, c)
    ccall((:ECP_BLS24_toOctet, libamcl_curve_BLS24), Cvoid, (Ptr{octet}, Ptr{ECP_BLS24}, Bool), S, P, c)
end

function ECP_BLS24_fromOctet(P, S)
    ccall((:ECP_BLS24_fromOctet, libamcl_curve_BLS24), Cint, (Ptr{ECP_BLS24}, Ptr{octet}), P, S)
end

function ECP_BLS24_dbl(P)
    ccall((:ECP_BLS24_dbl, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24},), P)
end

function ECP_BLS24_pinmul(P, i, b)
    ccall((:ECP_BLS24_pinmul, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24}, Cint, Cint), P, i, b)
end

function ECP_BLS24_mul(P, b)
    ccall((:ECP_BLS24_mul, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24}, BIG_480_56), P, b)
end

function ECP_BLS24_mul2(P, Q, e, f)
    ccall((:ECP_BLS24_mul2, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24}, Ptr{ECP_BLS24}, BIG_480_56, BIG_480_56), P, Q, e, f)
end

function ECP_BLS24_generator(G)
    ccall((:ECP_BLS24_generator, libamcl_curve_BLS24), Cvoid, (Ptr{ECP_BLS24},), G)
end
# Julia wrapper for header: ecp_BLS381.h
# Automatically generated using Clang.jl


function ECP_BLS381_isinf(P)
    ccall((:ECP_BLS381_isinf, libamcl_curve_BLS381), Cint, (Ptr{ECP_BLS381},), P)
end

function ECP_BLS381_equals(P, Q)
    ccall((:ECP_BLS381_equals, libamcl_curve_BLS381), Cint, (Ptr{ECP_BLS381}, Ptr{ECP_BLS381}), P, Q)
end

function ECP_BLS381_copy(P, Q)
    ccall((:ECP_BLS381_copy, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381}, Ptr{ECP_BLS381}), P, Q)
end

function ECP_BLS381_neg(P)
    ccall((:ECP_BLS381_neg, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381},), P)
end

function ECP_BLS381_inf(P)
    ccall((:ECP_BLS381_inf, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381},), P)
end

function ECP_BLS381_rhs(r, x)
    ccall((:ECP_BLS381_rhs, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}), r, x)
end

function ECP_BLS381_set(P, x, y)
    ccall((:ECP_BLS381_set, libamcl_curve_BLS381), Cint, (Ptr{ECP_BLS381}, BIG_384_58, BIG_384_58), P, x, y)
end

function ECP_BLS381_get(x, y, P)
    ccall((:ECP_BLS381_get, libamcl_curve_BLS381), Cint, (BIG_384_58, BIG_384_58, Ptr{ECP_BLS381}), x, y, P)
end

function ECP_BLS381_add(P, Q)
    ccall((:ECP_BLS381_add, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381}, Ptr{ECP_BLS381}), P, Q)
end

function ECP_BLS381_sub(P, Q)
    ccall((:ECP_BLS381_sub, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381}, Ptr{ECP_BLS381}), P, Q)
end

function ECP_BLS381_setx(P, x, s)
    ccall((:ECP_BLS381_setx, libamcl_curve_BLS381), Cint, (Ptr{ECP_BLS381}, BIG_384_58, Cint), P, x, s)
end

function ECP_BLS381_cfp(Q)
    ccall((:ECP_BLS381_cfp, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381},), Q)
end

function ECP_BLS381_mapit(Q, w)
    ccall((:ECP_BLS381_mapit, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381}, Ptr{octet}), Q, w)
end

function ECP_BLS381_affine(P)
    ccall((:ECP_BLS381_affine, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381},), P)
end

function ECP_BLS381_outputxyz(P)
    ccall((:ECP_BLS381_outputxyz, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381},), P)
end

function ECP_BLS381_output(P)
    ccall((:ECP_BLS381_output, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381},), P)
end

function ECP_BLS381_rawoutput(P)
    ccall((:ECP_BLS381_rawoutput, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381},), P)
end

function ECP_BLS381_toOctet(S, P, c)
    ccall((:ECP_BLS381_toOctet, libamcl_curve_BLS381), Cvoid, (Ptr{octet}, Ptr{ECP_BLS381}, Bool), S, P, c)
end

function ECP_BLS381_fromOctet(P, S)
    ccall((:ECP_BLS381_fromOctet, libamcl_curve_BLS381), Cint, (Ptr{ECP_BLS381}, Ptr{octet}), P, S)
end

function ECP_BLS381_dbl(P)
    ccall((:ECP_BLS381_dbl, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381},), P)
end

function ECP_BLS381_pinmul(P, i, b)
    ccall((:ECP_BLS381_pinmul, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381}, Cint, Cint), P, i, b)
end

function ECP_BLS381_mul(P, b)
    ccall((:ECP_BLS381_mul, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381}, BIG_384_58), P, b)
end

function ECP_BLS381_mul2(P, Q, e, f)
    ccall((:ECP_BLS381_mul2, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381}, Ptr{ECP_BLS381}, BIG_384_58, BIG_384_58), P, Q, e, f)
end

function ECP_BLS381_generator(G)
    ccall((:ECP_BLS381_generator, libamcl_curve_BLS381), Cvoid, (Ptr{ECP_BLS381},), G)
end
# Julia wrapper for header: ecp_BLS383.h
# Automatically generated using Clang.jl


function ECP_BLS383_isinf(P)
    ccall((:ECP_BLS383_isinf, libamcl_curve_BLS383), Cint, (Ptr{ECP_BLS383},), P)
end

function ECP_BLS383_equals(P, Q)
    ccall((:ECP_BLS383_equals, libamcl_curve_BLS383), Cint, (Ptr{ECP_BLS383}, Ptr{ECP_BLS383}), P, Q)
end

function ECP_BLS383_copy(P, Q)
    ccall((:ECP_BLS383_copy, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383}, Ptr{ECP_BLS383}), P, Q)
end

function ECP_BLS383_neg(P)
    ccall((:ECP_BLS383_neg, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383},), P)
end

function ECP_BLS383_inf(P)
    ccall((:ECP_BLS383_inf, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383},), P)
end

function ECP_BLS383_rhs(r, x)
    ccall((:ECP_BLS383_rhs, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}), r, x)
end

function ECP_BLS383_set(P, x, y)
    ccall((:ECP_BLS383_set, libamcl_curve_BLS383), Cint, (Ptr{ECP_BLS383}, BIG_384_58, BIG_384_58), P, x, y)
end

function ECP_BLS383_get(x, y, P)
    ccall((:ECP_BLS383_get, libamcl_curve_BLS383), Cint, (BIG_384_58, BIG_384_58, Ptr{ECP_BLS383}), x, y, P)
end

function ECP_BLS383_add(P, Q)
    ccall((:ECP_BLS383_add, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383}, Ptr{ECP_BLS383}), P, Q)
end

function ECP_BLS383_sub(P, Q)
    ccall((:ECP_BLS383_sub, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383}, Ptr{ECP_BLS383}), P, Q)
end

function ECP_BLS383_setx(P, x, s)
    ccall((:ECP_BLS383_setx, libamcl_curve_BLS383), Cint, (Ptr{ECP_BLS383}, BIG_384_58, Cint), P, x, s)
end

function ECP_BLS383_cfp(Q)
    ccall((:ECP_BLS383_cfp, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383},), Q)
end

function ECP_BLS383_mapit(Q, w)
    ccall((:ECP_BLS383_mapit, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383}, Ptr{octet}), Q, w)
end

function ECP_BLS383_affine(P)
    ccall((:ECP_BLS383_affine, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383},), P)
end

function ECP_BLS383_outputxyz(P)
    ccall((:ECP_BLS383_outputxyz, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383},), P)
end

function ECP_BLS383_output(P)
    ccall((:ECP_BLS383_output, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383},), P)
end

function ECP_BLS383_rawoutput(P)
    ccall((:ECP_BLS383_rawoutput, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383},), P)
end

function ECP_BLS383_toOctet(S, P, c)
    ccall((:ECP_BLS383_toOctet, libamcl_curve_BLS383), Cvoid, (Ptr{octet}, Ptr{ECP_BLS383}, Bool), S, P, c)
end

function ECP_BLS383_fromOctet(P, S)
    ccall((:ECP_BLS383_fromOctet, libamcl_curve_BLS383), Cint, (Ptr{ECP_BLS383}, Ptr{octet}), P, S)
end

function ECP_BLS383_dbl(P)
    ccall((:ECP_BLS383_dbl, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383},), P)
end

function ECP_BLS383_pinmul(P, i, b)
    ccall((:ECP_BLS383_pinmul, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383}, Cint, Cint), P, i, b)
end

function ECP_BLS383_mul(P, b)
    ccall((:ECP_BLS383_mul, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383}, BIG_384_58), P, b)
end

function ECP_BLS383_mul2(P, Q, e, f)
    ccall((:ECP_BLS383_mul2, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383}, Ptr{ECP_BLS383}, BIG_384_58, BIG_384_58), P, Q, e, f)
end

function ECP_BLS383_generator(G)
    ccall((:ECP_BLS383_generator, libamcl_curve_BLS383), Cvoid, (Ptr{ECP_BLS383},), G)
end
# Julia wrapper for header: ecp_BLS461.h
# Automatically generated using Clang.jl


function ECP_BLS461_isinf(P)
    ccall((:ECP_BLS461_isinf, libamcl_curve_BLS461), Cint, (Ptr{ECP_BLS461},), P)
end

function ECP_BLS461_equals(P, Q)
    ccall((:ECP_BLS461_equals, libamcl_curve_BLS461), Cint, (Ptr{ECP_BLS461}, Ptr{ECP_BLS461}), P, Q)
end

function ECP_BLS461_copy(P, Q)
    ccall((:ECP_BLS461_copy, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461}, Ptr{ECP_BLS461}), P, Q)
end

function ECP_BLS461_neg(P)
    ccall((:ECP_BLS461_neg, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461},), P)
end

function ECP_BLS461_inf(P)
    ccall((:ECP_BLS461_inf, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461},), P)
end

function ECP_BLS461_rhs(r, x)
    ccall((:ECP_BLS461_rhs, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}), r, x)
end

function ECP_BLS461_set(P, x, y)
    ccall((:ECP_BLS461_set, libamcl_curve_BLS461), Cint, (Ptr{ECP_BLS461}, BIG_464_60, BIG_464_60), P, x, y)
end

function ECP_BLS461_get(x, y, P)
    ccall((:ECP_BLS461_get, libamcl_curve_BLS461), Cint, (BIG_464_60, BIG_464_60, Ptr{ECP_BLS461}), x, y, P)
end

function ECP_BLS461_add(P, Q)
    ccall((:ECP_BLS461_add, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461}, Ptr{ECP_BLS461}), P, Q)
end

function ECP_BLS461_sub(P, Q)
    ccall((:ECP_BLS461_sub, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461}, Ptr{ECP_BLS461}), P, Q)
end

function ECP_BLS461_setx(P, x, s)
    ccall((:ECP_BLS461_setx, libamcl_curve_BLS461), Cint, (Ptr{ECP_BLS461}, BIG_464_60, Cint), P, x, s)
end

function ECP_BLS461_cfp(Q)
    ccall((:ECP_BLS461_cfp, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461},), Q)
end

function ECP_BLS461_mapit(Q, w)
    ccall((:ECP_BLS461_mapit, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461}, Ptr{octet}), Q, w)
end

function ECP_BLS461_affine(P)
    ccall((:ECP_BLS461_affine, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461},), P)
end

function ECP_BLS461_outputxyz(P)
    ccall((:ECP_BLS461_outputxyz, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461},), P)
end

function ECP_BLS461_output(P)
    ccall((:ECP_BLS461_output, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461},), P)
end

function ECP_BLS461_rawoutput(P)
    ccall((:ECP_BLS461_rawoutput, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461},), P)
end

function ECP_BLS461_toOctet(S, P, c)
    ccall((:ECP_BLS461_toOctet, libamcl_curve_BLS461), Cvoid, (Ptr{octet}, Ptr{ECP_BLS461}, Bool), S, P, c)
end

function ECP_BLS461_fromOctet(P, S)
    ccall((:ECP_BLS461_fromOctet, libamcl_curve_BLS461), Cint, (Ptr{ECP_BLS461}, Ptr{octet}), P, S)
end

function ECP_BLS461_dbl(P)
    ccall((:ECP_BLS461_dbl, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461},), P)
end

function ECP_BLS461_pinmul(P, i, b)
    ccall((:ECP_BLS461_pinmul, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461}, Cint, Cint), P, i, b)
end

function ECP_BLS461_mul(P, b)
    ccall((:ECP_BLS461_mul, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461}, BIG_464_60), P, b)
end

function ECP_BLS461_mul2(P, Q, e, f)
    ccall((:ECP_BLS461_mul2, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461}, Ptr{ECP_BLS461}, BIG_464_60, BIG_464_60), P, Q, e, f)
end

function ECP_BLS461_generator(G)
    ccall((:ECP_BLS461_generator, libamcl_curve_BLS461), Cvoid, (Ptr{ECP_BLS461},), G)
end
# Julia wrapper for header: ecp_BLS48.h
# Automatically generated using Clang.jl


function ECP_BLS48_isinf(P)
    ccall((:ECP_BLS48_isinf, libamcl_curve_BLS48), Cint, (Ptr{ECP_BLS48},), P)
end

function ECP_BLS48_equals(P, Q)
    ccall((:ECP_BLS48_equals, libamcl_curve_BLS48), Cint, (Ptr{ECP_BLS48}, Ptr{ECP_BLS48}), P, Q)
end

function ECP_BLS48_copy(P, Q)
    ccall((:ECP_BLS48_copy, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48}, Ptr{ECP_BLS48}), P, Q)
end

function ECP_BLS48_neg(P)
    ccall((:ECP_BLS48_neg, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48},), P)
end

function ECP_BLS48_inf(P)
    ccall((:ECP_BLS48_inf, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48},), P)
end

function ECP_BLS48_rhs(r, x)
    ccall((:ECP_BLS48_rhs, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}), r, x)
end

function ECP_BLS48_set(P, x, y)
    ccall((:ECP_BLS48_set, libamcl_curve_BLS48), Cint, (Ptr{ECP_BLS48}, BIG_560_58, BIG_560_58), P, x, y)
end

function ECP_BLS48_get(x, y, P)
    ccall((:ECP_BLS48_get, libamcl_curve_BLS48), Cint, (BIG_560_58, BIG_560_58, Ptr{ECP_BLS48}), x, y, P)
end

function ECP_BLS48_add(P, Q)
    ccall((:ECP_BLS48_add, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48}, Ptr{ECP_BLS48}), P, Q)
end

function ECP_BLS48_sub(P, Q)
    ccall((:ECP_BLS48_sub, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48}, Ptr{ECP_BLS48}), P, Q)
end

function ECP_BLS48_setx(P, x, s)
    ccall((:ECP_BLS48_setx, libamcl_curve_BLS48), Cint, (Ptr{ECP_BLS48}, BIG_560_58, Cint), P, x, s)
end

function ECP_BLS48_cfp(Q)
    ccall((:ECP_BLS48_cfp, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48},), Q)
end

function ECP_BLS48_mapit(Q, w)
    ccall((:ECP_BLS48_mapit, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48}, Ptr{octet}), Q, w)
end

function ECP_BLS48_affine(P)
    ccall((:ECP_BLS48_affine, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48},), P)
end

function ECP_BLS48_outputxyz(P)
    ccall((:ECP_BLS48_outputxyz, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48},), P)
end

function ECP_BLS48_output(P)
    ccall((:ECP_BLS48_output, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48},), P)
end

function ECP_BLS48_rawoutput(P)
    ccall((:ECP_BLS48_rawoutput, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48},), P)
end

function ECP_BLS48_toOctet(S, P, c)
    ccall((:ECP_BLS48_toOctet, libamcl_curve_BLS48), Cvoid, (Ptr{octet}, Ptr{ECP_BLS48}, Bool), S, P, c)
end

function ECP_BLS48_fromOctet(P, S)
    ccall((:ECP_BLS48_fromOctet, libamcl_curve_BLS48), Cint, (Ptr{ECP_BLS48}, Ptr{octet}), P, S)
end

function ECP_BLS48_dbl(P)
    ccall((:ECP_BLS48_dbl, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48},), P)
end

function ECP_BLS48_pinmul(P, i, b)
    ccall((:ECP_BLS48_pinmul, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48}, Cint, Cint), P, i, b)
end

function ECP_BLS48_mul(P, b)
    ccall((:ECP_BLS48_mul, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48}, BIG_560_58), P, b)
end

function ECP_BLS48_mul2(P, Q, e, f)
    ccall((:ECP_BLS48_mul2, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48}, Ptr{ECP_BLS48}, BIG_560_58, BIG_560_58), P, Q, e, f)
end

function ECP_BLS48_generator(G)
    ccall((:ECP_BLS48_generator, libamcl_curve_BLS48), Cvoid, (Ptr{ECP_BLS48},), G)
end
# Julia wrapper for header: ecp_BN254.h
# Automatically generated using Clang.jl


function ECP_BN254_isinf(P)
    ccall((:ECP_BN254_isinf, libamcl_curve_BN254), Cint, (Ptr{ECP_BN254},), P)
end

function ECP_BN254_equals(P, Q)
    ccall((:ECP_BN254_equals, libamcl_curve_BN254), Cint, (Ptr{ECP_BN254}, Ptr{ECP_BN254}), P, Q)
end

function ECP_BN254_copy(P, Q)
    ccall((:ECP_BN254_copy, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254}, Ptr{ECP_BN254}), P, Q)
end

function ECP_BN254_neg(P)
    ccall((:ECP_BN254_neg, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254},), P)
end

function ECP_BN254_inf(P)
    ccall((:ECP_BN254_inf, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254},), P)
end

function ECP_BN254_rhs(r, x)
    ccall((:ECP_BN254_rhs, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}), r, x)
end

function ECP_BN254_set(P, x, y)
    ccall((:ECP_BN254_set, libamcl_curve_BN254), Cint, (Ptr{ECP_BN254}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_BN254_get(x, y, P)
    ccall((:ECP_BN254_get, libamcl_curve_BN254), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_BN254}), x, y, P)
end

function ECP_BN254_add(P, Q)
    ccall((:ECP_BN254_add, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254}, Ptr{ECP_BN254}), P, Q)
end

function ECP_BN254_sub(P, Q)
    ccall((:ECP_BN254_sub, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254}, Ptr{ECP_BN254}), P, Q)
end

function ECP_BN254_setx(P, x, s)
    ccall((:ECP_BN254_setx, libamcl_curve_BN254), Cint, (Ptr{ECP_BN254}, BIG_256_56, Cint), P, x, s)
end

function ECP_BN254_cfp(Q)
    ccall((:ECP_BN254_cfp, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254},), Q)
end

function ECP_BN254_mapit(Q, w)
    ccall((:ECP_BN254_mapit, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254}, Ptr{octet}), Q, w)
end

function ECP_BN254_affine(P)
    ccall((:ECP_BN254_affine, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254},), P)
end

function ECP_BN254_outputxyz(P)
    ccall((:ECP_BN254_outputxyz, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254},), P)
end

function ECP_BN254_output(P)
    ccall((:ECP_BN254_output, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254},), P)
end

function ECP_BN254_rawoutput(P)
    ccall((:ECP_BN254_rawoutput, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254},), P)
end

function ECP_BN254_toOctet(S, P, c)
    ccall((:ECP_BN254_toOctet, libamcl_curve_BN254), Cvoid, (Ptr{octet}, Ptr{ECP_BN254}, Bool), S, P, c)
end

function ECP_BN254_fromOctet(P, S)
    ccall((:ECP_BN254_fromOctet, libamcl_curve_BN254), Cint, (Ptr{ECP_BN254}, Ptr{octet}), P, S)
end

function ECP_BN254_dbl(P)
    ccall((:ECP_BN254_dbl, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254},), P)
end

function ECP_BN254_pinmul(P, i, b)
    ccall((:ECP_BN254_pinmul, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254}, Cint, Cint), P, i, b)
end

function ECP_BN254_mul(P, b)
    ccall((:ECP_BN254_mul, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254}, BIG_256_56), P, b)
end

function ECP_BN254_mul2(P, Q, e, f)
    ccall((:ECP_BN254_mul2, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254}, Ptr{ECP_BN254}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_BN254_generator(G)
    ccall((:ECP_BN254_generator, libamcl_curve_BN254), Cvoid, (Ptr{ECP_BN254},), G)
end
# Julia wrapper for header: ecp_BN254CX.h
# Automatically generated using Clang.jl


function ECP_BN254CX_isinf(P)
    ccall((:ECP_BN254CX_isinf, libamcl_curve_BN254CX), Cint, (Ptr{ECP_BN254CX},), P)
end

function ECP_BN254CX_equals(P, Q)
    ccall((:ECP_BN254CX_equals, libamcl_curve_BN254CX), Cint, (Ptr{ECP_BN254CX}, Ptr{ECP_BN254CX}), P, Q)
end

function ECP_BN254CX_copy(P, Q)
    ccall((:ECP_BN254CX_copy, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX}, Ptr{ECP_BN254CX}), P, Q)
end

function ECP_BN254CX_neg(P)
    ccall((:ECP_BN254CX_neg, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX},), P)
end

function ECP_BN254CX_inf(P)
    ccall((:ECP_BN254CX_inf, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX},), P)
end

function ECP_BN254CX_rhs(r, x)
    ccall((:ECP_BN254CX_rhs, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), r, x)
end

function ECP_BN254CX_set(P, x, y)
    ccall((:ECP_BN254CX_set, libamcl_curve_BN254CX), Cint, (Ptr{ECP_BN254CX}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_BN254CX_get(x, y, P)
    ccall((:ECP_BN254CX_get, libamcl_curve_BN254CX), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_BN254CX}), x, y, P)
end

function ECP_BN254CX_add(P, Q)
    ccall((:ECP_BN254CX_add, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX}, Ptr{ECP_BN254CX}), P, Q)
end

function ECP_BN254CX_sub(P, Q)
    ccall((:ECP_BN254CX_sub, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX}, Ptr{ECP_BN254CX}), P, Q)
end

function ECP_BN254CX_setx(P, x, s)
    ccall((:ECP_BN254CX_setx, libamcl_curve_BN254CX), Cint, (Ptr{ECP_BN254CX}, BIG_256_56, Cint), P, x, s)
end

function ECP_BN254CX_cfp(Q)
    ccall((:ECP_BN254CX_cfp, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX},), Q)
end

function ECP_BN254CX_mapit(Q, w)
    ccall((:ECP_BN254CX_mapit, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX}, Ptr{octet}), Q, w)
end

function ECP_BN254CX_affine(P)
    ccall((:ECP_BN254CX_affine, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX},), P)
end

function ECP_BN254CX_outputxyz(P)
    ccall((:ECP_BN254CX_outputxyz, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX},), P)
end

function ECP_BN254CX_output(P)
    ccall((:ECP_BN254CX_output, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX},), P)
end

function ECP_BN254CX_rawoutput(P)
    ccall((:ECP_BN254CX_rawoutput, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX},), P)
end

function ECP_BN254CX_toOctet(S, P, c)
    ccall((:ECP_BN254CX_toOctet, libamcl_curve_BN254CX), Cvoid, (Ptr{octet}, Ptr{ECP_BN254CX}, Bool), S, P, c)
end

function ECP_BN254CX_fromOctet(P, S)
    ccall((:ECP_BN254CX_fromOctet, libamcl_curve_BN254CX), Cint, (Ptr{ECP_BN254CX}, Ptr{octet}), P, S)
end

function ECP_BN254CX_dbl(P)
    ccall((:ECP_BN254CX_dbl, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX},), P)
end

function ECP_BN254CX_pinmul(P, i, b)
    ccall((:ECP_BN254CX_pinmul, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX}, Cint, Cint), P, i, b)
end

function ECP_BN254CX_mul(P, b)
    ccall((:ECP_BN254CX_mul, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX}, BIG_256_56), P, b)
end

function ECP_BN254CX_mul2(P, Q, e, f)
    ccall((:ECP_BN254CX_mul2, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX}, Ptr{ECP_BN254CX}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_BN254CX_generator(G)
    ccall((:ECP_BN254CX_generator, libamcl_curve_BN254CX), Cvoid, (Ptr{ECP_BN254CX},), G)
end
# Julia wrapper for header: ecp_BRAINPOOL.h
# Automatically generated using Clang.jl


function ECP_BRAINPOOL_isinf(P)
    ccall((:ECP_BRAINPOOL_isinf, libamcl_curve_BRAINPOOL), Cint, (Ptr{ECP_BRAINPOOL},), P)
end

function ECP_BRAINPOOL_equals(P, Q)
    ccall((:ECP_BRAINPOOL_equals, libamcl_curve_BRAINPOOL), Cint, (Ptr{ECP_BRAINPOOL}, Ptr{ECP_BRAINPOOL}), P, Q)
end

function ECP_BRAINPOOL_copy(P, Q)
    ccall((:ECP_BRAINPOOL_copy, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL}, Ptr{ECP_BRAINPOOL}), P, Q)
end

function ECP_BRAINPOOL_neg(P)
    ccall((:ECP_BRAINPOOL_neg, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL},), P)
end

function ECP_BRAINPOOL_inf(P)
    ccall((:ECP_BRAINPOOL_inf, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL},), P)
end

function ECP_BRAINPOOL_rhs(r, x)
    ccall((:ECP_BRAINPOOL_rhs, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), r, x)
end

function ECP_BRAINPOOL_set(P, x, y)
    ccall((:ECP_BRAINPOOL_set, libamcl_curve_BRAINPOOL), Cint, (Ptr{ECP_BRAINPOOL}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_BRAINPOOL_get(x, y, P)
    ccall((:ECP_BRAINPOOL_get, libamcl_curve_BRAINPOOL), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_BRAINPOOL}), x, y, P)
end

function ECP_BRAINPOOL_add(P, Q)
    ccall((:ECP_BRAINPOOL_add, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL}, Ptr{ECP_BRAINPOOL}), P, Q)
end

function ECP_BRAINPOOL_sub(P, Q)
    ccall((:ECP_BRAINPOOL_sub, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL}, Ptr{ECP_BRAINPOOL}), P, Q)
end

function ECP_BRAINPOOL_setx(P, x, s)
    ccall((:ECP_BRAINPOOL_setx, libamcl_curve_BRAINPOOL), Cint, (Ptr{ECP_BRAINPOOL}, BIG_256_56, Cint), P, x, s)
end

function ECP_BRAINPOOL_cfp(Q)
    ccall((:ECP_BRAINPOOL_cfp, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL},), Q)
end

function ECP_BRAINPOOL_mapit(Q, w)
    ccall((:ECP_BRAINPOOL_mapit, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL}, Ptr{octet}), Q, w)
end

function ECP_BRAINPOOL_affine(P)
    ccall((:ECP_BRAINPOOL_affine, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL},), P)
end

function ECP_BRAINPOOL_outputxyz(P)
    ccall((:ECP_BRAINPOOL_outputxyz, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL},), P)
end

function ECP_BRAINPOOL_output(P)
    ccall((:ECP_BRAINPOOL_output, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL},), P)
end

function ECP_BRAINPOOL_rawoutput(P)
    ccall((:ECP_BRAINPOOL_rawoutput, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL},), P)
end

function ECP_BRAINPOOL_toOctet(S, P, c)
    ccall((:ECP_BRAINPOOL_toOctet, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{octet}, Ptr{ECP_BRAINPOOL}, Bool), S, P, c)
end

function ECP_BRAINPOOL_fromOctet(P, S)
    ccall((:ECP_BRAINPOOL_fromOctet, libamcl_curve_BRAINPOOL), Cint, (Ptr{ECP_BRAINPOOL}, Ptr{octet}), P, S)
end

function ECP_BRAINPOOL_dbl(P)
    ccall((:ECP_BRAINPOOL_dbl, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL},), P)
end

function ECP_BRAINPOOL_pinmul(P, i, b)
    ccall((:ECP_BRAINPOOL_pinmul, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL}, Cint, Cint), P, i, b)
end

function ECP_BRAINPOOL_mul(P, b)
    ccall((:ECP_BRAINPOOL_mul, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL}, BIG_256_56), P, b)
end

function ECP_BRAINPOOL_mul2(P, Q, e, f)
    ccall((:ECP_BRAINPOOL_mul2, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL}, Ptr{ECP_BRAINPOOL}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_BRAINPOOL_generator(G)
    ccall((:ECP_BRAINPOOL_generator, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{ECP_BRAINPOOL},), G)
end
# Julia wrapper for header: ecp_C25519.h
# Automatically generated using Clang.jl


function ECP_C25519_isinf(P)
    ccall((:ECP_C25519_isinf, libamcl_curve_C25519), Cint, (Ptr{ECP_C25519},), P)
end

function ECP_C25519_equals(P, Q)
    ccall((:ECP_C25519_equals, libamcl_curve_C25519), Cint, (Ptr{ECP_C25519}, Ptr{ECP_C25519}), P, Q)
end

function ECP_C25519_copy(P, Q)
    ccall((:ECP_C25519_copy, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519}, Ptr{ECP_C25519}), P, Q)
end

function ECP_C25519_neg(P)
    ccall((:ECP_C25519_neg, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519},), P)
end

function ECP_C25519_inf(P)
    ccall((:ECP_C25519_inf, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519},), P)
end

function ECP_C25519_rhs(r, x)
    ccall((:ECP_C25519_rhs, libamcl_curve_C25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}), r, x)
end

function ECP_C25519_set(P, x)
    ccall((:ECP_C25519_set, libamcl_curve_C25519), Cint, (Ptr{ECP_C25519}, BIG_256_56), P, x)
end

function ECP_C25519_get(x, P)
    ccall((:ECP_C25519_get, libamcl_curve_C25519), Cint, (BIG_256_56, Ptr{ECP_C25519}), x, P)
end

function ECP_C25519_add(P, Q, D)
    ccall((:ECP_C25519_add, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519}, Ptr{ECP_C25519}, Ptr{ECP_C25519}), P, Q, D)
end

function ECP_C25519_cfp(Q)
    ccall((:ECP_C25519_cfp, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519},), Q)
end

function ECP_C25519_mapit(Q, w)
    ccall((:ECP_C25519_mapit, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519}, Ptr{octet}), Q, w)
end

function ECP_C25519_affine(P)
    ccall((:ECP_C25519_affine, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519},), P)
end

function ECP_C25519_outputxyz(P)
    ccall((:ECP_C25519_outputxyz, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519},), P)
end

function ECP_C25519_output(P)
    ccall((:ECP_C25519_output, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519},), P)
end

function ECP_C25519_rawoutput(P)
    ccall((:ECP_C25519_rawoutput, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519},), P)
end

function ECP_C25519_toOctet(S, P, c)
    ccall((:ECP_C25519_toOctet, libamcl_curve_C25519), Cvoid, (Ptr{octet}, Ptr{ECP_C25519}, Bool), S, P, c)
end

function ECP_C25519_fromOctet(P, S)
    ccall((:ECP_C25519_fromOctet, libamcl_curve_C25519), Cint, (Ptr{ECP_C25519}, Ptr{octet}), P, S)
end

function ECP_C25519_dbl(P)
    ccall((:ECP_C25519_dbl, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519},), P)
end

function ECP_C25519_pinmul(P, i, b)
    ccall((:ECP_C25519_pinmul, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519}, Cint, Cint), P, i, b)
end

function ECP_C25519_mul(P, b)
    ccall((:ECP_C25519_mul, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519}, BIG_256_56), P, b)
end

function ECP_C25519_mul2(P, Q, e, f)
    ccall((:ECP_C25519_mul2, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519}, Ptr{ECP_C25519}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_C25519_generator(G)
    ccall((:ECP_C25519_generator, libamcl_curve_C25519), Cvoid, (Ptr{ECP_C25519},), G)
end
# Julia wrapper for header: ecp_C41417.h
# Automatically generated using Clang.jl


function ECP_C41417_isinf(P)
    ccall((:ECP_C41417_isinf, libamcl_curve_C41417), Cint, (Ptr{ECP_C41417},), P)
end

function ECP_C41417_equals(P, Q)
    ccall((:ECP_C41417_equals, libamcl_curve_C41417), Cint, (Ptr{ECP_C41417}, Ptr{ECP_C41417}), P, Q)
end

function ECP_C41417_copy(P, Q)
    ccall((:ECP_C41417_copy, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417}, Ptr{ECP_C41417}), P, Q)
end

function ECP_C41417_neg(P)
    ccall((:ECP_C41417_neg, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417},), P)
end

function ECP_C41417_inf(P)
    ccall((:ECP_C41417_inf, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417},), P)
end

function ECP_C41417_rhs(r, x)
    ccall((:ECP_C41417_rhs, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}), r, x)
end

function ECP_C41417_set(P, x, y)
    ccall((:ECP_C41417_set, libamcl_curve_C41417), Cint, (Ptr{ECP_C41417}, BIG_416_60, BIG_416_60), P, x, y)
end

function ECP_C41417_get(x, y, P)
    ccall((:ECP_C41417_get, libamcl_curve_C41417), Cint, (BIG_416_60, BIG_416_60, Ptr{ECP_C41417}), x, y, P)
end

function ECP_C41417_add(P, Q)
    ccall((:ECP_C41417_add, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417}, Ptr{ECP_C41417}), P, Q)
end

function ECP_C41417_sub(P, Q)
    ccall((:ECP_C41417_sub, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417}, Ptr{ECP_C41417}), P, Q)
end

function ECP_C41417_setx(P, x, s)
    ccall((:ECP_C41417_setx, libamcl_curve_C41417), Cint, (Ptr{ECP_C41417}, BIG_416_60, Cint), P, x, s)
end

function ECP_C41417_cfp(Q)
    ccall((:ECP_C41417_cfp, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417},), Q)
end

function ECP_C41417_mapit(Q, w)
    ccall((:ECP_C41417_mapit, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417}, Ptr{octet}), Q, w)
end

function ECP_C41417_affine(P)
    ccall((:ECP_C41417_affine, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417},), P)
end

function ECP_C41417_outputxyz(P)
    ccall((:ECP_C41417_outputxyz, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417},), P)
end

function ECP_C41417_output(P)
    ccall((:ECP_C41417_output, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417},), P)
end

function ECP_C41417_rawoutput(P)
    ccall((:ECP_C41417_rawoutput, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417},), P)
end

function ECP_C41417_toOctet(S, P, c)
    ccall((:ECP_C41417_toOctet, libamcl_curve_C41417), Cvoid, (Ptr{octet}, Ptr{ECP_C41417}, Bool), S, P, c)
end

function ECP_C41417_fromOctet(P, S)
    ccall((:ECP_C41417_fromOctet, libamcl_curve_C41417), Cint, (Ptr{ECP_C41417}, Ptr{octet}), P, S)
end

function ECP_C41417_dbl(P)
    ccall((:ECP_C41417_dbl, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417},), P)
end

function ECP_C41417_pinmul(P, i, b)
    ccall((:ECP_C41417_pinmul, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417}, Cint, Cint), P, i, b)
end

function ECP_C41417_mul(P, b)
    ccall((:ECP_C41417_mul, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417}, BIG_416_60), P, b)
end

function ECP_C41417_mul2(P, Q, e, f)
    ccall((:ECP_C41417_mul2, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417}, Ptr{ECP_C41417}, BIG_416_60, BIG_416_60), P, Q, e, f)
end

function ECP_C41417_generator(G)
    ccall((:ECP_C41417_generator, libamcl_curve_C41417), Cvoid, (Ptr{ECP_C41417},), G)
end
# Julia wrapper for header: ecp_ED25519.h
# Automatically generated using Clang.jl


function ECP_ED25519_isinf(P)
    ccall((:ECP_ED25519_isinf, libamcl_curve_ED25519), Cint, (Ptr{ECP_ED25519},), P)
end

function ECP_ED25519_equals(P, Q)
    ccall((:ECP_ED25519_equals, libamcl_curve_ED25519), Cint, (Ptr{ECP_ED25519}, Ptr{ECP_ED25519}), P, Q)
end

function ECP_ED25519_copy(P, Q)
    ccall((:ECP_ED25519_copy, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519}, Ptr{ECP_ED25519}), P, Q)
end

function ECP_ED25519_neg(P)
    ccall((:ECP_ED25519_neg, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519},), P)
end

function ECP_ED25519_inf(P)
    ccall((:ECP_ED25519_inf, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519},), P)
end

function ECP_ED25519_rhs(r, x)
    ccall((:ECP_ED25519_rhs, libamcl_curve_ED25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}), r, x)
end

function ECP_ED25519_set(P, x, y)
    ccall((:ECP_ED25519_set, libamcl_curve_ED25519), Cint, (Ptr{ECP_ED25519}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_ED25519_get(x, y, P)
    ccall((:ECP_ED25519_get, libamcl_curve_ED25519), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_ED25519}), x, y, P)
end

function ECP_ED25519_add(P, Q)
    ccall((:ECP_ED25519_add, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519}, Ptr{ECP_ED25519}), P, Q)
end

function ECP_ED25519_sub(P, Q)
    ccall((:ECP_ED25519_sub, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519}, Ptr{ECP_ED25519}), P, Q)
end

function ECP_ED25519_setx(P, x, s)
    ccall((:ECP_ED25519_setx, libamcl_curve_ED25519), Cint, (Ptr{ECP_ED25519}, BIG_256_56, Cint), P, x, s)
end

function ECP_ED25519_cfp(Q)
    ccall((:ECP_ED25519_cfp, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519},), Q)
end

function ECP_ED25519_mapit(Q, w)
    ccall((:ECP_ED25519_mapit, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519}, Ptr{octet}), Q, w)
end

function ECP_ED25519_affine(P)
    ccall((:ECP_ED25519_affine, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519},), P)
end

function ECP_ED25519_outputxyz(P)
    ccall((:ECP_ED25519_outputxyz, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519},), P)
end

function ECP_ED25519_output(P)
    ccall((:ECP_ED25519_output, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519},), P)
end

function ECP_ED25519_rawoutput(P)
    ccall((:ECP_ED25519_rawoutput, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519},), P)
end

function ECP_ED25519_toOctet(S, P, c)
    ccall((:ECP_ED25519_toOctet, libamcl_curve_ED25519), Cvoid, (Ptr{octet}, Ptr{ECP_ED25519}, Bool), S, P, c)
end

function ECP_ED25519_fromOctet(P, S)
    ccall((:ECP_ED25519_fromOctet, libamcl_curve_ED25519), Cint, (Ptr{ECP_ED25519}, Ptr{octet}), P, S)
end

function ECP_ED25519_dbl(P)
    ccall((:ECP_ED25519_dbl, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519},), P)
end

function ECP_ED25519_pinmul(P, i, b)
    ccall((:ECP_ED25519_pinmul, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519}, Cint, Cint), P, i, b)
end

function ECP_ED25519_mul(P, b)
    ccall((:ECP_ED25519_mul, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519}, BIG_256_56), P, b)
end

function ECP_ED25519_mul2(P, Q, e, f)
    ccall((:ECP_ED25519_mul2, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519}, Ptr{ECP_ED25519}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_ED25519_generator(G)
    ccall((:ECP_ED25519_generator, libamcl_curve_ED25519), Cvoid, (Ptr{ECP_ED25519},), G)
end
# Julia wrapper for header: ecp_FP256BN.h
# Automatically generated using Clang.jl


function ECP_FP256BN_isinf(P)
    ccall((:ECP_FP256BN_isinf, libamcl_curve_FP256BN), Cint, (Ptr{ECP_FP256BN},), P)
end

function ECP_FP256BN_equals(P, Q)
    ccall((:ECP_FP256BN_equals, libamcl_curve_FP256BN), Cint, (Ptr{ECP_FP256BN}, Ptr{ECP_FP256BN}), P, Q)
end

function ECP_FP256BN_copy(P, Q)
    ccall((:ECP_FP256BN_copy, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN}, Ptr{ECP_FP256BN}), P, Q)
end

function ECP_FP256BN_neg(P)
    ccall((:ECP_FP256BN_neg, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN},), P)
end

function ECP_FP256BN_inf(P)
    ccall((:ECP_FP256BN_inf, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN},), P)
end

function ECP_FP256BN_rhs(r, x)
    ccall((:ECP_FP256BN_rhs, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), r, x)
end

function ECP_FP256BN_set(P, x, y)
    ccall((:ECP_FP256BN_set, libamcl_curve_FP256BN), Cint, (Ptr{ECP_FP256BN}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_FP256BN_get(x, y, P)
    ccall((:ECP_FP256BN_get, libamcl_curve_FP256BN), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_FP256BN}), x, y, P)
end

function ECP_FP256BN_add(P, Q)
    ccall((:ECP_FP256BN_add, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN}, Ptr{ECP_FP256BN}), P, Q)
end

function ECP_FP256BN_sub(P, Q)
    ccall((:ECP_FP256BN_sub, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN}, Ptr{ECP_FP256BN}), P, Q)
end

function ECP_FP256BN_setx(P, x, s)
    ccall((:ECP_FP256BN_setx, libamcl_curve_FP256BN), Cint, (Ptr{ECP_FP256BN}, BIG_256_56, Cint), P, x, s)
end

function ECP_FP256BN_cfp(Q)
    ccall((:ECP_FP256BN_cfp, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN},), Q)
end

function ECP_FP256BN_mapit(Q, w)
    ccall((:ECP_FP256BN_mapit, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN}, Ptr{octet}), Q, w)
end

function ECP_FP256BN_affine(P)
    ccall((:ECP_FP256BN_affine, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN},), P)
end

function ECP_FP256BN_outputxyz(P)
    ccall((:ECP_FP256BN_outputxyz, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN},), P)
end

function ECP_FP256BN_output(P)
    ccall((:ECP_FP256BN_output, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN},), P)
end

function ECP_FP256BN_rawoutput(P)
    ccall((:ECP_FP256BN_rawoutput, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN},), P)
end

function ECP_FP256BN_toOctet(S, P, c)
    ccall((:ECP_FP256BN_toOctet, libamcl_curve_FP256BN), Cvoid, (Ptr{octet}, Ptr{ECP_FP256BN}, Bool), S, P, c)
end

function ECP_FP256BN_fromOctet(P, S)
    ccall((:ECP_FP256BN_fromOctet, libamcl_curve_FP256BN), Cint, (Ptr{ECP_FP256BN}, Ptr{octet}), P, S)
end

function ECP_FP256BN_dbl(P)
    ccall((:ECP_FP256BN_dbl, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN},), P)
end

function ECP_FP256BN_pinmul(P, i, b)
    ccall((:ECP_FP256BN_pinmul, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN}, Cint, Cint), P, i, b)
end

function ECP_FP256BN_mul(P, b)
    ccall((:ECP_FP256BN_mul, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN}, BIG_256_56), P, b)
end

function ECP_FP256BN_mul2(P, Q, e, f)
    ccall((:ECP_FP256BN_mul2, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN}, Ptr{ECP_FP256BN}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_FP256BN_generator(G)
    ccall((:ECP_FP256BN_generator, libamcl_curve_FP256BN), Cvoid, (Ptr{ECP_FP256BN},), G)
end
# Julia wrapper for header: ecp_FP512BN.h
# Automatically generated using Clang.jl


function ECP_FP512BN_isinf(P)
    ccall((:ECP_FP512BN_isinf, libamcl_curve_FP512BN), Cint, (Ptr{ECP_FP512BN},), P)
end

function ECP_FP512BN_equals(P, Q)
    ccall((:ECP_FP512BN_equals, libamcl_curve_FP512BN), Cint, (Ptr{ECP_FP512BN}, Ptr{ECP_FP512BN}), P, Q)
end

function ECP_FP512BN_copy(P, Q)
    ccall((:ECP_FP512BN_copy, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN}, Ptr{ECP_FP512BN}), P, Q)
end

function ECP_FP512BN_neg(P)
    ccall((:ECP_FP512BN_neg, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN},), P)
end

function ECP_FP512BN_inf(P)
    ccall((:ECP_FP512BN_inf, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN},), P)
end

function ECP_FP512BN_rhs(r, x)
    ccall((:ECP_FP512BN_rhs, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), r, x)
end

function ECP_FP512BN_set(P, x, y)
    ccall((:ECP_FP512BN_set, libamcl_curve_FP512BN), Cint, (Ptr{ECP_FP512BN}, BIG_512_60, BIG_512_60), P, x, y)
end

function ECP_FP512BN_get(x, y, P)
    ccall((:ECP_FP512BN_get, libamcl_curve_FP512BN), Cint, (BIG_512_60, BIG_512_60, Ptr{ECP_FP512BN}), x, y, P)
end

function ECP_FP512BN_add(P, Q)
    ccall((:ECP_FP512BN_add, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN}, Ptr{ECP_FP512BN}), P, Q)
end

function ECP_FP512BN_sub(P, Q)
    ccall((:ECP_FP512BN_sub, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN}, Ptr{ECP_FP512BN}), P, Q)
end

function ECP_FP512BN_setx(P, x, s)
    ccall((:ECP_FP512BN_setx, libamcl_curve_FP512BN), Cint, (Ptr{ECP_FP512BN}, BIG_512_60, Cint), P, x, s)
end

function ECP_FP512BN_cfp(Q)
    ccall((:ECP_FP512BN_cfp, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN},), Q)
end

function ECP_FP512BN_mapit(Q, w)
    ccall((:ECP_FP512BN_mapit, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN}, Ptr{octet}), Q, w)
end

function ECP_FP512BN_affine(P)
    ccall((:ECP_FP512BN_affine, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN},), P)
end

function ECP_FP512BN_outputxyz(P)
    ccall((:ECP_FP512BN_outputxyz, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN},), P)
end

function ECP_FP512BN_output(P)
    ccall((:ECP_FP512BN_output, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN},), P)
end

function ECP_FP512BN_rawoutput(P)
    ccall((:ECP_FP512BN_rawoutput, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN},), P)
end

function ECP_FP512BN_toOctet(S, P, c)
    ccall((:ECP_FP512BN_toOctet, libamcl_curve_FP512BN), Cvoid, (Ptr{octet}, Ptr{ECP_FP512BN}, Bool), S, P, c)
end

function ECP_FP512BN_fromOctet(P, S)
    ccall((:ECP_FP512BN_fromOctet, libamcl_curve_FP512BN), Cint, (Ptr{ECP_FP512BN}, Ptr{octet}), P, S)
end

function ECP_FP512BN_dbl(P)
    ccall((:ECP_FP512BN_dbl, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN},), P)
end

function ECP_FP512BN_pinmul(P, i, b)
    ccall((:ECP_FP512BN_pinmul, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN}, Cint, Cint), P, i, b)
end

function ECP_FP512BN_mul(P, b)
    ccall((:ECP_FP512BN_mul, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN}, BIG_512_60), P, b)
end

function ECP_FP512BN_mul2(P, Q, e, f)
    ccall((:ECP_FP512BN_mul2, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN}, Ptr{ECP_FP512BN}, BIG_512_60, BIG_512_60), P, Q, e, f)
end

function ECP_FP512BN_generator(G)
    ccall((:ECP_FP512BN_generator, libamcl_curve_FP512BN), Cvoid, (Ptr{ECP_FP512BN},), G)
end
# Julia wrapper for header: ecp_GOLDILOCKS.h
# Automatically generated using Clang.jl


function ECP_GOLDILOCKS_isinf(P)
    ccall((:ECP_GOLDILOCKS_isinf, libamcl_curve_GOLDILOCKS), Cint, (Ptr{ECP_GOLDILOCKS},), P)
end

function ECP_GOLDILOCKS_equals(P, Q)
    ccall((:ECP_GOLDILOCKS_equals, libamcl_curve_GOLDILOCKS), Cint, (Ptr{ECP_GOLDILOCKS}, Ptr{ECP_GOLDILOCKS}), P, Q)
end

function ECP_GOLDILOCKS_copy(P, Q)
    ccall((:ECP_GOLDILOCKS_copy, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS}, Ptr{ECP_GOLDILOCKS}), P, Q)
end

function ECP_GOLDILOCKS_neg(P)
    ccall((:ECP_GOLDILOCKS_neg, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS},), P)
end

function ECP_GOLDILOCKS_inf(P)
    ccall((:ECP_GOLDILOCKS_inf, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS},), P)
end

function ECP_GOLDILOCKS_rhs(r, x)
    ccall((:ECP_GOLDILOCKS_rhs, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), r, x)
end

function ECP_GOLDILOCKS_set(P, x, y)
    ccall((:ECP_GOLDILOCKS_set, libamcl_curve_GOLDILOCKS), Cint, (Ptr{ECP_GOLDILOCKS}, BIG_448_58, BIG_448_58), P, x, y)
end

function ECP_GOLDILOCKS_get(x, y, P)
    ccall((:ECP_GOLDILOCKS_get, libamcl_curve_GOLDILOCKS), Cint, (BIG_448_58, BIG_448_58, Ptr{ECP_GOLDILOCKS}), x, y, P)
end

function ECP_GOLDILOCKS_add(P, Q)
    ccall((:ECP_GOLDILOCKS_add, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS}, Ptr{ECP_GOLDILOCKS}), P, Q)
end

function ECP_GOLDILOCKS_sub(P, Q)
    ccall((:ECP_GOLDILOCKS_sub, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS}, Ptr{ECP_GOLDILOCKS}), P, Q)
end

function ECP_GOLDILOCKS_setx(P, x, s)
    ccall((:ECP_GOLDILOCKS_setx, libamcl_curve_GOLDILOCKS), Cint, (Ptr{ECP_GOLDILOCKS}, BIG_448_58, Cint), P, x, s)
end

function ECP_GOLDILOCKS_cfp(Q)
    ccall((:ECP_GOLDILOCKS_cfp, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS},), Q)
end

function ECP_GOLDILOCKS_mapit(Q, w)
    ccall((:ECP_GOLDILOCKS_mapit, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS}, Ptr{octet}), Q, w)
end

function ECP_GOLDILOCKS_affine(P)
    ccall((:ECP_GOLDILOCKS_affine, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS},), P)
end

function ECP_GOLDILOCKS_outputxyz(P)
    ccall((:ECP_GOLDILOCKS_outputxyz, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS},), P)
end

function ECP_GOLDILOCKS_output(P)
    ccall((:ECP_GOLDILOCKS_output, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS},), P)
end

function ECP_GOLDILOCKS_rawoutput(P)
    ccall((:ECP_GOLDILOCKS_rawoutput, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS},), P)
end

function ECP_GOLDILOCKS_toOctet(S, P, c)
    ccall((:ECP_GOLDILOCKS_toOctet, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{octet}, Ptr{ECP_GOLDILOCKS}, Bool), S, P, c)
end

function ECP_GOLDILOCKS_fromOctet(P, S)
    ccall((:ECP_GOLDILOCKS_fromOctet, libamcl_curve_GOLDILOCKS), Cint, (Ptr{ECP_GOLDILOCKS}, Ptr{octet}), P, S)
end

function ECP_GOLDILOCKS_dbl(P)
    ccall((:ECP_GOLDILOCKS_dbl, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS},), P)
end

function ECP_GOLDILOCKS_pinmul(P, i, b)
    ccall((:ECP_GOLDILOCKS_pinmul, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS}, Cint, Cint), P, i, b)
end

function ECP_GOLDILOCKS_mul(P, b)
    ccall((:ECP_GOLDILOCKS_mul, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS}, BIG_448_58), P, b)
end

function ECP_GOLDILOCKS_mul2(P, Q, e, f)
    ccall((:ECP_GOLDILOCKS_mul2, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS}, Ptr{ECP_GOLDILOCKS}, BIG_448_58, BIG_448_58), P, Q, e, f)
end

function ECP_GOLDILOCKS_generator(G)
    ccall((:ECP_GOLDILOCKS_generator, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{ECP_GOLDILOCKS},), G)
end
# Julia wrapper for header: ecp_HIFIVE.h
# Automatically generated using Clang.jl


function ECP_HIFIVE_isinf(P)
    ccall((:ECP_HIFIVE_isinf, libamcl_curve_HIFIVE), Cint, (Ptr{ECP_HIFIVE},), P)
end

function ECP_HIFIVE_equals(P, Q)
    ccall((:ECP_HIFIVE_equals, libamcl_curve_HIFIVE), Cint, (Ptr{ECP_HIFIVE}, Ptr{ECP_HIFIVE}), P, Q)
end

function ECP_HIFIVE_copy(P, Q)
    ccall((:ECP_HIFIVE_copy, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE}, Ptr{ECP_HIFIVE}), P, Q)
end

function ECP_HIFIVE_neg(P)
    ccall((:ECP_HIFIVE_neg, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE},), P)
end

function ECP_HIFIVE_inf(P)
    ccall((:ECP_HIFIVE_inf, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE},), P)
end

function ECP_HIFIVE_rhs(r, x)
    ccall((:ECP_HIFIVE_rhs, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), r, x)
end

function ECP_HIFIVE_set(P, x, y)
    ccall((:ECP_HIFIVE_set, libamcl_curve_HIFIVE), Cint, (Ptr{ECP_HIFIVE}, BIG_336_60, BIG_336_60), P, x, y)
end

function ECP_HIFIVE_get(x, y, P)
    ccall((:ECP_HIFIVE_get, libamcl_curve_HIFIVE), Cint, (BIG_336_60, BIG_336_60, Ptr{ECP_HIFIVE}), x, y, P)
end

function ECP_HIFIVE_add(P, Q)
    ccall((:ECP_HIFIVE_add, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE}, Ptr{ECP_HIFIVE}), P, Q)
end

function ECP_HIFIVE_sub(P, Q)
    ccall((:ECP_HIFIVE_sub, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE}, Ptr{ECP_HIFIVE}), P, Q)
end

function ECP_HIFIVE_setx(P, x, s)
    ccall((:ECP_HIFIVE_setx, libamcl_curve_HIFIVE), Cint, (Ptr{ECP_HIFIVE}, BIG_336_60, Cint), P, x, s)
end

function ECP_HIFIVE_cfp(Q)
    ccall((:ECP_HIFIVE_cfp, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE},), Q)
end

function ECP_HIFIVE_mapit(Q, w)
    ccall((:ECP_HIFIVE_mapit, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE}, Ptr{octet}), Q, w)
end

function ECP_HIFIVE_affine(P)
    ccall((:ECP_HIFIVE_affine, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE},), P)
end

function ECP_HIFIVE_outputxyz(P)
    ccall((:ECP_HIFIVE_outputxyz, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE},), P)
end

function ECP_HIFIVE_output(P)
    ccall((:ECP_HIFIVE_output, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE},), P)
end

function ECP_HIFIVE_rawoutput(P)
    ccall((:ECP_HIFIVE_rawoutput, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE},), P)
end

function ECP_HIFIVE_toOctet(S, P, c)
    ccall((:ECP_HIFIVE_toOctet, libamcl_curve_HIFIVE), Cvoid, (Ptr{octet}, Ptr{ECP_HIFIVE}, Bool), S, P, c)
end

function ECP_HIFIVE_fromOctet(P, S)
    ccall((:ECP_HIFIVE_fromOctet, libamcl_curve_HIFIVE), Cint, (Ptr{ECP_HIFIVE}, Ptr{octet}), P, S)
end

function ECP_HIFIVE_dbl(P)
    ccall((:ECP_HIFIVE_dbl, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE},), P)
end

function ECP_HIFIVE_pinmul(P, i, b)
    ccall((:ECP_HIFIVE_pinmul, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE}, Cint, Cint), P, i, b)
end

function ECP_HIFIVE_mul(P, b)
    ccall((:ECP_HIFIVE_mul, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE}, BIG_336_60), P, b)
end

function ECP_HIFIVE_mul2(P, Q, e, f)
    ccall((:ECP_HIFIVE_mul2, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE}, Ptr{ECP_HIFIVE}, BIG_336_60, BIG_336_60), P, Q, e, f)
end

function ECP_HIFIVE_generator(G)
    ccall((:ECP_HIFIVE_generator, libamcl_curve_HIFIVE), Cvoid, (Ptr{ECP_HIFIVE},), G)
end
# Julia wrapper for header: ecp_NIST256.h
# Automatically generated using Clang.jl


function ECP_NIST256_isinf(P)
    ccall((:ECP_NIST256_isinf, libamcl_curve_NIST256), Cint, (Ptr{ECP_NIST256},), P)
end

function ECP_NIST256_equals(P, Q)
    ccall((:ECP_NIST256_equals, libamcl_curve_NIST256), Cint, (Ptr{ECP_NIST256}, Ptr{ECP_NIST256}), P, Q)
end

function ECP_NIST256_copy(P, Q)
    ccall((:ECP_NIST256_copy, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256}, Ptr{ECP_NIST256}), P, Q)
end

function ECP_NIST256_neg(P)
    ccall((:ECP_NIST256_neg, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256},), P)
end

function ECP_NIST256_inf(P)
    ccall((:ECP_NIST256_inf, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256},), P)
end

function ECP_NIST256_rhs(r, x)
    ccall((:ECP_NIST256_rhs, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}), r, x)
end

function ECP_NIST256_set(P, x, y)
    ccall((:ECP_NIST256_set, libamcl_curve_NIST256), Cint, (Ptr{ECP_NIST256}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_NIST256_get(x, y, P)
    ccall((:ECP_NIST256_get, libamcl_curve_NIST256), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_NIST256}), x, y, P)
end

function ECP_NIST256_add(P, Q)
    ccall((:ECP_NIST256_add, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256}, Ptr{ECP_NIST256}), P, Q)
end

function ECP_NIST256_sub(P, Q)
    ccall((:ECP_NIST256_sub, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256}, Ptr{ECP_NIST256}), P, Q)
end

function ECP_NIST256_setx(P, x, s)
    ccall((:ECP_NIST256_setx, libamcl_curve_NIST256), Cint, (Ptr{ECP_NIST256}, BIG_256_56, Cint), P, x, s)
end

function ECP_NIST256_cfp(Q)
    ccall((:ECP_NIST256_cfp, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256},), Q)
end

function ECP_NIST256_mapit(Q, w)
    ccall((:ECP_NIST256_mapit, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256}, Ptr{octet}), Q, w)
end

function ECP_NIST256_affine(P)
    ccall((:ECP_NIST256_affine, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256},), P)
end

function ECP_NIST256_outputxyz(P)
    ccall((:ECP_NIST256_outputxyz, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256},), P)
end

function ECP_NIST256_output(P)
    ccall((:ECP_NIST256_output, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256},), P)
end

function ECP_NIST256_rawoutput(P)
    ccall((:ECP_NIST256_rawoutput, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256},), P)
end

function ECP_NIST256_toOctet(S, P, c)
    ccall((:ECP_NIST256_toOctet, libamcl_curve_NIST256), Cvoid, (Ptr{octet}, Ptr{ECP_NIST256}, Bool), S, P, c)
end

function ECP_NIST256_fromOctet(P, S)
    ccall((:ECP_NIST256_fromOctet, libamcl_curve_NIST256), Cint, (Ptr{ECP_NIST256}, Ptr{octet}), P, S)
end

function ECP_NIST256_dbl(P)
    ccall((:ECP_NIST256_dbl, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256},), P)
end

function ECP_NIST256_pinmul(P, i, b)
    ccall((:ECP_NIST256_pinmul, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256}, Cint, Cint), P, i, b)
end

function ECP_NIST256_mul(P, b)
    ccall((:ECP_NIST256_mul, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256}, BIG_256_56), P, b)
end

function ECP_NIST256_mul2(P, Q, e, f)
    ccall((:ECP_NIST256_mul2, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256}, Ptr{ECP_NIST256}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_NIST256_generator(G)
    ccall((:ECP_NIST256_generator, libamcl_curve_NIST256), Cvoid, (Ptr{ECP_NIST256},), G)
end
# Julia wrapper for header: ecp_NIST384.h
# Automatically generated using Clang.jl


function ECP_NIST384_isinf(P)
    ccall((:ECP_NIST384_isinf, libamcl_curve_NIST384), Cint, (Ptr{ECP_NIST384},), P)
end

function ECP_NIST384_equals(P, Q)
    ccall((:ECP_NIST384_equals, libamcl_curve_NIST384), Cint, (Ptr{ECP_NIST384}, Ptr{ECP_NIST384}), P, Q)
end

function ECP_NIST384_copy(P, Q)
    ccall((:ECP_NIST384_copy, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384}, Ptr{ECP_NIST384}), P, Q)
end

function ECP_NIST384_neg(P)
    ccall((:ECP_NIST384_neg, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384},), P)
end

function ECP_NIST384_inf(P)
    ccall((:ECP_NIST384_inf, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384},), P)
end

function ECP_NIST384_rhs(r, x)
    ccall((:ECP_NIST384_rhs, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}), r, x)
end

function ECP_NIST384_set(P, x, y)
    ccall((:ECP_NIST384_set, libamcl_curve_NIST384), Cint, (Ptr{ECP_NIST384}, BIG_384_56, BIG_384_56), P, x, y)
end

function ECP_NIST384_get(x, y, P)
    ccall((:ECP_NIST384_get, libamcl_curve_NIST384), Cint, (BIG_384_56, BIG_384_56, Ptr{ECP_NIST384}), x, y, P)
end

function ECP_NIST384_add(P, Q)
    ccall((:ECP_NIST384_add, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384}, Ptr{ECP_NIST384}), P, Q)
end

function ECP_NIST384_sub(P, Q)
    ccall((:ECP_NIST384_sub, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384}, Ptr{ECP_NIST384}), P, Q)
end

function ECP_NIST384_setx(P, x, s)
    ccall((:ECP_NIST384_setx, libamcl_curve_NIST384), Cint, (Ptr{ECP_NIST384}, BIG_384_56, Cint), P, x, s)
end

function ECP_NIST384_cfp(Q)
    ccall((:ECP_NIST384_cfp, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384},), Q)
end

function ECP_NIST384_mapit(Q, w)
    ccall((:ECP_NIST384_mapit, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384}, Ptr{octet}), Q, w)
end

function ECP_NIST384_affine(P)
    ccall((:ECP_NIST384_affine, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384},), P)
end

function ECP_NIST384_outputxyz(P)
    ccall((:ECP_NIST384_outputxyz, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384},), P)
end

function ECP_NIST384_output(P)
    ccall((:ECP_NIST384_output, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384},), P)
end

function ECP_NIST384_rawoutput(P)
    ccall((:ECP_NIST384_rawoutput, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384},), P)
end

function ECP_NIST384_toOctet(S, P, c)
    ccall((:ECP_NIST384_toOctet, libamcl_curve_NIST384), Cvoid, (Ptr{octet}, Ptr{ECP_NIST384}, Bool), S, P, c)
end

function ECP_NIST384_fromOctet(P, S)
    ccall((:ECP_NIST384_fromOctet, libamcl_curve_NIST384), Cint, (Ptr{ECP_NIST384}, Ptr{octet}), P, S)
end

function ECP_NIST384_dbl(P)
    ccall((:ECP_NIST384_dbl, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384},), P)
end

function ECP_NIST384_pinmul(P, i, b)
    ccall((:ECP_NIST384_pinmul, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384}, Cint, Cint), P, i, b)
end

function ECP_NIST384_mul(P, b)
    ccall((:ECP_NIST384_mul, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384}, BIG_384_56), P, b)
end

function ECP_NIST384_mul2(P, Q, e, f)
    ccall((:ECP_NIST384_mul2, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384}, Ptr{ECP_NIST384}, BIG_384_56, BIG_384_56), P, Q, e, f)
end

function ECP_NIST384_generator(G)
    ccall((:ECP_NIST384_generator, libamcl_curve_NIST384), Cvoid, (Ptr{ECP_NIST384},), G)
end
# Julia wrapper for header: ecp_NIST521.h
# Automatically generated using Clang.jl


function ECP_NIST521_isinf(P)
    ccall((:ECP_NIST521_isinf, libamcl_curve_NIST521), Cint, (Ptr{ECP_NIST521},), P)
end

function ECP_NIST521_equals(P, Q)
    ccall((:ECP_NIST521_equals, libamcl_curve_NIST521), Cint, (Ptr{ECP_NIST521}, Ptr{ECP_NIST521}), P, Q)
end

function ECP_NIST521_copy(P, Q)
    ccall((:ECP_NIST521_copy, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521}, Ptr{ECP_NIST521}), P, Q)
end

function ECP_NIST521_neg(P)
    ccall((:ECP_NIST521_neg, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521},), P)
end

function ECP_NIST521_inf(P)
    ccall((:ECP_NIST521_inf, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521},), P)
end

function ECP_NIST521_rhs(r, x)
    ccall((:ECP_NIST521_rhs, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}), r, x)
end

function ECP_NIST521_set(P, x, y)
    ccall((:ECP_NIST521_set, libamcl_curve_NIST521), Cint, (Ptr{ECP_NIST521}, BIG_528_60, BIG_528_60), P, x, y)
end

function ECP_NIST521_get(x, y, P)
    ccall((:ECP_NIST521_get, libamcl_curve_NIST521), Cint, (BIG_528_60, BIG_528_60, Ptr{ECP_NIST521}), x, y, P)
end

function ECP_NIST521_add(P, Q)
    ccall((:ECP_NIST521_add, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521}, Ptr{ECP_NIST521}), P, Q)
end

function ECP_NIST521_sub(P, Q)
    ccall((:ECP_NIST521_sub, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521}, Ptr{ECP_NIST521}), P, Q)
end

function ECP_NIST521_setx(P, x, s)
    ccall((:ECP_NIST521_setx, libamcl_curve_NIST521), Cint, (Ptr{ECP_NIST521}, BIG_528_60, Cint), P, x, s)
end

function ECP_NIST521_cfp(Q)
    ccall((:ECP_NIST521_cfp, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521},), Q)
end

function ECP_NIST521_mapit(Q, w)
    ccall((:ECP_NIST521_mapit, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521}, Ptr{octet}), Q, w)
end

function ECP_NIST521_affine(P)
    ccall((:ECP_NIST521_affine, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521},), P)
end

function ECP_NIST521_outputxyz(P)
    ccall((:ECP_NIST521_outputxyz, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521},), P)
end

function ECP_NIST521_output(P)
    ccall((:ECP_NIST521_output, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521},), P)
end

function ECP_NIST521_rawoutput(P)
    ccall((:ECP_NIST521_rawoutput, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521},), P)
end

function ECP_NIST521_toOctet(S, P, c)
    ccall((:ECP_NIST521_toOctet, libamcl_curve_NIST521), Cvoid, (Ptr{octet}, Ptr{ECP_NIST521}, Bool), S, P, c)
end

function ECP_NIST521_fromOctet(P, S)
    ccall((:ECP_NIST521_fromOctet, libamcl_curve_NIST521), Cint, (Ptr{ECP_NIST521}, Ptr{octet}), P, S)
end

function ECP_NIST521_dbl(P)
    ccall((:ECP_NIST521_dbl, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521},), P)
end

function ECP_NIST521_pinmul(P, i, b)
    ccall((:ECP_NIST521_pinmul, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521}, Cint, Cint), P, i, b)
end

function ECP_NIST521_mul(P, b)
    ccall((:ECP_NIST521_mul, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521}, BIG_528_60), P, b)
end

function ECP_NIST521_mul2(P, Q, e, f)
    ccall((:ECP_NIST521_mul2, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521}, Ptr{ECP_NIST521}, BIG_528_60, BIG_528_60), P, Q, e, f)
end

function ECP_NIST521_generator(G)
    ccall((:ECP_NIST521_generator, libamcl_curve_NIST521), Cvoid, (Ptr{ECP_NIST521},), G)
end
# Julia wrapper for header: ecp_NUMS256E.h
# Automatically generated using Clang.jl


function ECP_NUMS256E_isinf(P)
    ccall((:ECP_NUMS256E_isinf, libamcl_curve_NUMS256E), Cint, (Ptr{ECP_NUMS256E},), P)
end

function ECP_NUMS256E_equals(P, Q)
    ccall((:ECP_NUMS256E_equals, libamcl_curve_NUMS256E), Cint, (Ptr{ECP_NUMS256E}, Ptr{ECP_NUMS256E}), P, Q)
end

function ECP_NUMS256E_copy(P, Q)
    ccall((:ECP_NUMS256E_copy, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E}, Ptr{ECP_NUMS256E}), P, Q)
end

function ECP_NUMS256E_neg(P)
    ccall((:ECP_NUMS256E_neg, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E},), P)
end

function ECP_NUMS256E_inf(P)
    ccall((:ECP_NUMS256E_inf, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E},), P)
end

function ECP_NUMS256E_rhs(r, x)
    ccall((:ECP_NUMS256E_rhs, libamcl_curve_NUMS256E), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}), r, x)
end

function ECP_NUMS256E_set(P, x, y)
    ccall((:ECP_NUMS256E_set, libamcl_curve_NUMS256E), Cint, (Ptr{ECP_NUMS256E}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_NUMS256E_get(x, y, P)
    ccall((:ECP_NUMS256E_get, libamcl_curve_NUMS256E), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_NUMS256E}), x, y, P)
end

function ECP_NUMS256E_add(P, Q)
    ccall((:ECP_NUMS256E_add, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E}, Ptr{ECP_NUMS256E}), P, Q)
end

function ECP_NUMS256E_sub(P, Q)
    ccall((:ECP_NUMS256E_sub, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E}, Ptr{ECP_NUMS256E}), P, Q)
end

function ECP_NUMS256E_setx(P, x, s)
    ccall((:ECP_NUMS256E_setx, libamcl_curve_NUMS256E), Cint, (Ptr{ECP_NUMS256E}, BIG_256_56, Cint), P, x, s)
end

function ECP_NUMS256E_cfp(Q)
    ccall((:ECP_NUMS256E_cfp, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E},), Q)
end

function ECP_NUMS256E_mapit(Q, w)
    ccall((:ECP_NUMS256E_mapit, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E}, Ptr{octet}), Q, w)
end

function ECP_NUMS256E_affine(P)
    ccall((:ECP_NUMS256E_affine, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E},), P)
end

function ECP_NUMS256E_outputxyz(P)
    ccall((:ECP_NUMS256E_outputxyz, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E},), P)
end

function ECP_NUMS256E_output(P)
    ccall((:ECP_NUMS256E_output, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E},), P)
end

function ECP_NUMS256E_rawoutput(P)
    ccall((:ECP_NUMS256E_rawoutput, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E},), P)
end

function ECP_NUMS256E_toOctet(S, P, c)
    ccall((:ECP_NUMS256E_toOctet, libamcl_curve_NUMS256E), Cvoid, (Ptr{octet}, Ptr{ECP_NUMS256E}, Bool), S, P, c)
end

function ECP_NUMS256E_fromOctet(P, S)
    ccall((:ECP_NUMS256E_fromOctet, libamcl_curve_NUMS256E), Cint, (Ptr{ECP_NUMS256E}, Ptr{octet}), P, S)
end

function ECP_NUMS256E_dbl(P)
    ccall((:ECP_NUMS256E_dbl, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E},), P)
end

function ECP_NUMS256E_pinmul(P, i, b)
    ccall((:ECP_NUMS256E_pinmul, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E}, Cint, Cint), P, i, b)
end

function ECP_NUMS256E_mul(P, b)
    ccall((:ECP_NUMS256E_mul, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E}, BIG_256_56), P, b)
end

function ECP_NUMS256E_mul2(P, Q, e, f)
    ccall((:ECP_NUMS256E_mul2, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E}, Ptr{ECP_NUMS256E}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_NUMS256E_generator(G)
    ccall((:ECP_NUMS256E_generator, libamcl_curve_NUMS256E), Cvoid, (Ptr{ECP_NUMS256E},), G)
end
# Julia wrapper for header: ecp_NUMS256W.h
# Automatically generated using Clang.jl


function ECP_NUMS256W_isinf(P)
    ccall((:ECP_NUMS256W_isinf, libamcl_curve_NUMS256W), Cint, (Ptr{ECP_NUMS256W},), P)
end

function ECP_NUMS256W_equals(P, Q)
    ccall((:ECP_NUMS256W_equals, libamcl_curve_NUMS256W), Cint, (Ptr{ECP_NUMS256W}, Ptr{ECP_NUMS256W}), P, Q)
end

function ECP_NUMS256W_copy(P, Q)
    ccall((:ECP_NUMS256W_copy, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W}, Ptr{ECP_NUMS256W}), P, Q)
end

function ECP_NUMS256W_neg(P)
    ccall((:ECP_NUMS256W_neg, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W},), P)
end

function ECP_NUMS256W_inf(P)
    ccall((:ECP_NUMS256W_inf, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W},), P)
end

function ECP_NUMS256W_rhs(r, x)
    ccall((:ECP_NUMS256W_rhs, libamcl_curve_NUMS256W), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}), r, x)
end

function ECP_NUMS256W_set(P, x, y)
    ccall((:ECP_NUMS256W_set, libamcl_curve_NUMS256W), Cint, (Ptr{ECP_NUMS256W}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_NUMS256W_get(x, y, P)
    ccall((:ECP_NUMS256W_get, libamcl_curve_NUMS256W), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_NUMS256W}), x, y, P)
end

function ECP_NUMS256W_add(P, Q)
    ccall((:ECP_NUMS256W_add, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W}, Ptr{ECP_NUMS256W}), P, Q)
end

function ECP_NUMS256W_sub(P, Q)
    ccall((:ECP_NUMS256W_sub, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W}, Ptr{ECP_NUMS256W}), P, Q)
end

function ECP_NUMS256W_setx(P, x, s)
    ccall((:ECP_NUMS256W_setx, libamcl_curve_NUMS256W), Cint, (Ptr{ECP_NUMS256W}, BIG_256_56, Cint), P, x, s)
end

function ECP_NUMS256W_cfp(Q)
    ccall((:ECP_NUMS256W_cfp, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W},), Q)
end

function ECP_NUMS256W_mapit(Q, w)
    ccall((:ECP_NUMS256W_mapit, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W}, Ptr{octet}), Q, w)
end

function ECP_NUMS256W_affine(P)
    ccall((:ECP_NUMS256W_affine, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W},), P)
end

function ECP_NUMS256W_outputxyz(P)
    ccall((:ECP_NUMS256W_outputxyz, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W},), P)
end

function ECP_NUMS256W_output(P)
    ccall((:ECP_NUMS256W_output, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W},), P)
end

function ECP_NUMS256W_rawoutput(P)
    ccall((:ECP_NUMS256W_rawoutput, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W},), P)
end

function ECP_NUMS256W_toOctet(S, P, c)
    ccall((:ECP_NUMS256W_toOctet, libamcl_curve_NUMS256W), Cvoid, (Ptr{octet}, Ptr{ECP_NUMS256W}, Bool), S, P, c)
end

function ECP_NUMS256W_fromOctet(P, S)
    ccall((:ECP_NUMS256W_fromOctet, libamcl_curve_NUMS256W), Cint, (Ptr{ECP_NUMS256W}, Ptr{octet}), P, S)
end

function ECP_NUMS256W_dbl(P)
    ccall((:ECP_NUMS256W_dbl, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W},), P)
end

function ECP_NUMS256W_pinmul(P, i, b)
    ccall((:ECP_NUMS256W_pinmul, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W}, Cint, Cint), P, i, b)
end

function ECP_NUMS256W_mul(P, b)
    ccall((:ECP_NUMS256W_mul, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W}, BIG_256_56), P, b)
end

function ECP_NUMS256W_mul2(P, Q, e, f)
    ccall((:ECP_NUMS256W_mul2, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W}, Ptr{ECP_NUMS256W}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_NUMS256W_generator(G)
    ccall((:ECP_NUMS256W_generator, libamcl_curve_NUMS256W), Cvoid, (Ptr{ECP_NUMS256W},), G)
end
# Julia wrapper for header: ecp_NUMS384E.h
# Automatically generated using Clang.jl


function ECP_NUMS384E_isinf(P)
    ccall((:ECP_NUMS384E_isinf, libamcl_curve_NUMS384E), Cint, (Ptr{ECP_NUMS384E},), P)
end

function ECP_NUMS384E_equals(P, Q)
    ccall((:ECP_NUMS384E_equals, libamcl_curve_NUMS384E), Cint, (Ptr{ECP_NUMS384E}, Ptr{ECP_NUMS384E}), P, Q)
end

function ECP_NUMS384E_copy(P, Q)
    ccall((:ECP_NUMS384E_copy, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E}, Ptr{ECP_NUMS384E}), P, Q)
end

function ECP_NUMS384E_neg(P)
    ccall((:ECP_NUMS384E_neg, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E},), P)
end

function ECP_NUMS384E_inf(P)
    ccall((:ECP_NUMS384E_inf, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E},), P)
end

function ECP_NUMS384E_rhs(r, x)
    ccall((:ECP_NUMS384E_rhs, libamcl_curve_NUMS384E), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}), r, x)
end

function ECP_NUMS384E_set(P, x, y)
    ccall((:ECP_NUMS384E_set, libamcl_curve_NUMS384E), Cint, (Ptr{ECP_NUMS384E}, BIG_384_56, BIG_384_56), P, x, y)
end

function ECP_NUMS384E_get(x, y, P)
    ccall((:ECP_NUMS384E_get, libamcl_curve_NUMS384E), Cint, (BIG_384_56, BIG_384_56, Ptr{ECP_NUMS384E}), x, y, P)
end

function ECP_NUMS384E_add(P, Q)
    ccall((:ECP_NUMS384E_add, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E}, Ptr{ECP_NUMS384E}), P, Q)
end

function ECP_NUMS384E_sub(P, Q)
    ccall((:ECP_NUMS384E_sub, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E}, Ptr{ECP_NUMS384E}), P, Q)
end

function ECP_NUMS384E_setx(P, x, s)
    ccall((:ECP_NUMS384E_setx, libamcl_curve_NUMS384E), Cint, (Ptr{ECP_NUMS384E}, BIG_384_56, Cint), P, x, s)
end

function ECP_NUMS384E_cfp(Q)
    ccall((:ECP_NUMS384E_cfp, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E},), Q)
end

function ECP_NUMS384E_mapit(Q, w)
    ccall((:ECP_NUMS384E_mapit, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E}, Ptr{octet}), Q, w)
end

function ECP_NUMS384E_affine(P)
    ccall((:ECP_NUMS384E_affine, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E},), P)
end

function ECP_NUMS384E_outputxyz(P)
    ccall((:ECP_NUMS384E_outputxyz, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E},), P)
end

function ECP_NUMS384E_output(P)
    ccall((:ECP_NUMS384E_output, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E},), P)
end

function ECP_NUMS384E_rawoutput(P)
    ccall((:ECP_NUMS384E_rawoutput, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E},), P)
end

function ECP_NUMS384E_toOctet(S, P, c)
    ccall((:ECP_NUMS384E_toOctet, libamcl_curve_NUMS384E), Cvoid, (Ptr{octet}, Ptr{ECP_NUMS384E}, Bool), S, P, c)
end

function ECP_NUMS384E_fromOctet(P, S)
    ccall((:ECP_NUMS384E_fromOctet, libamcl_curve_NUMS384E), Cint, (Ptr{ECP_NUMS384E}, Ptr{octet}), P, S)
end

function ECP_NUMS384E_dbl(P)
    ccall((:ECP_NUMS384E_dbl, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E},), P)
end

function ECP_NUMS384E_pinmul(P, i, b)
    ccall((:ECP_NUMS384E_pinmul, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E}, Cint, Cint), P, i, b)
end

function ECP_NUMS384E_mul(P, b)
    ccall((:ECP_NUMS384E_mul, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E}, BIG_384_56), P, b)
end

function ECP_NUMS384E_mul2(P, Q, e, f)
    ccall((:ECP_NUMS384E_mul2, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E}, Ptr{ECP_NUMS384E}, BIG_384_56, BIG_384_56), P, Q, e, f)
end

function ECP_NUMS384E_generator(G)
    ccall((:ECP_NUMS384E_generator, libamcl_curve_NUMS384E), Cvoid, (Ptr{ECP_NUMS384E},), G)
end
# Julia wrapper for header: ecp_NUMS384W.h
# Automatically generated using Clang.jl


function ECP_NUMS384W_isinf(P)
    ccall((:ECP_NUMS384W_isinf, libamcl_curve_NUMS384W), Cint, (Ptr{ECP_NUMS384W},), P)
end

function ECP_NUMS384W_equals(P, Q)
    ccall((:ECP_NUMS384W_equals, libamcl_curve_NUMS384W), Cint, (Ptr{ECP_NUMS384W}, Ptr{ECP_NUMS384W}), P, Q)
end

function ECP_NUMS384W_copy(P, Q)
    ccall((:ECP_NUMS384W_copy, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W}, Ptr{ECP_NUMS384W}), P, Q)
end

function ECP_NUMS384W_neg(P)
    ccall((:ECP_NUMS384W_neg, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W},), P)
end

function ECP_NUMS384W_inf(P)
    ccall((:ECP_NUMS384W_inf, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W},), P)
end

function ECP_NUMS384W_rhs(r, x)
    ccall((:ECP_NUMS384W_rhs, libamcl_curve_NUMS384W), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}), r, x)
end

function ECP_NUMS384W_set(P, x, y)
    ccall((:ECP_NUMS384W_set, libamcl_curve_NUMS384W), Cint, (Ptr{ECP_NUMS384W}, BIG_384_56, BIG_384_56), P, x, y)
end

function ECP_NUMS384W_get(x, y, P)
    ccall((:ECP_NUMS384W_get, libamcl_curve_NUMS384W), Cint, (BIG_384_56, BIG_384_56, Ptr{ECP_NUMS384W}), x, y, P)
end

function ECP_NUMS384W_add(P, Q)
    ccall((:ECP_NUMS384W_add, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W}, Ptr{ECP_NUMS384W}), P, Q)
end

function ECP_NUMS384W_sub(P, Q)
    ccall((:ECP_NUMS384W_sub, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W}, Ptr{ECP_NUMS384W}), P, Q)
end

function ECP_NUMS384W_setx(P, x, s)
    ccall((:ECP_NUMS384W_setx, libamcl_curve_NUMS384W), Cint, (Ptr{ECP_NUMS384W}, BIG_384_56, Cint), P, x, s)
end

function ECP_NUMS384W_cfp(Q)
    ccall((:ECP_NUMS384W_cfp, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W},), Q)
end

function ECP_NUMS384W_mapit(Q, w)
    ccall((:ECP_NUMS384W_mapit, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W}, Ptr{octet}), Q, w)
end

function ECP_NUMS384W_affine(P)
    ccall((:ECP_NUMS384W_affine, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W},), P)
end

function ECP_NUMS384W_outputxyz(P)
    ccall((:ECP_NUMS384W_outputxyz, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W},), P)
end

function ECP_NUMS384W_output(P)
    ccall((:ECP_NUMS384W_output, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W},), P)
end

function ECP_NUMS384W_rawoutput(P)
    ccall((:ECP_NUMS384W_rawoutput, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W},), P)
end

function ECP_NUMS384W_toOctet(S, P, c)
    ccall((:ECP_NUMS384W_toOctet, libamcl_curve_NUMS384W), Cvoid, (Ptr{octet}, Ptr{ECP_NUMS384W}, Bool), S, P, c)
end

function ECP_NUMS384W_fromOctet(P, S)
    ccall((:ECP_NUMS384W_fromOctet, libamcl_curve_NUMS384W), Cint, (Ptr{ECP_NUMS384W}, Ptr{octet}), P, S)
end

function ECP_NUMS384W_dbl(P)
    ccall((:ECP_NUMS384W_dbl, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W},), P)
end

function ECP_NUMS384W_pinmul(P, i, b)
    ccall((:ECP_NUMS384W_pinmul, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W}, Cint, Cint), P, i, b)
end

function ECP_NUMS384W_mul(P, b)
    ccall((:ECP_NUMS384W_mul, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W}, BIG_384_56), P, b)
end

function ECP_NUMS384W_mul2(P, Q, e, f)
    ccall((:ECP_NUMS384W_mul2, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W}, Ptr{ECP_NUMS384W}, BIG_384_56, BIG_384_56), P, Q, e, f)
end

function ECP_NUMS384W_generator(G)
    ccall((:ECP_NUMS384W_generator, libamcl_curve_NUMS384W), Cvoid, (Ptr{ECP_NUMS384W},), G)
end
# Julia wrapper for header: ecp_NUMS512E.h
# Automatically generated using Clang.jl


function ECP_NUMS512E_isinf(P)
    ccall((:ECP_NUMS512E_isinf, libamcl_curve_NUMS512E), Cint, (Ptr{ECP_NUMS512E},), P)
end

function ECP_NUMS512E_equals(P, Q)
    ccall((:ECP_NUMS512E_equals, libamcl_curve_NUMS512E), Cint, (Ptr{ECP_NUMS512E}, Ptr{ECP_NUMS512E}), P, Q)
end

function ECP_NUMS512E_copy(P, Q)
    ccall((:ECP_NUMS512E_copy, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E}, Ptr{ECP_NUMS512E}), P, Q)
end

function ECP_NUMS512E_neg(P)
    ccall((:ECP_NUMS512E_neg, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E},), P)
end

function ECP_NUMS512E_inf(P)
    ccall((:ECP_NUMS512E_inf, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E},), P)
end

function ECP_NUMS512E_rhs(r, x)
    ccall((:ECP_NUMS512E_rhs, libamcl_curve_NUMS512E), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}), r, x)
end

function ECP_NUMS512E_set(P, x, y)
    ccall((:ECP_NUMS512E_set, libamcl_curve_NUMS512E), Cint, (Ptr{ECP_NUMS512E}, BIG_512_56, BIG_512_56), P, x, y)
end

function ECP_NUMS512E_get(x, y, P)
    ccall((:ECP_NUMS512E_get, libamcl_curve_NUMS512E), Cint, (BIG_512_56, BIG_512_56, Ptr{ECP_NUMS512E}), x, y, P)
end

function ECP_NUMS512E_add(P, Q)
    ccall((:ECP_NUMS512E_add, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E}, Ptr{ECP_NUMS512E}), P, Q)
end

function ECP_NUMS512E_sub(P, Q)
    ccall((:ECP_NUMS512E_sub, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E}, Ptr{ECP_NUMS512E}), P, Q)
end

function ECP_NUMS512E_setx(P, x, s)
    ccall((:ECP_NUMS512E_setx, libamcl_curve_NUMS512E), Cint, (Ptr{ECP_NUMS512E}, BIG_512_56, Cint), P, x, s)
end

function ECP_NUMS512E_cfp(Q)
    ccall((:ECP_NUMS512E_cfp, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E},), Q)
end

function ECP_NUMS512E_mapit(Q, w)
    ccall((:ECP_NUMS512E_mapit, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E}, Ptr{octet}), Q, w)
end

function ECP_NUMS512E_affine(P)
    ccall((:ECP_NUMS512E_affine, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E},), P)
end

function ECP_NUMS512E_outputxyz(P)
    ccall((:ECP_NUMS512E_outputxyz, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E},), P)
end

function ECP_NUMS512E_output(P)
    ccall((:ECP_NUMS512E_output, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E},), P)
end

function ECP_NUMS512E_rawoutput(P)
    ccall((:ECP_NUMS512E_rawoutput, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E},), P)
end

function ECP_NUMS512E_toOctet(S, P, c)
    ccall((:ECP_NUMS512E_toOctet, libamcl_curve_NUMS512E), Cvoid, (Ptr{octet}, Ptr{ECP_NUMS512E}, Bool), S, P, c)
end

function ECP_NUMS512E_fromOctet(P, S)
    ccall((:ECP_NUMS512E_fromOctet, libamcl_curve_NUMS512E), Cint, (Ptr{ECP_NUMS512E}, Ptr{octet}), P, S)
end

function ECP_NUMS512E_dbl(P)
    ccall((:ECP_NUMS512E_dbl, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E},), P)
end

function ECP_NUMS512E_pinmul(P, i, b)
    ccall((:ECP_NUMS512E_pinmul, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E}, Cint, Cint), P, i, b)
end

function ECP_NUMS512E_mul(P, b)
    ccall((:ECP_NUMS512E_mul, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E}, BIG_512_56), P, b)
end

function ECP_NUMS512E_mul2(P, Q, e, f)
    ccall((:ECP_NUMS512E_mul2, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E}, Ptr{ECP_NUMS512E}, BIG_512_56, BIG_512_56), P, Q, e, f)
end

function ECP_NUMS512E_generator(G)
    ccall((:ECP_NUMS512E_generator, libamcl_curve_NUMS512E), Cvoid, (Ptr{ECP_NUMS512E},), G)
end
# Julia wrapper for header: ecp_NUMS512W.h
# Automatically generated using Clang.jl


function ECP_NUMS512W_isinf(P)
    ccall((:ECP_NUMS512W_isinf, libamcl_curve_NUMS512W), Cint, (Ptr{ECP_NUMS512W},), P)
end

function ECP_NUMS512W_equals(P, Q)
    ccall((:ECP_NUMS512W_equals, libamcl_curve_NUMS512W), Cint, (Ptr{ECP_NUMS512W}, Ptr{ECP_NUMS512W}), P, Q)
end

function ECP_NUMS512W_copy(P, Q)
    ccall((:ECP_NUMS512W_copy, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W}, Ptr{ECP_NUMS512W}), P, Q)
end

function ECP_NUMS512W_neg(P)
    ccall((:ECP_NUMS512W_neg, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W},), P)
end

function ECP_NUMS512W_inf(P)
    ccall((:ECP_NUMS512W_inf, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W},), P)
end

function ECP_NUMS512W_rhs(r, x)
    ccall((:ECP_NUMS512W_rhs, libamcl_curve_NUMS512W), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}), r, x)
end

function ECP_NUMS512W_set(P, x, y)
    ccall((:ECP_NUMS512W_set, libamcl_curve_NUMS512W), Cint, (Ptr{ECP_NUMS512W}, BIG_512_56, BIG_512_56), P, x, y)
end

function ECP_NUMS512W_get(x, y, P)
    ccall((:ECP_NUMS512W_get, libamcl_curve_NUMS512W), Cint, (BIG_512_56, BIG_512_56, Ptr{ECP_NUMS512W}), x, y, P)
end

function ECP_NUMS512W_add(P, Q)
    ccall((:ECP_NUMS512W_add, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W}, Ptr{ECP_NUMS512W}), P, Q)
end

function ECP_NUMS512W_sub(P, Q)
    ccall((:ECP_NUMS512W_sub, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W}, Ptr{ECP_NUMS512W}), P, Q)
end

function ECP_NUMS512W_setx(P, x, s)
    ccall((:ECP_NUMS512W_setx, libamcl_curve_NUMS512W), Cint, (Ptr{ECP_NUMS512W}, BIG_512_56, Cint), P, x, s)
end

function ECP_NUMS512W_cfp(Q)
    ccall((:ECP_NUMS512W_cfp, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W},), Q)
end

function ECP_NUMS512W_mapit(Q, w)
    ccall((:ECP_NUMS512W_mapit, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W}, Ptr{octet}), Q, w)
end

function ECP_NUMS512W_affine(P)
    ccall((:ECP_NUMS512W_affine, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W},), P)
end

function ECP_NUMS512W_outputxyz(P)
    ccall((:ECP_NUMS512W_outputxyz, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W},), P)
end

function ECP_NUMS512W_output(P)
    ccall((:ECP_NUMS512W_output, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W},), P)
end

function ECP_NUMS512W_rawoutput(P)
    ccall((:ECP_NUMS512W_rawoutput, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W},), P)
end

function ECP_NUMS512W_toOctet(S, P, c)
    ccall((:ECP_NUMS512W_toOctet, libamcl_curve_NUMS512W), Cvoid, (Ptr{octet}, Ptr{ECP_NUMS512W}, Bool), S, P, c)
end

function ECP_NUMS512W_fromOctet(P, S)
    ccall((:ECP_NUMS512W_fromOctet, libamcl_curve_NUMS512W), Cint, (Ptr{ECP_NUMS512W}, Ptr{octet}), P, S)
end

function ECP_NUMS512W_dbl(P)
    ccall((:ECP_NUMS512W_dbl, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W},), P)
end

function ECP_NUMS512W_pinmul(P, i, b)
    ccall((:ECP_NUMS512W_pinmul, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W}, Cint, Cint), P, i, b)
end

function ECP_NUMS512W_mul(P, b)
    ccall((:ECP_NUMS512W_mul, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W}, BIG_512_56), P, b)
end

function ECP_NUMS512W_mul2(P, Q, e, f)
    ccall((:ECP_NUMS512W_mul2, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W}, Ptr{ECP_NUMS512W}, BIG_512_56, BIG_512_56), P, Q, e, f)
end

function ECP_NUMS512W_generator(G)
    ccall((:ECP_NUMS512W_generator, libamcl_curve_NUMS512W), Cvoid, (Ptr{ECP_NUMS512W},), G)
end
# Julia wrapper for header: ecp_SECP256K1.h
# Automatically generated using Clang.jl


function ECP_SECP256K1_isinf(P)
    ccall((:ECP_SECP256K1_isinf, libamcl_curve_SECP256K1), Cint, (Ptr{ECP_SECP256K1},), P)
end

function ECP_SECP256K1_equals(P, Q)
    ccall((:ECP_SECP256K1_equals, libamcl_curve_SECP256K1), Cint, (Ptr{ECP_SECP256K1}, Ptr{ECP_SECP256K1}), P, Q)
end

function ECP_SECP256K1_copy(P, Q)
    ccall((:ECP_SECP256K1_copy, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1}, Ptr{ECP_SECP256K1}), P, Q)
end

function ECP_SECP256K1_neg(P)
    ccall((:ECP_SECP256K1_neg, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1},), P)
end

function ECP_SECP256K1_inf(P)
    ccall((:ECP_SECP256K1_inf, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1},), P)
end

function ECP_SECP256K1_rhs(r, x)
    ccall((:ECP_SECP256K1_rhs, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), r, x)
end

function ECP_SECP256K1_set(P, x, y)
    ccall((:ECP_SECP256K1_set, libamcl_curve_SECP256K1), Cint, (Ptr{ECP_SECP256K1}, BIG_256_56, BIG_256_56), P, x, y)
end

function ECP_SECP256K1_get(x, y, P)
    ccall((:ECP_SECP256K1_get, libamcl_curve_SECP256K1), Cint, (BIG_256_56, BIG_256_56, Ptr{ECP_SECP256K1}), x, y, P)
end

function ECP_SECP256K1_add(P, Q)
    ccall((:ECP_SECP256K1_add, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1}, Ptr{ECP_SECP256K1}), P, Q)
end

function ECP_SECP256K1_sub(P, Q)
    ccall((:ECP_SECP256K1_sub, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1}, Ptr{ECP_SECP256K1}), P, Q)
end

function ECP_SECP256K1_setx(P, x, s)
    ccall((:ECP_SECP256K1_setx, libamcl_curve_SECP256K1), Cint, (Ptr{ECP_SECP256K1}, BIG_256_56, Cint), P, x, s)
end

function ECP_SECP256K1_cfp(Q)
    ccall((:ECP_SECP256K1_cfp, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1},), Q)
end

function ECP_SECP256K1_mapit(Q, w)
    ccall((:ECP_SECP256K1_mapit, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1}, Ptr{octet}), Q, w)
end

function ECP_SECP256K1_affine(P)
    ccall((:ECP_SECP256K1_affine, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1},), P)
end

function ECP_SECP256K1_outputxyz(P)
    ccall((:ECP_SECP256K1_outputxyz, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1},), P)
end

function ECP_SECP256K1_output(P)
    ccall((:ECP_SECP256K1_output, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1},), P)
end

function ECP_SECP256K1_rawoutput(P)
    ccall((:ECP_SECP256K1_rawoutput, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1},), P)
end

function ECP_SECP256K1_toOctet(S, P, c)
    ccall((:ECP_SECP256K1_toOctet, libamcl_curve_SECP256K1), Cvoid, (Ptr{octet}, Ptr{ECP_SECP256K1}, Bool), S, P, c)
end

function ECP_SECP256K1_fromOctet(P, S)
    ccall((:ECP_SECP256K1_fromOctet, libamcl_curve_SECP256K1), Cint, (Ptr{ECP_SECP256K1}, Ptr{octet}), P, S)
end

function ECP_SECP256K1_dbl(P)
    ccall((:ECP_SECP256K1_dbl, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1},), P)
end

function ECP_SECP256K1_pinmul(P, i, b)
    ccall((:ECP_SECP256K1_pinmul, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1}, Cint, Cint), P, i, b)
end

function ECP_SECP256K1_mul(P, b)
    ccall((:ECP_SECP256K1_mul, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1}, BIG_256_56), P, b)
end

function ECP_SECP256K1_mul2(P, Q, e, f)
    ccall((:ECP_SECP256K1_mul2, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1}, Ptr{ECP_SECP256K1}, BIG_256_56, BIG_256_56), P, Q, e, f)
end

function ECP_SECP256K1_generator(G)
    ccall((:ECP_SECP256K1_generator, libamcl_curve_SECP256K1), Cvoid, (Ptr{ECP_SECP256K1},), G)
end
# Julia wrapper for header: ff_2048.h
# Automatically generated using Clang.jl


function FF_2048_copy(x, y, n)
    ccall((:FF_2048_copy, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), x, y, n)
end

function FF_2048_init(x, m, n)
    ccall((:FF_2048_init, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Int32, Cint), x, m, n)
end

function FF_2048_zero(x, n)
    ccall((:FF_2048_zero, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Cint), x, n)
end

function FF_2048_iszilch(x, n)
    ccall((:FF_2048_iszilch, libamcl_rsa_2048), Cint, (Ptr{BIG_1024_58}, Cint), x, n)
end

function FF_2048_parity(x)
    ccall((:FF_2048_parity, libamcl_rsa_2048), Cint, (Ptr{BIG_1024_58},), x)
end

function FF_2048_lastbits(x, m)
    ccall((:FF_2048_lastbits, libamcl_rsa_2048), Cint, (Ptr{BIG_1024_58}, Cint), x, m)
end

function FF_2048_one(x, n)
    ccall((:FF_2048_one, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Cint), x, n)
end

function FF_2048_comp(x, y, n)
    ccall((:FF_2048_comp, libamcl_rsa_2048), Cint, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), x, y, n)
end

function FF_2048_add(x, y, z, n)
    ccall((:FF_2048_add, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), x, y, z, n)
end

function FF_2048_sub(x, y, z, n)
    ccall((:FF_2048_sub, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), x, y, z, n)
end

function FF_2048_inc(x, m, n)
    ccall((:FF_2048_inc, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Cint, Cint), x, m, n)
end

function FF_2048_dec(x, m, n)
    ccall((:FF_2048_dec, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Cint, Cint), x, m, n)
end

function FF_2048_norm(x, n)
    ccall((:FF_2048_norm, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Cint), x, n)
end

function FF_2048_shl(x, n)
    ccall((:FF_2048_shl, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Cint), x, n)
end

function FF_2048_shr(x, n)
    ccall((:FF_2048_shr, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Cint), x, n)
end

function FF_2048_output(x, n)
    ccall((:FF_2048_output, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Cint), x, n)
end

function FF_2048_rawoutput(x, n)
    ccall((:FF_2048_rawoutput, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Cint), x, n)
end

function FF_2048_toOctet(S, x, n)
    ccall((:FF_2048_toOctet, libamcl_rsa_2048), Cvoid, (Ptr{octet}, Ptr{BIG_1024_58}, Cint), S, x, n)
end

function FF_2048_fromOctet(x, S, n)
    ccall((:FF_2048_fromOctet, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{octet}, Cint), x, S, n)
end

function FF_2048_mul(x, y, z, n)
    ccall((:FF_2048_mul, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), x, y, z, n)
end

function FF_2048_mod(x, p, n)
    ccall((:FF_2048_mod, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), x, p, n)
end

function FF_2048_sqr(x, y, n)
    ccall((:FF_2048_sqr, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), x, y, n)
end

function FF_2048_dmod(x, y, z, n)
    ccall((:FF_2048_dmod, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), x, y, z, n)
end

function FF_2048_invmodp(x, y, z, n)
    ccall((:FF_2048_invmodp, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), x, y, z, n)
end

function FF_2048_invmod2m(U, a, n)
    ccall((:FF_2048_invmod2m, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), U, a, n)
end

function FF_2048_random(x, R, n)
    ccall((:FF_2048_random, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{csprng}, Cint), x, R, n)
end

function FF_2048_randomnum(x, y, R, n)
    ccall((:FF_2048_randomnum, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{csprng}, Cint), x, y, R, n)
end

function FF_2048_skpow(r, x, e, p, n, en)
    ccall((:FF_2048_skpow, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint, Cint), r, x, e, p, n, en)
end

function FF_2048_skspow(r, x, e, p, n)
    ccall((:FF_2048_skspow, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, BIG_1024_58, Ptr{BIG_1024_58}, Cint), r, x, e, p, n)
end

function FF_2048_skpow2(r, x, e, y, f, p, n, en)
    ccall((:FF_2048_skpow2, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint, Cint), r, x, e, y, f, p, n, en)
end

function FF_2048_power(r, x, e, p, n)
    ccall((:FF_2048_power, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint, Ptr{BIG_1024_58}, Cint), r, x, e, p, n)
end

function FF_2048_pow(r, x, e, p, n)
    ccall((:FF_2048_pow, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), r, x, e, p, n)
end

function FF_2048_pow2(r, x, e, y, f, m, n)
    ccall((:FF_2048_pow2, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, BIG_1024_58, Ptr{BIG_1024_58}, BIG_1024_58, Ptr{BIG_1024_58}, Cint), r, x, e, y, f, m, n)
end

function FF_2048_cfactor(x, s, n)
    ccall((:FF_2048_cfactor, libamcl_rsa_2048), Cint, (Ptr{BIG_1024_58}, Int32, Cint), x, s, n)
end

function FF_2048_prime(x, R, n)
    ccall((:FF_2048_prime, libamcl_rsa_2048), Cint, (Ptr{BIG_1024_58}, Ptr{csprng}, Cint), x, R, n)
end

function FF_2048_crt(r, rp, rq, p, q, n)
    ccall((:FF_2048_crt, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Ptr{BIG_1024_58}, Cint), r, rp, rq, p, q, n)
end
# Julia wrapper for header: ff_3072.h
# Automatically generated using Clang.jl


function FF_3072_copy(x, y, n)
    ccall((:FF_3072_copy, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), x, y, n)
end

function FF_3072_init(x, m, n)
    ccall((:FF_3072_init, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Int32, Cint), x, m, n)
end

function FF_3072_zero(x, n)
    ccall((:FF_3072_zero, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Cint), x, n)
end

function FF_3072_iszilch(x, n)
    ccall((:FF_3072_iszilch, libamcl_rsa_3072), Cint, (Ptr{BIG_384_56}, Cint), x, n)
end

function FF_3072_parity(x)
    ccall((:FF_3072_parity, libamcl_rsa_3072), Cint, (Ptr{BIG_384_56},), x)
end

function FF_3072_lastbits(x, m)
    ccall((:FF_3072_lastbits, libamcl_rsa_3072), Cint, (Ptr{BIG_384_56}, Cint), x, m)
end

function FF_3072_one(x, n)
    ccall((:FF_3072_one, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Cint), x, n)
end

function FF_3072_comp(x, y, n)
    ccall((:FF_3072_comp, libamcl_rsa_3072), Cint, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), x, y, n)
end

function FF_3072_add(x, y, z, n)
    ccall((:FF_3072_add, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), x, y, z, n)
end

function FF_3072_sub(x, y, z, n)
    ccall((:FF_3072_sub, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), x, y, z, n)
end

function FF_3072_inc(x, m, n)
    ccall((:FF_3072_inc, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Cint, Cint), x, m, n)
end

function FF_3072_dec(x, m, n)
    ccall((:FF_3072_dec, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Cint, Cint), x, m, n)
end

function FF_3072_norm(x, n)
    ccall((:FF_3072_norm, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Cint), x, n)
end

function FF_3072_shl(x, n)
    ccall((:FF_3072_shl, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Cint), x, n)
end

function FF_3072_shr(x, n)
    ccall((:FF_3072_shr, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Cint), x, n)
end

function FF_3072_output(x, n)
    ccall((:FF_3072_output, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Cint), x, n)
end

function FF_3072_rawoutput(x, n)
    ccall((:FF_3072_rawoutput, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Cint), x, n)
end

function FF_3072_toOctet(S, x, n)
    ccall((:FF_3072_toOctet, libamcl_rsa_3072), Cvoid, (Ptr{octet}, Ptr{BIG_384_56}, Cint), S, x, n)
end

function FF_3072_fromOctet(x, S, n)
    ccall((:FF_3072_fromOctet, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{octet}, Cint), x, S, n)
end

function FF_3072_mul(x, y, z, n)
    ccall((:FF_3072_mul, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), x, y, z, n)
end

function FF_3072_mod(x, p, n)
    ccall((:FF_3072_mod, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), x, p, n)
end

function FF_3072_sqr(x, y, n)
    ccall((:FF_3072_sqr, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), x, y, n)
end

function FF_3072_dmod(x, y, z, n)
    ccall((:FF_3072_dmod, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), x, y, z, n)
end

function FF_3072_invmodp(x, y, z, n)
    ccall((:FF_3072_invmodp, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), x, y, z, n)
end

function FF_3072_invmod2m(U, a, n)
    ccall((:FF_3072_invmod2m, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), U, a, n)
end

function FF_3072_random(x, R, n)
    ccall((:FF_3072_random, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{csprng}, Cint), x, R, n)
end

function FF_3072_randomnum(x, y, R, n)
    ccall((:FF_3072_randomnum, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{csprng}, Cint), x, y, R, n)
end

function FF_3072_skpow(r, x, e, p, n, en)
    ccall((:FF_3072_skpow, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint, Cint), r, x, e, p, n, en)
end

function FF_3072_skspow(r, x, e, p, n)
    ccall((:FF_3072_skspow, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, BIG_384_56, Ptr{BIG_384_56}, Cint), r, x, e, p, n)
end

function FF_3072_skpow2(r, x, e, y, f, p, n, en)
    ccall((:FF_3072_skpow2, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint, Cint), r, x, e, y, f, p, n, en)
end

function FF_3072_power(r, x, e, p, n)
    ccall((:FF_3072_power, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint, Ptr{BIG_384_56}, Cint), r, x, e, p, n)
end

function FF_3072_pow(r, x, e, p, n)
    ccall((:FF_3072_pow, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), r, x, e, p, n)
end

function FF_3072_pow2(r, x, e, y, f, m, n)
    ccall((:FF_3072_pow2, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, BIG_384_56, Ptr{BIG_384_56}, BIG_384_56, Ptr{BIG_384_56}, Cint), r, x, e, y, f, m, n)
end

function FF_3072_cfactor(x, s, n)
    ccall((:FF_3072_cfactor, libamcl_rsa_3072), Cint, (Ptr{BIG_384_56}, Int32, Cint), x, s, n)
end

function FF_3072_prime(x, R, n)
    ccall((:FF_3072_prime, libamcl_rsa_3072), Cint, (Ptr{BIG_384_56}, Ptr{csprng}, Cint), x, R, n)
end

function FF_3072_crt(r, rp, rq, p, q, n)
    ccall((:FF_3072_crt, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Ptr{BIG_384_56}, Cint), r, rp, rq, p, q, n)
end
# Julia wrapper for header: ff_4096.h
# Automatically generated using Clang.jl


function FF_4096_copy(x, y, n)
    ccall((:FF_4096_copy, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), x, y, n)
end

function FF_4096_init(x, m, n)
    ccall((:FF_4096_init, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Int32, Cint), x, m, n)
end

function FF_4096_zero(x, n)
    ccall((:FF_4096_zero, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Cint), x, n)
end

function FF_4096_iszilch(x, n)
    ccall((:FF_4096_iszilch, libamcl_rsa_4096), Cint, (Ptr{BIG_512_60}, Cint), x, n)
end

function FF_4096_parity(x)
    ccall((:FF_4096_parity, libamcl_rsa_4096), Cint, (Ptr{BIG_512_60},), x)
end

function FF_4096_lastbits(x, m)
    ccall((:FF_4096_lastbits, libamcl_rsa_4096), Cint, (Ptr{BIG_512_60}, Cint), x, m)
end

function FF_4096_one(x, n)
    ccall((:FF_4096_one, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Cint), x, n)
end

function FF_4096_comp(x, y, n)
    ccall((:FF_4096_comp, libamcl_rsa_4096), Cint, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), x, y, n)
end

function FF_4096_add(x, y, z, n)
    ccall((:FF_4096_add, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), x, y, z, n)
end

function FF_4096_sub(x, y, z, n)
    ccall((:FF_4096_sub, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), x, y, z, n)
end

function FF_4096_inc(x, m, n)
    ccall((:FF_4096_inc, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Cint, Cint), x, m, n)
end

function FF_4096_dec(x, m, n)
    ccall((:FF_4096_dec, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Cint, Cint), x, m, n)
end

function FF_4096_norm(x, n)
    ccall((:FF_4096_norm, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Cint), x, n)
end

function FF_4096_shl(x, n)
    ccall((:FF_4096_shl, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Cint), x, n)
end

function FF_4096_shr(x, n)
    ccall((:FF_4096_shr, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Cint), x, n)
end

function FF_4096_output(x, n)
    ccall((:FF_4096_output, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Cint), x, n)
end

function FF_4096_rawoutput(x, n)
    ccall((:FF_4096_rawoutput, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Cint), x, n)
end

function FF_4096_toOctet(S, x, n)
    ccall((:FF_4096_toOctet, libamcl_rsa_4096), Cvoid, (Ptr{octet}, Ptr{BIG_512_60}, Cint), S, x, n)
end

function FF_4096_fromOctet(x, S, n)
    ccall((:FF_4096_fromOctet, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{octet}, Cint), x, S, n)
end

function FF_4096_mul(x, y, z, n)
    ccall((:FF_4096_mul, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), x, y, z, n)
end

function FF_4096_mod(x, p, n)
    ccall((:FF_4096_mod, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), x, p, n)
end

function FF_4096_sqr(x, y, n)
    ccall((:FF_4096_sqr, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), x, y, n)
end

function FF_4096_dmod(x, y, z, n)
    ccall((:FF_4096_dmod, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), x, y, z, n)
end

function FF_4096_invmodp(x, y, z, n)
    ccall((:FF_4096_invmodp, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), x, y, z, n)
end

function FF_4096_invmod2m(U, a, n)
    ccall((:FF_4096_invmod2m, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), U, a, n)
end

function FF_4096_random(x, R, n)
    ccall((:FF_4096_random, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{csprng}, Cint), x, R, n)
end

function FF_4096_randomnum(x, y, R, n)
    ccall((:FF_4096_randomnum, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{csprng}, Cint), x, y, R, n)
end

function FF_4096_skpow(r, x, e, p, n, en)
    ccall((:FF_4096_skpow, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint, Cint), r, x, e, p, n, en)
end

function FF_4096_skspow(r, x, e, p, n)
    ccall((:FF_4096_skspow, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, BIG_512_60, Ptr{BIG_512_60}, Cint), r, x, e, p, n)
end

function FF_4096_skpow2(r, x, e, y, f, p, n, en)
    ccall((:FF_4096_skpow2, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint, Cint), r, x, e, y, f, p, n, en)
end

function FF_4096_power(r, x, e, p, n)
    ccall((:FF_4096_power, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint, Ptr{BIG_512_60}, Cint), r, x, e, p, n)
end

function FF_4096_pow(r, x, e, p, n)
    ccall((:FF_4096_pow, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), r, x, e, p, n)
end

function FF_4096_pow2(r, x, e, y, f, m, n)
    ccall((:FF_4096_pow2, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, BIG_512_60, Ptr{BIG_512_60}, BIG_512_60, Ptr{BIG_512_60}, Cint), r, x, e, y, f, m, n)
end

function FF_4096_cfactor(x, s, n)
    ccall((:FF_4096_cfactor, libamcl_rsa_4096), Cint, (Ptr{BIG_512_60}, Int32, Cint), x, s, n)
end

function FF_4096_prime(x, R, n)
    ccall((:FF_4096_prime, libamcl_rsa_4096), Cint, (Ptr{BIG_512_60}, Ptr{csprng}, Cint), x, R, n)
end

function FF_4096_crt(r, rp, rq, p, q, n)
    ccall((:FF_4096_crt, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Ptr{BIG_512_60}, Cint), r, rp, rq, p, q, n)
end
# Julia wrapper for header: fp12_BLS381.h
# Automatically generated using Clang.jl


function FP12_BLS381_iszilch(x)
    ccall((:FP12_BLS381_iszilch, libamcl_pairing_BLS381), Cint, (Ptr{FP12_BLS381},), x)
end

function FP12_BLS381_isunity(x)
    ccall((:FP12_BLS381_isunity, libamcl_pairing_BLS381), Cint, (Ptr{FP12_BLS381},), x)
end

function FP12_BLS381_copy(x, y)
    ccall((:FP12_BLS381_copy, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), x, y)
end

function FP12_BLS381_one(x)
    ccall((:FP12_BLS381_one, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381},), x)
end

function FP12_BLS381_zero(x)
    ccall((:FP12_BLS381_zero, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381},), x)
end

function FP12_BLS381_equals(x, y)
    ccall((:FP12_BLS381_equals, libamcl_pairing_BLS381), Cint, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), x, y)
end

function FP12_BLS381_conj(x, y)
    ccall((:FP12_BLS381_conj, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), x, y)
end

function FP12_BLS381_from_FP4(x, a)
    ccall((:FP12_BLS381_from_FP4, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP4_BLS381}), x, a)
end

function FP12_BLS381_from_FP4s(x, a, b, c)
    ccall((:FP12_BLS381_from_FP4s, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, a, b, c)
end

function FP12_BLS381_usqr(x, y)
    ccall((:FP12_BLS381_usqr, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), x, y)
end

function FP12_BLS381_sqr(x, y)
    ccall((:FP12_BLS381_sqr, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), x, y)
end

function FP12_BLS381_smul(x, y)
    ccall((:FP12_BLS381_smul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), x, y)
end

function FP12_BLS381_ssmul(x, y)
    ccall((:FP12_BLS381_ssmul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), x, y)
end

function FP12_BLS381_mul(x, y)
    ccall((:FP12_BLS381_mul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), x, y)
end

function FP12_BLS381_inv(x, y)
    ccall((:FP12_BLS381_inv, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), x, y)
end

function FP12_BLS381_pow(r, x, b)
    ccall((:FP12_BLS381_pow, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}, BIG_384_58), r, x, b)
end

function FP12_BLS381_pinpow(x, i, b)
    ccall((:FP12_BLS381_pinpow, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Cint, Cint), x, i, b)
end

function FP12_BLS381_compow(c, x, e, r)
    ccall((:FP12_BLS381_compow, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP12_BLS381}, BIG_384_58, BIG_384_58), c, x, e, r)
end

function FP12_BLS381_pow4(r, x, b)
    ccall((:FP12_BLS381_pow4, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}, Ptr{BIG_384_58}), r, x, b)
end

function FP12_BLS381_frob(x, f)
    ccall((:FP12_BLS381_frob, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP2_BLS381}), x, f)
end

function FP12_BLS381_reduce(x)
    ccall((:FP12_BLS381_reduce, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381},), x)
end

function FP12_BLS381_norm(x)
    ccall((:FP12_BLS381_norm, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381},), x)
end

function FP12_BLS381_output(x)
    ccall((:FP12_BLS381_output, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381},), x)
end

function FP12_BLS381_toOctet(S, x)
    ccall((:FP12_BLS381_toOctet, libamcl_pairing_BLS381), Cvoid, (Ptr{octet}, Ptr{FP12_BLS381}), S, x)
end

function FP12_BLS381_fromOctet(x, S)
    ccall((:FP12_BLS381_fromOctet, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{octet}), x, S)
end

function FP12_BLS381_trace(t, x)
    ccall((:FP12_BLS381_trace, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP12_BLS381}), t, x)
end

function FP12_BLS381_cmove(x, y, s)
    ccall((:FP12_BLS381_cmove, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}, Cint), x, y, s)
end
# Julia wrapper for header: fp12_BLS383.h
# Automatically generated using Clang.jl


function FP12_BLS383_iszilch(x)
    ccall((:FP12_BLS383_iszilch, libamcl_pairing_BLS383), Cint, (Ptr{FP12_BLS383},), x)
end

function FP12_BLS383_isunity(x)
    ccall((:FP12_BLS383_isunity, libamcl_pairing_BLS383), Cint, (Ptr{FP12_BLS383},), x)
end

function FP12_BLS383_copy(x, y)
    ccall((:FP12_BLS383_copy, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), x, y)
end

function FP12_BLS383_one(x)
    ccall((:FP12_BLS383_one, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383},), x)
end

function FP12_BLS383_zero(x)
    ccall((:FP12_BLS383_zero, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383},), x)
end

function FP12_BLS383_equals(x, y)
    ccall((:FP12_BLS383_equals, libamcl_pairing_BLS383), Cint, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), x, y)
end

function FP12_BLS383_conj(x, y)
    ccall((:FP12_BLS383_conj, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), x, y)
end

function FP12_BLS383_from_FP4(x, a)
    ccall((:FP12_BLS383_from_FP4, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP4_BLS383}), x, a)
end

function FP12_BLS383_from_FP4s(x, a, b, c)
    ccall((:FP12_BLS383_from_FP4s, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, a, b, c)
end

function FP12_BLS383_usqr(x, y)
    ccall((:FP12_BLS383_usqr, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), x, y)
end

function FP12_BLS383_sqr(x, y)
    ccall((:FP12_BLS383_sqr, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), x, y)
end

function FP12_BLS383_smul(x, y)
    ccall((:FP12_BLS383_smul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), x, y)
end

function FP12_BLS383_ssmul(x, y)
    ccall((:FP12_BLS383_ssmul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), x, y)
end

function FP12_BLS383_mul(x, y)
    ccall((:FP12_BLS383_mul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), x, y)
end

function FP12_BLS383_inv(x, y)
    ccall((:FP12_BLS383_inv, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), x, y)
end

function FP12_BLS383_pow(r, x, b)
    ccall((:FP12_BLS383_pow, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}, BIG_384_58), r, x, b)
end

function FP12_BLS383_pinpow(x, i, b)
    ccall((:FP12_BLS383_pinpow, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Cint, Cint), x, i, b)
end

function FP12_BLS383_compow(c, x, e, r)
    ccall((:FP12_BLS383_compow, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP12_BLS383}, BIG_384_58, BIG_384_58), c, x, e, r)
end

function FP12_BLS383_pow4(r, x, b)
    ccall((:FP12_BLS383_pow4, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}, Ptr{BIG_384_58}), r, x, b)
end

function FP12_BLS383_frob(x, f)
    ccall((:FP12_BLS383_frob, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP2_BLS383}), x, f)
end

function FP12_BLS383_reduce(x)
    ccall((:FP12_BLS383_reduce, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383},), x)
end

function FP12_BLS383_norm(x)
    ccall((:FP12_BLS383_norm, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383},), x)
end

function FP12_BLS383_output(x)
    ccall((:FP12_BLS383_output, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383},), x)
end

function FP12_BLS383_toOctet(S, x)
    ccall((:FP12_BLS383_toOctet, libamcl_pairing_BLS383), Cvoid, (Ptr{octet}, Ptr{FP12_BLS383}), S, x)
end

function FP12_BLS383_fromOctet(x, S)
    ccall((:FP12_BLS383_fromOctet, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{octet}), x, S)
end

function FP12_BLS383_trace(t, x)
    ccall((:FP12_BLS383_trace, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP12_BLS383}), t, x)
end

function FP12_BLS383_cmove(x, y, s)
    ccall((:FP12_BLS383_cmove, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}, Cint), x, y, s)
end
# Julia wrapper for header: fp12_BLS461.h
# Automatically generated using Clang.jl


function FP12_BLS461_iszilch(x)
    ccall((:FP12_BLS461_iszilch, libamcl_pairing_BLS461), Cint, (Ptr{FP12_BLS461},), x)
end

function FP12_BLS461_isunity(x)
    ccall((:FP12_BLS461_isunity, libamcl_pairing_BLS461), Cint, (Ptr{FP12_BLS461},), x)
end

function FP12_BLS461_copy(x, y)
    ccall((:FP12_BLS461_copy, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), x, y)
end

function FP12_BLS461_one(x)
    ccall((:FP12_BLS461_one, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461},), x)
end

function FP12_BLS461_zero(x)
    ccall((:FP12_BLS461_zero, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461},), x)
end

function FP12_BLS461_equals(x, y)
    ccall((:FP12_BLS461_equals, libamcl_pairing_BLS461), Cint, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), x, y)
end

function FP12_BLS461_conj(x, y)
    ccall((:FP12_BLS461_conj, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), x, y)
end

function FP12_BLS461_from_FP4(x, a)
    ccall((:FP12_BLS461_from_FP4, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP4_BLS461}), x, a)
end

function FP12_BLS461_from_FP4s(x, a, b, c)
    ccall((:FP12_BLS461_from_FP4s, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, a, b, c)
end

function FP12_BLS461_usqr(x, y)
    ccall((:FP12_BLS461_usqr, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), x, y)
end

function FP12_BLS461_sqr(x, y)
    ccall((:FP12_BLS461_sqr, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), x, y)
end

function FP12_BLS461_smul(x, y)
    ccall((:FP12_BLS461_smul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), x, y)
end

function FP12_BLS461_ssmul(x, y)
    ccall((:FP12_BLS461_ssmul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), x, y)
end

function FP12_BLS461_mul(x, y)
    ccall((:FP12_BLS461_mul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), x, y)
end

function FP12_BLS461_inv(x, y)
    ccall((:FP12_BLS461_inv, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), x, y)
end

function FP12_BLS461_pow(r, x, b)
    ccall((:FP12_BLS461_pow, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}, BIG_464_60), r, x, b)
end

function FP12_BLS461_pinpow(x, i, b)
    ccall((:FP12_BLS461_pinpow, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Cint, Cint), x, i, b)
end

function FP12_BLS461_compow(c, x, e, r)
    ccall((:FP12_BLS461_compow, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP12_BLS461}, BIG_464_60, BIG_464_60), c, x, e, r)
end

function FP12_BLS461_pow4(r, x, b)
    ccall((:FP12_BLS461_pow4, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}, Ptr{BIG_464_60}), r, x, b)
end

function FP12_BLS461_frob(x, f)
    ccall((:FP12_BLS461_frob, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP2_BLS461}), x, f)
end

function FP12_BLS461_reduce(x)
    ccall((:FP12_BLS461_reduce, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461},), x)
end

function FP12_BLS461_norm(x)
    ccall((:FP12_BLS461_norm, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461},), x)
end

function FP12_BLS461_output(x)
    ccall((:FP12_BLS461_output, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461},), x)
end

function FP12_BLS461_toOctet(S, x)
    ccall((:FP12_BLS461_toOctet, libamcl_pairing_BLS461), Cvoid, (Ptr{octet}, Ptr{FP12_BLS461}), S, x)
end

function FP12_BLS461_fromOctet(x, S)
    ccall((:FP12_BLS461_fromOctet, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{octet}), x, S)
end

function FP12_BLS461_trace(t, x)
    ccall((:FP12_BLS461_trace, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP12_BLS461}), t, x)
end

function FP12_BLS461_cmove(x, y, s)
    ccall((:FP12_BLS461_cmove, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}, Cint), x, y, s)
end
# Julia wrapper for header: fp12_BN254.h
# Automatically generated using Clang.jl


function FP12_BN254_iszilch(x)
    ccall((:FP12_BN254_iszilch, libamcl_pairing_BN254), Cint, (Ptr{FP12_BN254},), x)
end

function FP12_BN254_isunity(x)
    ccall((:FP12_BN254_isunity, libamcl_pairing_BN254), Cint, (Ptr{FP12_BN254},), x)
end

function FP12_BN254_copy(x, y)
    ccall((:FP12_BN254_copy, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), x, y)
end

function FP12_BN254_one(x)
    ccall((:FP12_BN254_one, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254},), x)
end

function FP12_BN254_zero(x)
    ccall((:FP12_BN254_zero, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254},), x)
end

function FP12_BN254_equals(x, y)
    ccall((:FP12_BN254_equals, libamcl_pairing_BN254), Cint, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), x, y)
end

function FP12_BN254_conj(x, y)
    ccall((:FP12_BN254_conj, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), x, y)
end

function FP12_BN254_from_FP4(x, a)
    ccall((:FP12_BN254_from_FP4, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP4_BN254}), x, a)
end

function FP12_BN254_from_FP4s(x, a, b, c)
    ccall((:FP12_BN254_from_FP4s, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, a, b, c)
end

function FP12_BN254_usqr(x, y)
    ccall((:FP12_BN254_usqr, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), x, y)
end

function FP12_BN254_sqr(x, y)
    ccall((:FP12_BN254_sqr, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), x, y)
end

function FP12_BN254_smul(x, y)
    ccall((:FP12_BN254_smul, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), x, y)
end

function FP12_BN254_ssmul(x, y)
    ccall((:FP12_BN254_ssmul, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), x, y)
end

function FP12_BN254_mul(x, y)
    ccall((:FP12_BN254_mul, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), x, y)
end

function FP12_BN254_inv(x, y)
    ccall((:FP12_BN254_inv, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), x, y)
end

function FP12_BN254_pow(r, x, b)
    ccall((:FP12_BN254_pow, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}, BIG_256_56), r, x, b)
end

function FP12_BN254_pinpow(x, i, b)
    ccall((:FP12_BN254_pinpow, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Cint, Cint), x, i, b)
end

function FP12_BN254_compow(c, x, e, r)
    ccall((:FP12_BN254_compow, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP12_BN254}, BIG_256_56, BIG_256_56), c, x, e, r)
end

function FP12_BN254_pow4(r, x, b)
    ccall((:FP12_BN254_pow4, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}, Ptr{BIG_256_56}), r, x, b)
end

function FP12_BN254_frob(x, f)
    ccall((:FP12_BN254_frob, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP2_BN254}), x, f)
end

function FP12_BN254_reduce(x)
    ccall((:FP12_BN254_reduce, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254},), x)
end

function FP12_BN254_norm(x)
    ccall((:FP12_BN254_norm, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254},), x)
end

function FP12_BN254_output(x)
    ccall((:FP12_BN254_output, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254},), x)
end

function FP12_BN254_toOctet(S, x)
    ccall((:FP12_BN254_toOctet, libamcl_pairing_BN254), Cvoid, (Ptr{octet}, Ptr{FP12_BN254}), S, x)
end

function FP12_BN254_fromOctet(x, S)
    ccall((:FP12_BN254_fromOctet, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{octet}), x, S)
end

function FP12_BN254_trace(t, x)
    ccall((:FP12_BN254_trace, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP12_BN254}), t, x)
end

function FP12_BN254_cmove(x, y, s)
    ccall((:FP12_BN254_cmove, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}, Cint), x, y, s)
end
# Julia wrapper for header: fp12_BN254CX.h
# Automatically generated using Clang.jl


function FP12_BN254CX_iszilch(x)
    ccall((:FP12_BN254CX_iszilch, libamcl_pairing_BN254CX), Cint, (Ptr{FP12_BN254CX},), x)
end

function FP12_BN254CX_isunity(x)
    ccall((:FP12_BN254CX_isunity, libamcl_pairing_BN254CX), Cint, (Ptr{FP12_BN254CX},), x)
end

function FP12_BN254CX_copy(x, y)
    ccall((:FP12_BN254CX_copy, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), x, y)
end

function FP12_BN254CX_one(x)
    ccall((:FP12_BN254CX_one, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX},), x)
end

function FP12_BN254CX_zero(x)
    ccall((:FP12_BN254CX_zero, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX},), x)
end

function FP12_BN254CX_equals(x, y)
    ccall((:FP12_BN254CX_equals, libamcl_pairing_BN254CX), Cint, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), x, y)
end

function FP12_BN254CX_conj(x, y)
    ccall((:FP12_BN254CX_conj, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), x, y)
end

function FP12_BN254CX_from_FP4(x, a)
    ccall((:FP12_BN254CX_from_FP4, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP4_BN254CX}), x, a)
end

function FP12_BN254CX_from_FP4s(x, a, b, c)
    ccall((:FP12_BN254CX_from_FP4s, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, a, b, c)
end

function FP12_BN254CX_usqr(x, y)
    ccall((:FP12_BN254CX_usqr, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), x, y)
end

function FP12_BN254CX_sqr(x, y)
    ccall((:FP12_BN254CX_sqr, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), x, y)
end

function FP12_BN254CX_smul(x, y)
    ccall((:FP12_BN254CX_smul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), x, y)
end

function FP12_BN254CX_ssmul(x, y)
    ccall((:FP12_BN254CX_ssmul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), x, y)
end

function FP12_BN254CX_mul(x, y)
    ccall((:FP12_BN254CX_mul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), x, y)
end

function FP12_BN254CX_inv(x, y)
    ccall((:FP12_BN254CX_inv, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), x, y)
end

function FP12_BN254CX_pow(r, x, b)
    ccall((:FP12_BN254CX_pow, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}, BIG_256_56), r, x, b)
end

function FP12_BN254CX_pinpow(x, i, b)
    ccall((:FP12_BN254CX_pinpow, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Cint, Cint), x, i, b)
end

function FP12_BN254CX_compow(c, x, e, r)
    ccall((:FP12_BN254CX_compow, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP12_BN254CX}, BIG_256_56, BIG_256_56), c, x, e, r)
end

function FP12_BN254CX_pow4(r, x, b)
    ccall((:FP12_BN254CX_pow4, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}, Ptr{BIG_256_56}), r, x, b)
end

function FP12_BN254CX_frob(x, f)
    ccall((:FP12_BN254CX_frob, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP2_BN254CX}), x, f)
end

function FP12_BN254CX_reduce(x)
    ccall((:FP12_BN254CX_reduce, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX},), x)
end

function FP12_BN254CX_norm(x)
    ccall((:FP12_BN254CX_norm, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX},), x)
end

function FP12_BN254CX_output(x)
    ccall((:FP12_BN254CX_output, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX},), x)
end

function FP12_BN254CX_toOctet(S, x)
    ccall((:FP12_BN254CX_toOctet, libamcl_pairing_BN254CX), Cvoid, (Ptr{octet}, Ptr{FP12_BN254CX}), S, x)
end

function FP12_BN254CX_fromOctet(x, S)
    ccall((:FP12_BN254CX_fromOctet, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{octet}), x, S)
end

function FP12_BN254CX_trace(t, x)
    ccall((:FP12_BN254CX_trace, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP12_BN254CX}), t, x)
end

function FP12_BN254CX_cmove(x, y, s)
    ccall((:FP12_BN254CX_cmove, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}, Cint), x, y, s)
end
# Julia wrapper for header: fp12_FP256BN.h
# Automatically generated using Clang.jl


function FP12_FP256BN_iszilch(x)
    ccall((:FP12_FP256BN_iszilch, libamcl_pairing_FP256BN), Cint, (Ptr{FP12_FP256BN},), x)
end

function FP12_FP256BN_isunity(x)
    ccall((:FP12_FP256BN_isunity, libamcl_pairing_FP256BN), Cint, (Ptr{FP12_FP256BN},), x)
end

function FP12_FP256BN_copy(x, y)
    ccall((:FP12_FP256BN_copy, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), x, y)
end

function FP12_FP256BN_one(x)
    ccall((:FP12_FP256BN_one, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN},), x)
end

function FP12_FP256BN_zero(x)
    ccall((:FP12_FP256BN_zero, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN},), x)
end

function FP12_FP256BN_equals(x, y)
    ccall((:FP12_FP256BN_equals, libamcl_pairing_FP256BN), Cint, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), x, y)
end

function FP12_FP256BN_conj(x, y)
    ccall((:FP12_FP256BN_conj, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), x, y)
end

function FP12_FP256BN_from_FP4(x, a)
    ccall((:FP12_FP256BN_from_FP4, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP4_FP256BN}), x, a)
end

function FP12_FP256BN_from_FP4s(x, a, b, c)
    ccall((:FP12_FP256BN_from_FP4s, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, a, b, c)
end

function FP12_FP256BN_usqr(x, y)
    ccall((:FP12_FP256BN_usqr, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), x, y)
end

function FP12_FP256BN_sqr(x, y)
    ccall((:FP12_FP256BN_sqr, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), x, y)
end

function FP12_FP256BN_smul(x, y)
    ccall((:FP12_FP256BN_smul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), x, y)
end

function FP12_FP256BN_ssmul(x, y)
    ccall((:FP12_FP256BN_ssmul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), x, y)
end

function FP12_FP256BN_mul(x, y)
    ccall((:FP12_FP256BN_mul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), x, y)
end

function FP12_FP256BN_inv(x, y)
    ccall((:FP12_FP256BN_inv, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), x, y)
end

function FP12_FP256BN_pow(r, x, b)
    ccall((:FP12_FP256BN_pow, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}, BIG_256_56), r, x, b)
end

function FP12_FP256BN_pinpow(x, i, b)
    ccall((:FP12_FP256BN_pinpow, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Cint, Cint), x, i, b)
end

function FP12_FP256BN_compow(c, x, e, r)
    ccall((:FP12_FP256BN_compow, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP12_FP256BN}, BIG_256_56, BIG_256_56), c, x, e, r)
end

function FP12_FP256BN_pow4(r, x, b)
    ccall((:FP12_FP256BN_pow4, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}, Ptr{BIG_256_56}), r, x, b)
end

function FP12_FP256BN_frob(x, f)
    ccall((:FP12_FP256BN_frob, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP2_FP256BN}), x, f)
end

function FP12_FP256BN_reduce(x)
    ccall((:FP12_FP256BN_reduce, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN},), x)
end

function FP12_FP256BN_norm(x)
    ccall((:FP12_FP256BN_norm, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN},), x)
end

function FP12_FP256BN_output(x)
    ccall((:FP12_FP256BN_output, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN},), x)
end

function FP12_FP256BN_toOctet(S, x)
    ccall((:FP12_FP256BN_toOctet, libamcl_pairing_FP256BN), Cvoid, (Ptr{octet}, Ptr{FP12_FP256BN}), S, x)
end

function FP12_FP256BN_fromOctet(x, S)
    ccall((:FP12_FP256BN_fromOctet, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{octet}), x, S)
end

function FP12_FP256BN_trace(t, x)
    ccall((:FP12_FP256BN_trace, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP12_FP256BN}), t, x)
end

function FP12_FP256BN_cmove(x, y, s)
    ccall((:FP12_FP256BN_cmove, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}, Cint), x, y, s)
end
# Julia wrapper for header: fp12_FP512BN.h
# Automatically generated using Clang.jl


function FP12_FP512BN_iszilch(x)
    ccall((:FP12_FP512BN_iszilch, libamcl_pairing_FP512BN), Cint, (Ptr{FP12_FP512BN},), x)
end

function FP12_FP512BN_isunity(x)
    ccall((:FP12_FP512BN_isunity, libamcl_pairing_FP512BN), Cint, (Ptr{FP12_FP512BN},), x)
end

function FP12_FP512BN_copy(x, y)
    ccall((:FP12_FP512BN_copy, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), x, y)
end

function FP12_FP512BN_one(x)
    ccall((:FP12_FP512BN_one, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN},), x)
end

function FP12_FP512BN_zero(x)
    ccall((:FP12_FP512BN_zero, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN},), x)
end

function FP12_FP512BN_equals(x, y)
    ccall((:FP12_FP512BN_equals, libamcl_pairing_FP512BN), Cint, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), x, y)
end

function FP12_FP512BN_conj(x, y)
    ccall((:FP12_FP512BN_conj, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), x, y)
end

function FP12_FP512BN_from_FP4(x, a)
    ccall((:FP12_FP512BN_from_FP4, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP4_FP512BN}), x, a)
end

function FP12_FP512BN_from_FP4s(x, a, b, c)
    ccall((:FP12_FP512BN_from_FP4s, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, a, b, c)
end

function FP12_FP512BN_usqr(x, y)
    ccall((:FP12_FP512BN_usqr, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), x, y)
end

function FP12_FP512BN_sqr(x, y)
    ccall((:FP12_FP512BN_sqr, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), x, y)
end

function FP12_FP512BN_smul(x, y)
    ccall((:FP12_FP512BN_smul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), x, y)
end

function FP12_FP512BN_ssmul(x, y)
    ccall((:FP12_FP512BN_ssmul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), x, y)
end

function FP12_FP512BN_mul(x, y)
    ccall((:FP12_FP512BN_mul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), x, y)
end

function FP12_FP512BN_inv(x, y)
    ccall((:FP12_FP512BN_inv, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), x, y)
end

function FP12_FP512BN_pow(r, x, b)
    ccall((:FP12_FP512BN_pow, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}, BIG_512_60), r, x, b)
end

function FP12_FP512BN_pinpow(x, i, b)
    ccall((:FP12_FP512BN_pinpow, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Cint, Cint), x, i, b)
end

function FP12_FP512BN_compow(c, x, e, r)
    ccall((:FP12_FP512BN_compow, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP12_FP512BN}, BIG_512_60, BIG_512_60), c, x, e, r)
end

function FP12_FP512BN_pow4(r, x, b)
    ccall((:FP12_FP512BN_pow4, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}, Ptr{BIG_512_60}), r, x, b)
end

function FP12_FP512BN_frob(x, f)
    ccall((:FP12_FP512BN_frob, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP2_FP512BN}), x, f)
end

function FP12_FP512BN_reduce(x)
    ccall((:FP12_FP512BN_reduce, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN},), x)
end

function FP12_FP512BN_norm(x)
    ccall((:FP12_FP512BN_norm, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN},), x)
end

function FP12_FP512BN_output(x)
    ccall((:FP12_FP512BN_output, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN},), x)
end

function FP12_FP512BN_toOctet(S, x)
    ccall((:FP12_FP512BN_toOctet, libamcl_pairing_FP512BN), Cvoid, (Ptr{octet}, Ptr{FP12_FP512BN}), S, x)
end

function FP12_FP512BN_fromOctet(x, S)
    ccall((:FP12_FP512BN_fromOctet, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{octet}), x, S)
end

function FP12_FP512BN_trace(t, x)
    ccall((:FP12_FP512BN_trace, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP12_FP512BN}), t, x)
end

function FP12_FP512BN_cmove(x, y, s)
    ccall((:FP12_FP512BN_cmove, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}, Cint), x, y, s)
end
# Julia wrapper for header: fp16_BLS48.h
# Automatically generated using Clang.jl


function FP16_BLS48_iszilch(x)
    ccall((:FP16_BLS48_iszilch, libamcl_pairing_BLS48), Cint, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_isunity(x)
    ccall((:FP16_BLS48_isunity, libamcl_pairing_BLS48), Cint, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_equals(x, y)
    ccall((:FP16_BLS48_equals, libamcl_pairing_BLS48), Cint, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y)
end

function FP16_BLS48_isreal(x)
    ccall((:FP16_BLS48_isreal, libamcl_pairing_BLS48), Cint, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_from_FP8s(x, a, b)
    ccall((:FP16_BLS48_from_FP8s, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, a, b)
end

function FP16_BLS48_from_FP8(x, a)
    ccall((:FP16_BLS48_from_FP8, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP8_BLS48}), x, a)
end

function FP16_BLS48_from_FP8H(x, a)
    ccall((:FP16_BLS48_from_FP8H, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP8_BLS48}), x, a)
end

function FP16_BLS48_copy(x, y)
    ccall((:FP16_BLS48_copy, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y)
end

function FP16_BLS48_zero(x)
    ccall((:FP16_BLS48_zero, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_one(x)
    ccall((:FP16_BLS48_one, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_neg(x, y)
    ccall((:FP16_BLS48_neg, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y)
end

function FP16_BLS48_conj(x, y)
    ccall((:FP16_BLS48_conj, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y)
end

function FP16_BLS48_nconj(x, y)
    ccall((:FP16_BLS48_nconj, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y)
end

function FP16_BLS48_add(x, y, z)
    ccall((:FP16_BLS48_add, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y, z)
end

function FP16_BLS48_sub(x, y, z)
    ccall((:FP16_BLS48_sub, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y, z)
end

function FP16_BLS48_pmul(x, y, a)
    ccall((:FP16_BLS48_pmul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP8_BLS48}), x, y, a)
end

function FP16_BLS48_qmul(x, y, a)
    ccall((:FP16_BLS48_qmul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP2_BLS48}), x, y, a)
end

function FP16_BLS48_imul(x, y, i)
    ccall((:FP16_BLS48_imul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Cint), x, y, i)
end

function FP16_BLS48_sqr(x, y)
    ccall((:FP16_BLS48_sqr, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y)
end

function FP16_BLS48_mul(x, y, z)
    ccall((:FP16_BLS48_mul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y, z)
end

function FP16_BLS48_inv(x, y)
    ccall((:FP16_BLS48_inv, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, y)
end

function FP16_BLS48_output(x)
    ccall((:FP16_BLS48_output, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_rawoutput(x)
    ccall((:FP16_BLS48_rawoutput, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_times_i(x)
    ccall((:FP16_BLS48_times_i, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_times_i2(x)
    ccall((:FP16_BLS48_times_i2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_times_i4(x)
    ccall((:FP16_BLS48_times_i4, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_norm(x)
    ccall((:FP16_BLS48_norm, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_reduce(x)
    ccall((:FP16_BLS48_reduce, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48},), x)
end

function FP16_BLS48_pow(x, y, b)
    ccall((:FP16_BLS48_pow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, BIG_560_58), x, y, b)
end

function FP16_BLS48_frob(x, f)
    ccall((:FP16_BLS48_frob, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP2_BLS48}), x, f)
end

function FP16_BLS48_xtr_A(r, w, x, y, z)
    ccall((:FP16_BLS48_xtr_A, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), r, w, x, y, z)
end

function FP16_BLS48_xtr_D(r, x)
    ccall((:FP16_BLS48_xtr_D, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), r, x)
end

function FP16_BLS48_xtr_pow(r, x, b)
    ccall((:FP16_BLS48_xtr_pow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, BIG_560_58), r, x, b)
end

function FP16_BLS48_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP16_BLS48_xtr_pow2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, BIG_560_58, BIG_560_58), r, c, d, e, f, a, b)
end

function FP16_BLS48_cmove(x, y, s)
    ccall((:FP16_BLS48_cmove, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Cint), x, y, s)
end
# Julia wrapper for header: fp24_BLS24.h
# Automatically generated using Clang.jl


function FP24_BLS24_iszilch(x)
    ccall((:FP24_BLS24_iszilch, libamcl_pairing_BLS24), Cint, (Ptr{FP24_BLS24},), x)
end

function FP24_BLS24_isunity(x)
    ccall((:FP24_BLS24_isunity, libamcl_pairing_BLS24), Cint, (Ptr{FP24_BLS24},), x)
end

function FP24_BLS24_copy(x, y)
    ccall((:FP24_BLS24_copy, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), x, y)
end

function FP24_BLS24_one(x)
    ccall((:FP24_BLS24_one, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24},), x)
end

function FP24_BLS24_zero(x)
    ccall((:FP24_BLS24_zero, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24},), x)
end

function FP24_BLS24_equals(x, y)
    ccall((:FP24_BLS24_equals, libamcl_pairing_BLS24), Cint, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), x, y)
end

function FP24_BLS24_conj(x, y)
    ccall((:FP24_BLS24_conj, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), x, y)
end

function FP24_BLS24_from_FP8(x, a)
    ccall((:FP24_BLS24_from_FP8, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP8_BLS24}), x, a)
end

function FP24_BLS24_from_FP8s(x, a, b, c)
    ccall((:FP24_BLS24_from_FP8s, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, a, b, c)
end

function FP24_BLS24_usqr(x, y)
    ccall((:FP24_BLS24_usqr, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), x, y)
end

function FP24_BLS24_sqr(x, y)
    ccall((:FP24_BLS24_sqr, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), x, y)
end

function FP24_BLS24_smul(x, y)
    ccall((:FP24_BLS24_smul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), x, y)
end

function FP24_BLS24_ssmul(x, y)
    ccall((:FP24_BLS24_ssmul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), x, y)
end

function FP24_BLS24_mul(x, y)
    ccall((:FP24_BLS24_mul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), x, y)
end

function FP24_BLS24_inv(x, y)
    ccall((:FP24_BLS24_inv, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), x, y)
end

function FP24_BLS24_pow(r, x, b)
    ccall((:FP24_BLS24_pow, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}, BIG_480_56), r, x, b)
end

function FP24_BLS24_pinpow(x, i, b)
    ccall((:FP24_BLS24_pinpow, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Cint, Cint), x, i, b)
end

function FP24_BLS24_compow(c, x, e, r)
    ccall((:FP24_BLS24_compow, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP24_BLS24}, BIG_480_56, BIG_480_56), c, x, e, r)
end

function FP24_BLS24_pow8(r, x, b)
    ccall((:FP24_BLS24_pow8, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}, Ptr{BIG_480_56}), r, x, b)
end

function FP24_BLS24_frob(x, f, n)
    ccall((:FP24_BLS24_frob, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP2_BLS24}, Cint), x, f, n)
end

function FP24_BLS24_reduce(x)
    ccall((:FP24_BLS24_reduce, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24},), x)
end

function FP24_BLS24_norm(x)
    ccall((:FP24_BLS24_norm, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24},), x)
end

function FP24_BLS24_output(x)
    ccall((:FP24_BLS24_output, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24},), x)
end

function FP24_BLS24_toOctet(S, x)
    ccall((:FP24_BLS24_toOctet, libamcl_pairing_BLS24), Cvoid, (Ptr{octet}, Ptr{FP24_BLS24}), S, x)
end

function FP24_BLS24_fromOctet(x, S)
    ccall((:FP24_BLS24_fromOctet, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{octet}), x, S)
end

function FP24_BLS24_trace(t, x)
    ccall((:FP24_BLS24_trace, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP24_BLS24}), t, x)
end

function FP24_BLS24_cmove(x, y, s)
    ccall((:FP24_BLS24_cmove, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}, Cint), x, y, s)
end
# Julia wrapper for header: fp2_BLS24.h
# Automatically generated using Clang.jl


function FP2_BLS24_iszilch(x)
    ccall((:FP2_BLS24_iszilch, libamcl_pairing_BLS24), Cint, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_cmove(x, y, s)
    ccall((:FP2_BLS24_cmove, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}, Cint), x, y, s)
end

function FP2_BLS24_isunity(x)
    ccall((:FP2_BLS24_isunity, libamcl_pairing_BLS24), Cint, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_equals(x, y)
    ccall((:FP2_BLS24_equals, libamcl_pairing_BLS24), Cint, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y)
end

function FP2_BLS24_from_FPs(x, a, b)
    ccall((:FP2_BLS24_from_FPs, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, a, b)
end

function FP2_BLS24_from_BIGs(x, a, b)
    ccall((:FP2_BLS24_from_BIGs, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, BIG_480_56, BIG_480_56), x, a, b)
end

function FP2_BLS24_from_FP(x, a)
    ccall((:FP2_BLS24_from_FP, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP_BLS24}), x, a)
end

function FP2_BLS24_from_BIG(x, a)
    ccall((:FP2_BLS24_from_BIG, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, BIG_480_56), x, a)
end

function FP2_BLS24_copy(x, y)
    ccall((:FP2_BLS24_copy, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y)
end

function FP2_BLS24_zero(x)
    ccall((:FP2_BLS24_zero, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_one(x)
    ccall((:FP2_BLS24_one, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_neg(x, y)
    ccall((:FP2_BLS24_neg, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y)
end

function FP2_BLS24_conj(x, y)
    ccall((:FP2_BLS24_conj, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y)
end

function FP2_BLS24_add(x, y, z)
    ccall((:FP2_BLS24_add, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y, z)
end

function FP2_BLS24_sub(x, y, z)
    ccall((:FP2_BLS24_sub, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y, z)
end

function FP2_BLS24_pmul(x, y, b)
    ccall((:FP2_BLS24_pmul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}, Ptr{FP_BLS24}), x, y, b)
end

function FP2_BLS24_imul(x, y, i)
    ccall((:FP2_BLS24_imul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}, Cint), x, y, i)
end

function FP2_BLS24_sqr(x, y)
    ccall((:FP2_BLS24_sqr, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y)
end

function FP2_BLS24_mul(x, y, z)
    ccall((:FP2_BLS24_mul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y, z)
end

function FP2_BLS24_output(x)
    ccall((:FP2_BLS24_output, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_rawoutput(x)
    ccall((:FP2_BLS24_rawoutput, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_inv(x, y)
    ccall((:FP2_BLS24_inv, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y)
end

function FP2_BLS24_div2(x, y)
    ccall((:FP2_BLS24_div2, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y)
end

function FP2_BLS24_mul_ip(x)
    ccall((:FP2_BLS24_mul_ip, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_div_ip2(x)
    ccall((:FP2_BLS24_div_ip2, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_div_ip(x)
    ccall((:FP2_BLS24_div_ip, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_norm(x)
    ccall((:FP2_BLS24_norm, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_reduce(x)
    ccall((:FP2_BLS24_reduce, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end

function FP2_BLS24_pow(x, y, b)
    ccall((:FP2_BLS24_pow, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}, BIG_480_56), x, y, b)
end

function FP2_BLS24_sqrt(x, y)
    ccall((:FP2_BLS24_sqrt, libamcl_pairing_BLS24), Cint, (Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, y)
end

function FP2_BLS24_times_i(x)
    ccall((:FP2_BLS24_times_i, libamcl_pairing_BLS24), Cvoid, (Ptr{FP2_BLS24},), x)
end
# Julia wrapper for header: fp2_BLS381.h
# Automatically generated using Clang.jl


function FP2_BLS381_iszilch(x)
    ccall((:FP2_BLS381_iszilch, libamcl_pairing_BLS381), Cint, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_cmove(x, y, s)
    ccall((:FP2_BLS381_cmove, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}, Cint), x, y, s)
end

function FP2_BLS381_isunity(x)
    ccall((:FP2_BLS381_isunity, libamcl_pairing_BLS381), Cint, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_equals(x, y)
    ccall((:FP2_BLS381_equals, libamcl_pairing_BLS381), Cint, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y)
end

function FP2_BLS381_from_FPs(x, a, b)
    ccall((:FP2_BLS381_from_FPs, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, a, b)
end

function FP2_BLS381_from_BIGs(x, a, b)
    ccall((:FP2_BLS381_from_BIGs, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, BIG_384_58, BIG_384_58), x, a, b)
end

function FP2_BLS381_from_FP(x, a)
    ccall((:FP2_BLS381_from_FP, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP_BLS381}), x, a)
end

function FP2_BLS381_from_BIG(x, a)
    ccall((:FP2_BLS381_from_BIG, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, BIG_384_58), x, a)
end

function FP2_BLS381_copy(x, y)
    ccall((:FP2_BLS381_copy, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y)
end

function FP2_BLS381_zero(x)
    ccall((:FP2_BLS381_zero, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_one(x)
    ccall((:FP2_BLS381_one, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_neg(x, y)
    ccall((:FP2_BLS381_neg, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y)
end

function FP2_BLS381_conj(x, y)
    ccall((:FP2_BLS381_conj, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y)
end

function FP2_BLS381_add(x, y, z)
    ccall((:FP2_BLS381_add, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y, z)
end

function FP2_BLS381_sub(x, y, z)
    ccall((:FP2_BLS381_sub, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y, z)
end

function FP2_BLS381_pmul(x, y, b)
    ccall((:FP2_BLS381_pmul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}, Ptr{FP_BLS381}), x, y, b)
end

function FP2_BLS381_imul(x, y, i)
    ccall((:FP2_BLS381_imul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}, Cint), x, y, i)
end

function FP2_BLS381_sqr(x, y)
    ccall((:FP2_BLS381_sqr, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y)
end

function FP2_BLS381_mul(x, y, z)
    ccall((:FP2_BLS381_mul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y, z)
end

function FP2_BLS381_output(x)
    ccall((:FP2_BLS381_output, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_rawoutput(x)
    ccall((:FP2_BLS381_rawoutput, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_inv(x, y)
    ccall((:FP2_BLS381_inv, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y)
end

function FP2_BLS381_div2(x, y)
    ccall((:FP2_BLS381_div2, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y)
end

function FP2_BLS381_mul_ip(x)
    ccall((:FP2_BLS381_mul_ip, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_div_ip2(x)
    ccall((:FP2_BLS381_div_ip2, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_div_ip(x)
    ccall((:FP2_BLS381_div_ip, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_norm(x)
    ccall((:FP2_BLS381_norm, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_reduce(x)
    ccall((:FP2_BLS381_reduce, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end

function FP2_BLS381_pow(x, y, b)
    ccall((:FP2_BLS381_pow, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}, BIG_384_58), x, y, b)
end

function FP2_BLS381_sqrt(x, y)
    ccall((:FP2_BLS381_sqrt, libamcl_pairing_BLS381), Cint, (Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, y)
end

function FP2_BLS381_times_i(x)
    ccall((:FP2_BLS381_times_i, libamcl_pairing_BLS381), Cvoid, (Ptr{FP2_BLS381},), x)
end
# Julia wrapper for header: fp2_BLS383.h
# Automatically generated using Clang.jl


function FP2_BLS383_iszilch(x)
    ccall((:FP2_BLS383_iszilch, libamcl_pairing_BLS383), Cint, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_cmove(x, y, s)
    ccall((:FP2_BLS383_cmove, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}, Cint), x, y, s)
end

function FP2_BLS383_isunity(x)
    ccall((:FP2_BLS383_isunity, libamcl_pairing_BLS383), Cint, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_equals(x, y)
    ccall((:FP2_BLS383_equals, libamcl_pairing_BLS383), Cint, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y)
end

function FP2_BLS383_from_FPs(x, a, b)
    ccall((:FP2_BLS383_from_FPs, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, a, b)
end

function FP2_BLS383_from_BIGs(x, a, b)
    ccall((:FP2_BLS383_from_BIGs, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, BIG_384_58, BIG_384_58), x, a, b)
end

function FP2_BLS383_from_FP(x, a)
    ccall((:FP2_BLS383_from_FP, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP_BLS383}), x, a)
end

function FP2_BLS383_from_BIG(x, a)
    ccall((:FP2_BLS383_from_BIG, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, BIG_384_58), x, a)
end

function FP2_BLS383_copy(x, y)
    ccall((:FP2_BLS383_copy, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y)
end

function FP2_BLS383_zero(x)
    ccall((:FP2_BLS383_zero, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_one(x)
    ccall((:FP2_BLS383_one, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_neg(x, y)
    ccall((:FP2_BLS383_neg, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y)
end

function FP2_BLS383_conj(x, y)
    ccall((:FP2_BLS383_conj, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y)
end

function FP2_BLS383_add(x, y, z)
    ccall((:FP2_BLS383_add, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y, z)
end

function FP2_BLS383_sub(x, y, z)
    ccall((:FP2_BLS383_sub, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y, z)
end

function FP2_BLS383_pmul(x, y, b)
    ccall((:FP2_BLS383_pmul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}, Ptr{FP_BLS383}), x, y, b)
end

function FP2_BLS383_imul(x, y, i)
    ccall((:FP2_BLS383_imul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}, Cint), x, y, i)
end

function FP2_BLS383_sqr(x, y)
    ccall((:FP2_BLS383_sqr, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y)
end

function FP2_BLS383_mul(x, y, z)
    ccall((:FP2_BLS383_mul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y, z)
end

function FP2_BLS383_output(x)
    ccall((:FP2_BLS383_output, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_rawoutput(x)
    ccall((:FP2_BLS383_rawoutput, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_inv(x, y)
    ccall((:FP2_BLS383_inv, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y)
end

function FP2_BLS383_div2(x, y)
    ccall((:FP2_BLS383_div2, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y)
end

function FP2_BLS383_mul_ip(x)
    ccall((:FP2_BLS383_mul_ip, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_div_ip2(x)
    ccall((:FP2_BLS383_div_ip2, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_div_ip(x)
    ccall((:FP2_BLS383_div_ip, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_norm(x)
    ccall((:FP2_BLS383_norm, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_reduce(x)
    ccall((:FP2_BLS383_reduce, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end

function FP2_BLS383_pow(x, y, b)
    ccall((:FP2_BLS383_pow, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}, BIG_384_58), x, y, b)
end

function FP2_BLS383_sqrt(x, y)
    ccall((:FP2_BLS383_sqrt, libamcl_pairing_BLS383), Cint, (Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, y)
end

function FP2_BLS383_times_i(x)
    ccall((:FP2_BLS383_times_i, libamcl_pairing_BLS383), Cvoid, (Ptr{FP2_BLS383},), x)
end
# Julia wrapper for header: fp2_BLS461.h
# Automatically generated using Clang.jl


function FP2_BLS461_iszilch(x)
    ccall((:FP2_BLS461_iszilch, libamcl_pairing_BLS461), Cint, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_cmove(x, y, s)
    ccall((:FP2_BLS461_cmove, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}, Cint), x, y, s)
end

function FP2_BLS461_isunity(x)
    ccall((:FP2_BLS461_isunity, libamcl_pairing_BLS461), Cint, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_equals(x, y)
    ccall((:FP2_BLS461_equals, libamcl_pairing_BLS461), Cint, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y)
end

function FP2_BLS461_from_FPs(x, a, b)
    ccall((:FP2_BLS461_from_FPs, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, a, b)
end

function FP2_BLS461_from_BIGs(x, a, b)
    ccall((:FP2_BLS461_from_BIGs, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, BIG_464_60, BIG_464_60), x, a, b)
end

function FP2_BLS461_from_FP(x, a)
    ccall((:FP2_BLS461_from_FP, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP_BLS461}), x, a)
end

function FP2_BLS461_from_BIG(x, a)
    ccall((:FP2_BLS461_from_BIG, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, BIG_464_60), x, a)
end

function FP2_BLS461_copy(x, y)
    ccall((:FP2_BLS461_copy, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y)
end

function FP2_BLS461_zero(x)
    ccall((:FP2_BLS461_zero, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_one(x)
    ccall((:FP2_BLS461_one, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_neg(x, y)
    ccall((:FP2_BLS461_neg, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y)
end

function FP2_BLS461_conj(x, y)
    ccall((:FP2_BLS461_conj, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y)
end

function FP2_BLS461_add(x, y, z)
    ccall((:FP2_BLS461_add, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y, z)
end

function FP2_BLS461_sub(x, y, z)
    ccall((:FP2_BLS461_sub, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y, z)
end

function FP2_BLS461_pmul(x, y, b)
    ccall((:FP2_BLS461_pmul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}, Ptr{FP_BLS461}), x, y, b)
end

function FP2_BLS461_imul(x, y, i)
    ccall((:FP2_BLS461_imul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}, Cint), x, y, i)
end

function FP2_BLS461_sqr(x, y)
    ccall((:FP2_BLS461_sqr, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y)
end

function FP2_BLS461_mul(x, y, z)
    ccall((:FP2_BLS461_mul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y, z)
end

function FP2_BLS461_output(x)
    ccall((:FP2_BLS461_output, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_rawoutput(x)
    ccall((:FP2_BLS461_rawoutput, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_inv(x, y)
    ccall((:FP2_BLS461_inv, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y)
end

function FP2_BLS461_div2(x, y)
    ccall((:FP2_BLS461_div2, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y)
end

function FP2_BLS461_mul_ip(x)
    ccall((:FP2_BLS461_mul_ip, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_div_ip2(x)
    ccall((:FP2_BLS461_div_ip2, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_div_ip(x)
    ccall((:FP2_BLS461_div_ip, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_norm(x)
    ccall((:FP2_BLS461_norm, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_reduce(x)
    ccall((:FP2_BLS461_reduce, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end

function FP2_BLS461_pow(x, y, b)
    ccall((:FP2_BLS461_pow, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}, BIG_464_60), x, y, b)
end

function FP2_BLS461_sqrt(x, y)
    ccall((:FP2_BLS461_sqrt, libamcl_pairing_BLS461), Cint, (Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, y)
end

function FP2_BLS461_times_i(x)
    ccall((:FP2_BLS461_times_i, libamcl_pairing_BLS461), Cvoid, (Ptr{FP2_BLS461},), x)
end
# Julia wrapper for header: fp2_BLS48.h
# Automatically generated using Clang.jl


function FP2_BLS48_iszilch(x)
    ccall((:FP2_BLS48_iszilch, libamcl_pairing_BLS48), Cint, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_cmove(x, y, s)
    ccall((:FP2_BLS48_cmove, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}, Cint), x, y, s)
end

function FP2_BLS48_isunity(x)
    ccall((:FP2_BLS48_isunity, libamcl_pairing_BLS48), Cint, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_equals(x, y)
    ccall((:FP2_BLS48_equals, libamcl_pairing_BLS48), Cint, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y)
end

function FP2_BLS48_from_FPs(x, a, b)
    ccall((:FP2_BLS48_from_FPs, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, a, b)
end

function FP2_BLS48_from_BIGs(x, a, b)
    ccall((:FP2_BLS48_from_BIGs, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, BIG_560_58, BIG_560_58), x, a, b)
end

function FP2_BLS48_from_FP(x, a)
    ccall((:FP2_BLS48_from_FP, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP_BLS48}), x, a)
end

function FP2_BLS48_from_BIG(x, a)
    ccall((:FP2_BLS48_from_BIG, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, BIG_560_58), x, a)
end

function FP2_BLS48_copy(x, y)
    ccall((:FP2_BLS48_copy, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y)
end

function FP2_BLS48_zero(x)
    ccall((:FP2_BLS48_zero, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_one(x)
    ccall((:FP2_BLS48_one, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_neg(x, y)
    ccall((:FP2_BLS48_neg, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y)
end

function FP2_BLS48_conj(x, y)
    ccall((:FP2_BLS48_conj, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y)
end

function FP2_BLS48_add(x, y, z)
    ccall((:FP2_BLS48_add, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y, z)
end

function FP2_BLS48_sub(x, y, z)
    ccall((:FP2_BLS48_sub, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y, z)
end

function FP2_BLS48_pmul(x, y, b)
    ccall((:FP2_BLS48_pmul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}, Ptr{FP_BLS48}), x, y, b)
end

function FP2_BLS48_imul(x, y, i)
    ccall((:FP2_BLS48_imul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}, Cint), x, y, i)
end

function FP2_BLS48_sqr(x, y)
    ccall((:FP2_BLS48_sqr, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y)
end

function FP2_BLS48_mul(x, y, z)
    ccall((:FP2_BLS48_mul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y, z)
end

function FP2_BLS48_output(x)
    ccall((:FP2_BLS48_output, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_rawoutput(x)
    ccall((:FP2_BLS48_rawoutput, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_inv(x, y)
    ccall((:FP2_BLS48_inv, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y)
end

function FP2_BLS48_div2(x, y)
    ccall((:FP2_BLS48_div2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y)
end

function FP2_BLS48_mul_ip(x)
    ccall((:FP2_BLS48_mul_ip, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_div_ip2(x)
    ccall((:FP2_BLS48_div_ip2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_div_ip(x)
    ccall((:FP2_BLS48_div_ip, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_norm(x)
    ccall((:FP2_BLS48_norm, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_reduce(x)
    ccall((:FP2_BLS48_reduce, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end

function FP2_BLS48_pow(x, y, b)
    ccall((:FP2_BLS48_pow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}, BIG_560_58), x, y, b)
end

function FP2_BLS48_sqrt(x, y)
    ccall((:FP2_BLS48_sqrt, libamcl_pairing_BLS48), Cint, (Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, y)
end

function FP2_BLS48_times_i(x)
    ccall((:FP2_BLS48_times_i, libamcl_pairing_BLS48), Cvoid, (Ptr{FP2_BLS48},), x)
end
# Julia wrapper for header: fp2_BN254.h
# Automatically generated using Clang.jl


function FP2_BN254_iszilch(x)
    ccall((:FP2_BN254_iszilch, libamcl_pairing_BN254), Cint, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_cmove(x, y, s)
    ccall((:FP2_BN254_cmove, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}, Cint), x, y, s)
end

function FP2_BN254_isunity(x)
    ccall((:FP2_BN254_isunity, libamcl_pairing_BN254), Cint, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_equals(x, y)
    ccall((:FP2_BN254_equals, libamcl_pairing_BN254), Cint, (Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y)
end

function FP2_BN254_from_FPs(x, a, b)
    ccall((:FP2_BN254_from_FPs, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP_BN254}, Ptr{FP_BN254}), x, a, b)
end

function FP2_BN254_from_BIGs(x, a, b)
    ccall((:FP2_BN254_from_BIGs, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, BIG_256_56, BIG_256_56), x, a, b)
end

function FP2_BN254_from_FP(x, a)
    ccall((:FP2_BN254_from_FP, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP_BN254}), x, a)
end

function FP2_BN254_from_BIG(x, a)
    ccall((:FP2_BN254_from_BIG, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, BIG_256_56), x, a)
end

function FP2_BN254_copy(x, y)
    ccall((:FP2_BN254_copy, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y)
end

function FP2_BN254_zero(x)
    ccall((:FP2_BN254_zero, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_one(x)
    ccall((:FP2_BN254_one, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_neg(x, y)
    ccall((:FP2_BN254_neg, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y)
end

function FP2_BN254_conj(x, y)
    ccall((:FP2_BN254_conj, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y)
end

function FP2_BN254_add(x, y, z)
    ccall((:FP2_BN254_add, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y, z)
end

function FP2_BN254_sub(x, y, z)
    ccall((:FP2_BN254_sub, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y, z)
end

function FP2_BN254_pmul(x, y, b)
    ccall((:FP2_BN254_pmul, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}, Ptr{FP_BN254}), x, y, b)
end

function FP2_BN254_imul(x, y, i)
    ccall((:FP2_BN254_imul, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}, Cint), x, y, i)
end

function FP2_BN254_sqr(x, y)
    ccall((:FP2_BN254_sqr, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y)
end

function FP2_BN254_mul(x, y, z)
    ccall((:FP2_BN254_mul, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y, z)
end

function FP2_BN254_output(x)
    ccall((:FP2_BN254_output, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_rawoutput(x)
    ccall((:FP2_BN254_rawoutput, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_inv(x, y)
    ccall((:FP2_BN254_inv, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y)
end

function FP2_BN254_div2(x, y)
    ccall((:FP2_BN254_div2, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y)
end

function FP2_BN254_mul_ip(x)
    ccall((:FP2_BN254_mul_ip, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_div_ip2(x)
    ccall((:FP2_BN254_div_ip2, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_div_ip(x)
    ccall((:FP2_BN254_div_ip, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_norm(x)
    ccall((:FP2_BN254_norm, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_reduce(x)
    ccall((:FP2_BN254_reduce, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end

function FP2_BN254_pow(x, y, b)
    ccall((:FP2_BN254_pow, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254}, Ptr{FP2_BN254}, BIG_256_56), x, y, b)
end

function FP2_BN254_sqrt(x, y)
    ccall((:FP2_BN254_sqrt, libamcl_pairing_BN254), Cint, (Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, y)
end

function FP2_BN254_times_i(x)
    ccall((:FP2_BN254_times_i, libamcl_pairing_BN254), Cvoid, (Ptr{FP2_BN254},), x)
end
# Julia wrapper for header: fp2_BN254CX.h
# Automatically generated using Clang.jl


function FP2_BN254CX_iszilch(x)
    ccall((:FP2_BN254CX_iszilch, libamcl_pairing_BN254CX), Cint, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_cmove(x, y, s)
    ccall((:FP2_BN254CX_cmove, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}, Cint), x, y, s)
end

function FP2_BN254CX_isunity(x)
    ccall((:FP2_BN254CX_isunity, libamcl_pairing_BN254CX), Cint, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_equals(x, y)
    ccall((:FP2_BN254CX_equals, libamcl_pairing_BN254CX), Cint, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y)
end

function FP2_BN254CX_from_FPs(x, a, b)
    ccall((:FP2_BN254CX_from_FPs, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, a, b)
end

function FP2_BN254CX_from_BIGs(x, a, b)
    ccall((:FP2_BN254CX_from_BIGs, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, BIG_256_56, BIG_256_56), x, a, b)
end

function FP2_BN254CX_from_FP(x, a)
    ccall((:FP2_BN254CX_from_FP, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP_BN254CX}), x, a)
end

function FP2_BN254CX_from_BIG(x, a)
    ccall((:FP2_BN254CX_from_BIG, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, BIG_256_56), x, a)
end

function FP2_BN254CX_copy(x, y)
    ccall((:FP2_BN254CX_copy, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y)
end

function FP2_BN254CX_zero(x)
    ccall((:FP2_BN254CX_zero, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_one(x)
    ccall((:FP2_BN254CX_one, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_neg(x, y)
    ccall((:FP2_BN254CX_neg, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y)
end

function FP2_BN254CX_conj(x, y)
    ccall((:FP2_BN254CX_conj, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y)
end

function FP2_BN254CX_add(x, y, z)
    ccall((:FP2_BN254CX_add, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y, z)
end

function FP2_BN254CX_sub(x, y, z)
    ccall((:FP2_BN254CX_sub, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y, z)
end

function FP2_BN254CX_pmul(x, y, b)
    ccall((:FP2_BN254CX_pmul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}, Ptr{FP_BN254CX}), x, y, b)
end

function FP2_BN254CX_imul(x, y, i)
    ccall((:FP2_BN254CX_imul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}, Cint), x, y, i)
end

function FP2_BN254CX_sqr(x, y)
    ccall((:FP2_BN254CX_sqr, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y)
end

function FP2_BN254CX_mul(x, y, z)
    ccall((:FP2_BN254CX_mul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y, z)
end

function FP2_BN254CX_output(x)
    ccall((:FP2_BN254CX_output, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_rawoutput(x)
    ccall((:FP2_BN254CX_rawoutput, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_inv(x, y)
    ccall((:FP2_BN254CX_inv, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y)
end

function FP2_BN254CX_div2(x, y)
    ccall((:FP2_BN254CX_div2, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y)
end

function FP2_BN254CX_mul_ip(x)
    ccall((:FP2_BN254CX_mul_ip, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_div_ip2(x)
    ccall((:FP2_BN254CX_div_ip2, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_div_ip(x)
    ccall((:FP2_BN254CX_div_ip, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_norm(x)
    ccall((:FP2_BN254CX_norm, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_reduce(x)
    ccall((:FP2_BN254CX_reduce, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end

function FP2_BN254CX_pow(x, y, b)
    ccall((:FP2_BN254CX_pow, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}, BIG_256_56), x, y, b)
end

function FP2_BN254CX_sqrt(x, y)
    ccall((:FP2_BN254CX_sqrt, libamcl_pairing_BN254CX), Cint, (Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, y)
end

function FP2_BN254CX_times_i(x)
    ccall((:FP2_BN254CX_times_i, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP2_BN254CX},), x)
end
# Julia wrapper for header: fp2_FP256BN.h
# Automatically generated using Clang.jl


function FP2_FP256BN_iszilch(x)
    ccall((:FP2_FP256BN_iszilch, libamcl_pairing_FP256BN), Cint, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_cmove(x, y, s)
    ccall((:FP2_FP256BN_cmove, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}, Cint), x, y, s)
end

function FP2_FP256BN_isunity(x)
    ccall((:FP2_FP256BN_isunity, libamcl_pairing_FP256BN), Cint, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_equals(x, y)
    ccall((:FP2_FP256BN_equals, libamcl_pairing_FP256BN), Cint, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y)
end

function FP2_FP256BN_from_FPs(x, a, b)
    ccall((:FP2_FP256BN_from_FPs, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, a, b)
end

function FP2_FP256BN_from_BIGs(x, a, b)
    ccall((:FP2_FP256BN_from_BIGs, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, BIG_256_56, BIG_256_56), x, a, b)
end

function FP2_FP256BN_from_FP(x, a)
    ccall((:FP2_FP256BN_from_FP, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP_FP256BN}), x, a)
end

function FP2_FP256BN_from_BIG(x, a)
    ccall((:FP2_FP256BN_from_BIG, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, BIG_256_56), x, a)
end

function FP2_FP256BN_copy(x, y)
    ccall((:FP2_FP256BN_copy, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y)
end

function FP2_FP256BN_zero(x)
    ccall((:FP2_FP256BN_zero, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_one(x)
    ccall((:FP2_FP256BN_one, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_neg(x, y)
    ccall((:FP2_FP256BN_neg, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y)
end

function FP2_FP256BN_conj(x, y)
    ccall((:FP2_FP256BN_conj, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y)
end

function FP2_FP256BN_add(x, y, z)
    ccall((:FP2_FP256BN_add, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y, z)
end

function FP2_FP256BN_sub(x, y, z)
    ccall((:FP2_FP256BN_sub, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y, z)
end

function FP2_FP256BN_pmul(x, y, b)
    ccall((:FP2_FP256BN_pmul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}, Ptr{FP_FP256BN}), x, y, b)
end

function FP2_FP256BN_imul(x, y, i)
    ccall((:FP2_FP256BN_imul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}, Cint), x, y, i)
end

function FP2_FP256BN_sqr(x, y)
    ccall((:FP2_FP256BN_sqr, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y)
end

function FP2_FP256BN_mul(x, y, z)
    ccall((:FP2_FP256BN_mul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y, z)
end

function FP2_FP256BN_output(x)
    ccall((:FP2_FP256BN_output, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_rawoutput(x)
    ccall((:FP2_FP256BN_rawoutput, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_inv(x, y)
    ccall((:FP2_FP256BN_inv, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y)
end

function FP2_FP256BN_div2(x, y)
    ccall((:FP2_FP256BN_div2, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y)
end

function FP2_FP256BN_mul_ip(x)
    ccall((:FP2_FP256BN_mul_ip, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_div_ip2(x)
    ccall((:FP2_FP256BN_div_ip2, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_div_ip(x)
    ccall((:FP2_FP256BN_div_ip, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_norm(x)
    ccall((:FP2_FP256BN_norm, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_reduce(x)
    ccall((:FP2_FP256BN_reduce, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end

function FP2_FP256BN_pow(x, y, b)
    ccall((:FP2_FP256BN_pow, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}, BIG_256_56), x, y, b)
end

function FP2_FP256BN_sqrt(x, y)
    ccall((:FP2_FP256BN_sqrt, libamcl_pairing_FP256BN), Cint, (Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, y)
end

function FP2_FP256BN_times_i(x)
    ccall((:FP2_FP256BN_times_i, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP2_FP256BN},), x)
end
# Julia wrapper for header: fp2_FP512BN.h
# Automatically generated using Clang.jl


function FP2_FP512BN_iszilch(x)
    ccall((:FP2_FP512BN_iszilch, libamcl_pairing_FP512BN), Cint, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_cmove(x, y, s)
    ccall((:FP2_FP512BN_cmove, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}, Cint), x, y, s)
end

function FP2_FP512BN_isunity(x)
    ccall((:FP2_FP512BN_isunity, libamcl_pairing_FP512BN), Cint, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_equals(x, y)
    ccall((:FP2_FP512BN_equals, libamcl_pairing_FP512BN), Cint, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y)
end

function FP2_FP512BN_from_FPs(x, a, b)
    ccall((:FP2_FP512BN_from_FPs, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, a, b)
end

function FP2_FP512BN_from_BIGs(x, a, b)
    ccall((:FP2_FP512BN_from_BIGs, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, BIG_512_60, BIG_512_60), x, a, b)
end

function FP2_FP512BN_from_FP(x, a)
    ccall((:FP2_FP512BN_from_FP, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP_FP512BN}), x, a)
end

function FP2_FP512BN_from_BIG(x, a)
    ccall((:FP2_FP512BN_from_BIG, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, BIG_512_60), x, a)
end

function FP2_FP512BN_copy(x, y)
    ccall((:FP2_FP512BN_copy, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y)
end

function FP2_FP512BN_zero(x)
    ccall((:FP2_FP512BN_zero, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_one(x)
    ccall((:FP2_FP512BN_one, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_neg(x, y)
    ccall((:FP2_FP512BN_neg, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y)
end

function FP2_FP512BN_conj(x, y)
    ccall((:FP2_FP512BN_conj, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y)
end

function FP2_FP512BN_add(x, y, z)
    ccall((:FP2_FP512BN_add, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y, z)
end

function FP2_FP512BN_sub(x, y, z)
    ccall((:FP2_FP512BN_sub, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y, z)
end

function FP2_FP512BN_pmul(x, y, b)
    ccall((:FP2_FP512BN_pmul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}, Ptr{FP_FP512BN}), x, y, b)
end

function FP2_FP512BN_imul(x, y, i)
    ccall((:FP2_FP512BN_imul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}, Cint), x, y, i)
end

function FP2_FP512BN_sqr(x, y)
    ccall((:FP2_FP512BN_sqr, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y)
end

function FP2_FP512BN_mul(x, y, z)
    ccall((:FP2_FP512BN_mul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y, z)
end

function FP2_FP512BN_output(x)
    ccall((:FP2_FP512BN_output, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_rawoutput(x)
    ccall((:FP2_FP512BN_rawoutput, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_inv(x, y)
    ccall((:FP2_FP512BN_inv, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y)
end

function FP2_FP512BN_div2(x, y)
    ccall((:FP2_FP512BN_div2, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y)
end

function FP2_FP512BN_mul_ip(x)
    ccall((:FP2_FP512BN_mul_ip, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_div_ip2(x)
    ccall((:FP2_FP512BN_div_ip2, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_div_ip(x)
    ccall((:FP2_FP512BN_div_ip, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_norm(x)
    ccall((:FP2_FP512BN_norm, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_reduce(x)
    ccall((:FP2_FP512BN_reduce, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end

function FP2_FP512BN_pow(x, y, b)
    ccall((:FP2_FP512BN_pow, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}, BIG_512_60), x, y, b)
end

function FP2_FP512BN_sqrt(x, y)
    ccall((:FP2_FP512BN_sqrt, libamcl_pairing_FP512BN), Cint, (Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, y)
end

function FP2_FP512BN_times_i(x)
    ccall((:FP2_FP512BN_times_i, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP2_FP512BN},), x)
end
# Julia wrapper for header: fp48_BLS48.h
# Automatically generated using Clang.jl


function FP48_BLS48_iszilch(x)
    ccall((:FP48_BLS48_iszilch, libamcl_pairing_BLS48), Cint, (Ptr{FP48_BLS48},), x)
end

function FP48_BLS48_isunity(x)
    ccall((:FP48_BLS48_isunity, libamcl_pairing_BLS48), Cint, (Ptr{FP48_BLS48},), x)
end

function FP48_BLS48_copy(x, y)
    ccall((:FP48_BLS48_copy, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), x, y)
end

function FP48_BLS48_one(x)
    ccall((:FP48_BLS48_one, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48},), x)
end

function FP48_BLS48_zero(x)
    ccall((:FP48_BLS48_zero, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48},), x)
end

function FP48_BLS48_equals(x, y)
    ccall((:FP48_BLS48_equals, libamcl_pairing_BLS48), Cint, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), x, y)
end

function FP48_BLS48_conj(x, y)
    ccall((:FP48_BLS48_conj, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), x, y)
end

function FP48_BLS48_from_FP16(x, a)
    ccall((:FP48_BLS48_from_FP16, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP16_BLS48}), x, a)
end

function FP48_BLS48_from_FP16s(x, a, b, c)
    ccall((:FP48_BLS48_from_FP16s, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}, Ptr{FP16_BLS48}), x, a, b, c)
end

function FP48_BLS48_usqr(x, y)
    ccall((:FP48_BLS48_usqr, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), x, y)
end

function FP48_BLS48_sqr(x, y)
    ccall((:FP48_BLS48_sqr, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), x, y)
end

function FP48_BLS48_smul(x, y)
    ccall((:FP48_BLS48_smul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), x, y)
end

function FP48_BLS48_ssmul(x, y)
    ccall((:FP48_BLS48_ssmul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), x, y)
end

function FP48_BLS48_mul(x, y)
    ccall((:FP48_BLS48_mul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), x, y)
end

function FP48_BLS48_inv(x, y)
    ccall((:FP48_BLS48_inv, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), x, y)
end

function FP48_BLS48_pow(r, x, b)
    ccall((:FP48_BLS48_pow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}, BIG_560_58), r, x, b)
end

function FP48_BLS48_pinpow(x, i, b)
    ccall((:FP48_BLS48_pinpow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Cint, Cint), x, i, b)
end

function FP48_BLS48_compow(c, x, e, r)
    ccall((:FP48_BLS48_compow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP48_BLS48}, BIG_560_58, BIG_560_58), c, x, e, r)
end

function FP48_BLS48_pow16(r, x, b)
    ccall((:FP48_BLS48_pow16, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}, Ptr{BIG_560_58}), r, x, b)
end

function FP48_BLS48_frob(x, f, n)
    ccall((:FP48_BLS48_frob, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP2_BLS48}, Cint), x, f, n)
end

function FP48_BLS48_reduce(x)
    ccall((:FP48_BLS48_reduce, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48},), x)
end

function FP48_BLS48_norm(x)
    ccall((:FP48_BLS48_norm, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48},), x)
end

function FP48_BLS48_output(x)
    ccall((:FP48_BLS48_output, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48},), x)
end

function FP48_BLS48_toOctet(S, x)
    ccall((:FP48_BLS48_toOctet, libamcl_pairing_BLS48), Cvoid, (Ptr{octet}, Ptr{FP48_BLS48}), S, x)
end

function FP48_BLS48_fromOctet(x, S)
    ccall((:FP48_BLS48_fromOctet, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{octet}), x, S)
end

function FP48_BLS48_trace(t, x)
    ccall((:FP48_BLS48_trace, libamcl_pairing_BLS48), Cvoid, (Ptr{FP16_BLS48}, Ptr{FP48_BLS48}), t, x)
end

function FP48_BLS48_cmove(x, y, s)
    ccall((:FP48_BLS48_cmove, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}, Cint), x, y, s)
end
# Julia wrapper for header: fp4_BLS24.h
# Automatically generated using Clang.jl


function FP4_BLS24_iszilch(x)
    ccall((:FP4_BLS24_iszilch, libamcl_pairing_BLS24), Cint, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_isunity(x)
    ccall((:FP4_BLS24_isunity, libamcl_pairing_BLS24), Cint, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_equals(x, y)
    ccall((:FP4_BLS24_equals, libamcl_pairing_BLS24), Cint, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y)
end

function FP4_BLS24_isreal(x)
    ccall((:FP4_BLS24_isreal, libamcl_pairing_BLS24), Cint, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_from_FP2s(x, a, b)
    ccall((:FP4_BLS24_from_FP2s, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP2_BLS24}, Ptr{FP2_BLS24}), x, a, b)
end

function FP4_BLS24_from_FP2(x, a)
    ccall((:FP4_BLS24_from_FP2, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP2_BLS24}), x, a)
end

function FP4_BLS24_from_FP2H(x, a)
    ccall((:FP4_BLS24_from_FP2H, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP2_BLS24}), x, a)
end

function FP4_BLS24_copy(x, y)
    ccall((:FP4_BLS24_copy, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y)
end

function FP4_BLS24_zero(x)
    ccall((:FP4_BLS24_zero, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_one(x)
    ccall((:FP4_BLS24_one, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_neg(x, y)
    ccall((:FP4_BLS24_neg, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y)
end

function FP4_BLS24_conj(x, y)
    ccall((:FP4_BLS24_conj, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y)
end

function FP4_BLS24_nconj(x, y)
    ccall((:FP4_BLS24_nconj, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y)
end

function FP4_BLS24_add(x, y, z)
    ccall((:FP4_BLS24_add, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y, z)
end

function FP4_BLS24_sub(x, y, z)
    ccall((:FP4_BLS24_sub, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y, z)
end

function FP4_BLS24_pmul(x, y, a)
    ccall((:FP4_BLS24_pmul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP2_BLS24}), x, y, a)
end

function FP4_BLS24_qmul(x, y, a)
    ccall((:FP4_BLS24_qmul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP_BLS24}), x, y, a)
end

function FP4_BLS24_imul(x, y, i)
    ccall((:FP4_BLS24_imul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Cint), x, y, i)
end

function FP4_BLS24_sqr(x, y)
    ccall((:FP4_BLS24_sqr, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y)
end

function FP4_BLS24_mul(x, y, z)
    ccall((:FP4_BLS24_mul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y, z)
end

function FP4_BLS24_inv(x, y)
    ccall((:FP4_BLS24_inv, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y)
end

function FP4_BLS24_output(x)
    ccall((:FP4_BLS24_output, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_rawoutput(x)
    ccall((:FP4_BLS24_rawoutput, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_times_i(x)
    ccall((:FP4_BLS24_times_i, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_norm(x)
    ccall((:FP4_BLS24_norm, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_reduce(x)
    ccall((:FP4_BLS24_reduce, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_pow(x, y, b)
    ccall((:FP4_BLS24_pow, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, BIG_480_56), x, y, b)
end

function FP4_BLS24_frob(x, f)
    ccall((:FP4_BLS24_frob, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP2_BLS24}), x, f)
end

function FP4_BLS24_xtr_A(r, w, x, y, z)
    ccall((:FP4_BLS24_xtr_A, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), r, w, x, y, z)
end

function FP4_BLS24_xtr_D(r, x)
    ccall((:FP4_BLS24_xtr_D, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), r, x)
end

function FP4_BLS24_xtr_pow(r, x, b)
    ccall((:FP4_BLS24_xtr_pow, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, BIG_480_56), r, x, b)
end

function FP4_BLS24_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP4_BLS24_xtr_pow2, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, BIG_480_56, BIG_480_56), r, c, d, e, f, a, b)
end

function FP4_BLS24_cmove(x, y, s)
    ccall((:FP4_BLS24_cmove, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}, Cint), x, y, s)
end

function FP4_BLS24_sqrt(r, x)
    ccall((:FP4_BLS24_sqrt, libamcl_pairing_BLS24), Cint, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), r, x)
end

function FP4_BLS24_div_i(x)
    ccall((:FP4_BLS24_div_i, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_div_2i(x)
    ccall((:FP4_BLS24_div_2i, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24},), x)
end

function FP4_BLS24_div2(x, y)
    ccall((:FP4_BLS24_div2, libamcl_pairing_BLS24), Cvoid, (Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, y)
end
# Julia wrapper for header: fp4_BLS381.h
# Automatically generated using Clang.jl


function FP4_BLS381_iszilch(x)
    ccall((:FP4_BLS381_iszilch, libamcl_pairing_BLS381), Cint, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_isunity(x)
    ccall((:FP4_BLS381_isunity, libamcl_pairing_BLS381), Cint, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_equals(x, y)
    ccall((:FP4_BLS381_equals, libamcl_pairing_BLS381), Cint, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y)
end

function FP4_BLS381_isreal(x)
    ccall((:FP4_BLS381_isreal, libamcl_pairing_BLS381), Cint, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_from_FP2s(x, a, b)
    ccall((:FP4_BLS381_from_FP2s, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP2_BLS381}, Ptr{FP2_BLS381}), x, a, b)
end

function FP4_BLS381_from_FP2(x, a)
    ccall((:FP4_BLS381_from_FP2, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP2_BLS381}), x, a)
end

function FP4_BLS381_from_FP2H(x, a)
    ccall((:FP4_BLS381_from_FP2H, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP2_BLS381}), x, a)
end

function FP4_BLS381_copy(x, y)
    ccall((:FP4_BLS381_copy, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y)
end

function FP4_BLS381_zero(x)
    ccall((:FP4_BLS381_zero, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_one(x)
    ccall((:FP4_BLS381_one, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_neg(x, y)
    ccall((:FP4_BLS381_neg, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y)
end

function FP4_BLS381_conj(x, y)
    ccall((:FP4_BLS381_conj, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y)
end

function FP4_BLS381_nconj(x, y)
    ccall((:FP4_BLS381_nconj, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y)
end

function FP4_BLS381_add(x, y, z)
    ccall((:FP4_BLS381_add, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y, z)
end

function FP4_BLS381_sub(x, y, z)
    ccall((:FP4_BLS381_sub, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y, z)
end

function FP4_BLS381_pmul(x, y, a)
    ccall((:FP4_BLS381_pmul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP2_BLS381}), x, y, a)
end

function FP4_BLS381_qmul(x, y, a)
    ccall((:FP4_BLS381_qmul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP_BLS381}), x, y, a)
end

function FP4_BLS381_imul(x, y, i)
    ccall((:FP4_BLS381_imul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Cint), x, y, i)
end

function FP4_BLS381_sqr(x, y)
    ccall((:FP4_BLS381_sqr, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y)
end

function FP4_BLS381_mul(x, y, z)
    ccall((:FP4_BLS381_mul, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y, z)
end

function FP4_BLS381_inv(x, y)
    ccall((:FP4_BLS381_inv, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y)
end

function FP4_BLS381_output(x)
    ccall((:FP4_BLS381_output, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_rawoutput(x)
    ccall((:FP4_BLS381_rawoutput, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_times_i(x)
    ccall((:FP4_BLS381_times_i, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_norm(x)
    ccall((:FP4_BLS381_norm, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_reduce(x)
    ccall((:FP4_BLS381_reduce, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_pow(x, y, b)
    ccall((:FP4_BLS381_pow, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, BIG_384_58), x, y, b)
end

function FP4_BLS381_frob(x, f)
    ccall((:FP4_BLS381_frob, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP2_BLS381}), x, f)
end

function FP4_BLS381_xtr_A(r, w, x, y, z)
    ccall((:FP4_BLS381_xtr_A, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), r, w, x, y, z)
end

function FP4_BLS381_xtr_D(r, x)
    ccall((:FP4_BLS381_xtr_D, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), r, x)
end

function FP4_BLS381_xtr_pow(r, x, b)
    ccall((:FP4_BLS381_xtr_pow, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, BIG_384_58), r, x, b)
end

function FP4_BLS381_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP4_BLS381_xtr_pow2, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, BIG_384_58, BIG_384_58), r, c, d, e, f, a, b)
end

function FP4_BLS381_cmove(x, y, s)
    ccall((:FP4_BLS381_cmove, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}, Cint), x, y, s)
end

function FP4_BLS381_sqrt(r, x)
    ccall((:FP4_BLS381_sqrt, libamcl_pairing_BLS381), Cint, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), r, x)
end

function FP4_BLS381_div_i(x)
    ccall((:FP4_BLS381_div_i, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_div_2i(x)
    ccall((:FP4_BLS381_div_2i, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381},), x)
end

function FP4_BLS381_div2(x, y)
    ccall((:FP4_BLS381_div2, libamcl_pairing_BLS381), Cvoid, (Ptr{FP4_BLS381}, Ptr{FP4_BLS381}), x, y)
end
# Julia wrapper for header: fp4_BLS383.h
# Automatically generated using Clang.jl


function FP4_BLS383_iszilch(x)
    ccall((:FP4_BLS383_iszilch, libamcl_pairing_BLS383), Cint, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_isunity(x)
    ccall((:FP4_BLS383_isunity, libamcl_pairing_BLS383), Cint, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_equals(x, y)
    ccall((:FP4_BLS383_equals, libamcl_pairing_BLS383), Cint, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y)
end

function FP4_BLS383_isreal(x)
    ccall((:FP4_BLS383_isreal, libamcl_pairing_BLS383), Cint, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_from_FP2s(x, a, b)
    ccall((:FP4_BLS383_from_FP2s, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP2_BLS383}, Ptr{FP2_BLS383}), x, a, b)
end

function FP4_BLS383_from_FP2(x, a)
    ccall((:FP4_BLS383_from_FP2, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP2_BLS383}), x, a)
end

function FP4_BLS383_from_FP2H(x, a)
    ccall((:FP4_BLS383_from_FP2H, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP2_BLS383}), x, a)
end

function FP4_BLS383_copy(x, y)
    ccall((:FP4_BLS383_copy, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y)
end

function FP4_BLS383_zero(x)
    ccall((:FP4_BLS383_zero, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_one(x)
    ccall((:FP4_BLS383_one, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_neg(x, y)
    ccall((:FP4_BLS383_neg, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y)
end

function FP4_BLS383_conj(x, y)
    ccall((:FP4_BLS383_conj, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y)
end

function FP4_BLS383_nconj(x, y)
    ccall((:FP4_BLS383_nconj, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y)
end

function FP4_BLS383_add(x, y, z)
    ccall((:FP4_BLS383_add, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y, z)
end

function FP4_BLS383_sub(x, y, z)
    ccall((:FP4_BLS383_sub, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y, z)
end

function FP4_BLS383_pmul(x, y, a)
    ccall((:FP4_BLS383_pmul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP2_BLS383}), x, y, a)
end

function FP4_BLS383_qmul(x, y, a)
    ccall((:FP4_BLS383_qmul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP_BLS383}), x, y, a)
end

function FP4_BLS383_imul(x, y, i)
    ccall((:FP4_BLS383_imul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Cint), x, y, i)
end

function FP4_BLS383_sqr(x, y)
    ccall((:FP4_BLS383_sqr, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y)
end

function FP4_BLS383_mul(x, y, z)
    ccall((:FP4_BLS383_mul, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y, z)
end

function FP4_BLS383_inv(x, y)
    ccall((:FP4_BLS383_inv, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y)
end

function FP4_BLS383_output(x)
    ccall((:FP4_BLS383_output, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_rawoutput(x)
    ccall((:FP4_BLS383_rawoutput, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_times_i(x)
    ccall((:FP4_BLS383_times_i, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_norm(x)
    ccall((:FP4_BLS383_norm, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_reduce(x)
    ccall((:FP4_BLS383_reduce, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_pow(x, y, b)
    ccall((:FP4_BLS383_pow, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, BIG_384_58), x, y, b)
end

function FP4_BLS383_frob(x, f)
    ccall((:FP4_BLS383_frob, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP2_BLS383}), x, f)
end

function FP4_BLS383_xtr_A(r, w, x, y, z)
    ccall((:FP4_BLS383_xtr_A, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), r, w, x, y, z)
end

function FP4_BLS383_xtr_D(r, x)
    ccall((:FP4_BLS383_xtr_D, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), r, x)
end

function FP4_BLS383_xtr_pow(r, x, b)
    ccall((:FP4_BLS383_xtr_pow, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, BIG_384_58), r, x, b)
end

function FP4_BLS383_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP4_BLS383_xtr_pow2, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, BIG_384_58, BIG_384_58), r, c, d, e, f, a, b)
end

function FP4_BLS383_cmove(x, y, s)
    ccall((:FP4_BLS383_cmove, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}, Cint), x, y, s)
end

function FP4_BLS383_sqrt(r, x)
    ccall((:FP4_BLS383_sqrt, libamcl_pairing_BLS383), Cint, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), r, x)
end

function FP4_BLS383_div_i(x)
    ccall((:FP4_BLS383_div_i, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_div_2i(x)
    ccall((:FP4_BLS383_div_2i, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383},), x)
end

function FP4_BLS383_div2(x, y)
    ccall((:FP4_BLS383_div2, libamcl_pairing_BLS383), Cvoid, (Ptr{FP4_BLS383}, Ptr{FP4_BLS383}), x, y)
end
# Julia wrapper for header: fp4_BLS461.h
# Automatically generated using Clang.jl


function FP4_BLS461_iszilch(x)
    ccall((:FP4_BLS461_iszilch, libamcl_pairing_BLS461), Cint, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_isunity(x)
    ccall((:FP4_BLS461_isunity, libamcl_pairing_BLS461), Cint, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_equals(x, y)
    ccall((:FP4_BLS461_equals, libamcl_pairing_BLS461), Cint, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y)
end

function FP4_BLS461_isreal(x)
    ccall((:FP4_BLS461_isreal, libamcl_pairing_BLS461), Cint, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_from_FP2s(x, a, b)
    ccall((:FP4_BLS461_from_FP2s, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP2_BLS461}, Ptr{FP2_BLS461}), x, a, b)
end

function FP4_BLS461_from_FP2(x, a)
    ccall((:FP4_BLS461_from_FP2, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP2_BLS461}), x, a)
end

function FP4_BLS461_from_FP2H(x, a)
    ccall((:FP4_BLS461_from_FP2H, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP2_BLS461}), x, a)
end

function FP4_BLS461_copy(x, y)
    ccall((:FP4_BLS461_copy, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y)
end

function FP4_BLS461_zero(x)
    ccall((:FP4_BLS461_zero, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_one(x)
    ccall((:FP4_BLS461_one, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_neg(x, y)
    ccall((:FP4_BLS461_neg, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y)
end

function FP4_BLS461_conj(x, y)
    ccall((:FP4_BLS461_conj, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y)
end

function FP4_BLS461_nconj(x, y)
    ccall((:FP4_BLS461_nconj, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y)
end

function FP4_BLS461_add(x, y, z)
    ccall((:FP4_BLS461_add, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y, z)
end

function FP4_BLS461_sub(x, y, z)
    ccall((:FP4_BLS461_sub, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y, z)
end

function FP4_BLS461_pmul(x, y, a)
    ccall((:FP4_BLS461_pmul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP2_BLS461}), x, y, a)
end

function FP4_BLS461_qmul(x, y, a)
    ccall((:FP4_BLS461_qmul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP_BLS461}), x, y, a)
end

function FP4_BLS461_imul(x, y, i)
    ccall((:FP4_BLS461_imul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Cint), x, y, i)
end

function FP4_BLS461_sqr(x, y)
    ccall((:FP4_BLS461_sqr, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y)
end

function FP4_BLS461_mul(x, y, z)
    ccall((:FP4_BLS461_mul, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y, z)
end

function FP4_BLS461_inv(x, y)
    ccall((:FP4_BLS461_inv, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y)
end

function FP4_BLS461_output(x)
    ccall((:FP4_BLS461_output, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_rawoutput(x)
    ccall((:FP4_BLS461_rawoutput, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_times_i(x)
    ccall((:FP4_BLS461_times_i, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_norm(x)
    ccall((:FP4_BLS461_norm, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_reduce(x)
    ccall((:FP4_BLS461_reduce, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_pow(x, y, b)
    ccall((:FP4_BLS461_pow, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, BIG_464_60), x, y, b)
end

function FP4_BLS461_frob(x, f)
    ccall((:FP4_BLS461_frob, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP2_BLS461}), x, f)
end

function FP4_BLS461_xtr_A(r, w, x, y, z)
    ccall((:FP4_BLS461_xtr_A, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), r, w, x, y, z)
end

function FP4_BLS461_xtr_D(r, x)
    ccall((:FP4_BLS461_xtr_D, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), r, x)
end

function FP4_BLS461_xtr_pow(r, x, b)
    ccall((:FP4_BLS461_xtr_pow, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, BIG_464_60), r, x, b)
end

function FP4_BLS461_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP4_BLS461_xtr_pow2, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, BIG_464_60, BIG_464_60), r, c, d, e, f, a, b)
end

function FP4_BLS461_cmove(x, y, s)
    ccall((:FP4_BLS461_cmove, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}, Cint), x, y, s)
end

function FP4_BLS461_sqrt(r, x)
    ccall((:FP4_BLS461_sqrt, libamcl_pairing_BLS461), Cint, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), r, x)
end

function FP4_BLS461_div_i(x)
    ccall((:FP4_BLS461_div_i, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_div_2i(x)
    ccall((:FP4_BLS461_div_2i, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461},), x)
end

function FP4_BLS461_div2(x, y)
    ccall((:FP4_BLS461_div2, libamcl_pairing_BLS461), Cvoid, (Ptr{FP4_BLS461}, Ptr{FP4_BLS461}), x, y)
end
# Julia wrapper for header: fp4_BLS48.h
# Automatically generated using Clang.jl


function FP4_BLS48_iszilch(x)
    ccall((:FP4_BLS48_iszilch, libamcl_pairing_BLS48), Cint, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_isunity(x)
    ccall((:FP4_BLS48_isunity, libamcl_pairing_BLS48), Cint, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_equals(x, y)
    ccall((:FP4_BLS48_equals, libamcl_pairing_BLS48), Cint, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y)
end

function FP4_BLS48_isreal(x)
    ccall((:FP4_BLS48_isreal, libamcl_pairing_BLS48), Cint, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_from_FP2s(x, a, b)
    ccall((:FP4_BLS48_from_FP2s, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP2_BLS48}, Ptr{FP2_BLS48}), x, a, b)
end

function FP4_BLS48_from_FP2(x, a)
    ccall((:FP4_BLS48_from_FP2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP2_BLS48}), x, a)
end

function FP4_BLS48_from_FP2H(x, a)
    ccall((:FP4_BLS48_from_FP2H, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP2_BLS48}), x, a)
end

function FP4_BLS48_copy(x, y)
    ccall((:FP4_BLS48_copy, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y)
end

function FP4_BLS48_zero(x)
    ccall((:FP4_BLS48_zero, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_one(x)
    ccall((:FP4_BLS48_one, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_neg(x, y)
    ccall((:FP4_BLS48_neg, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y)
end

function FP4_BLS48_conj(x, y)
    ccall((:FP4_BLS48_conj, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y)
end

function FP4_BLS48_nconj(x, y)
    ccall((:FP4_BLS48_nconj, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y)
end

function FP4_BLS48_add(x, y, z)
    ccall((:FP4_BLS48_add, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y, z)
end

function FP4_BLS48_sub(x, y, z)
    ccall((:FP4_BLS48_sub, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y, z)
end

function FP4_BLS48_pmul(x, y, a)
    ccall((:FP4_BLS48_pmul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP2_BLS48}), x, y, a)
end

function FP4_BLS48_qmul(x, y, a)
    ccall((:FP4_BLS48_qmul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP_BLS48}), x, y, a)
end

function FP4_BLS48_imul(x, y, i)
    ccall((:FP4_BLS48_imul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Cint), x, y, i)
end

function FP4_BLS48_sqr(x, y)
    ccall((:FP4_BLS48_sqr, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y)
end

function FP4_BLS48_mul(x, y, z)
    ccall((:FP4_BLS48_mul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y, z)
end

function FP4_BLS48_inv(x, y)
    ccall((:FP4_BLS48_inv, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y)
end

function FP4_BLS48_output(x)
    ccall((:FP4_BLS48_output, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_rawoutput(x)
    ccall((:FP4_BLS48_rawoutput, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_times_i(x)
    ccall((:FP4_BLS48_times_i, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_norm(x)
    ccall((:FP4_BLS48_norm, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_reduce(x)
    ccall((:FP4_BLS48_reduce, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_pow(x, y, b)
    ccall((:FP4_BLS48_pow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, BIG_560_58), x, y, b)
end

function FP4_BLS48_frob(x, f)
    ccall((:FP4_BLS48_frob, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP2_BLS48}), x, f)
end

function FP4_BLS48_xtr_A(r, w, x, y, z)
    ccall((:FP4_BLS48_xtr_A, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), r, w, x, y, z)
end

function FP4_BLS48_xtr_D(r, x)
    ccall((:FP4_BLS48_xtr_D, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), r, x)
end

function FP4_BLS48_xtr_pow(r, x, b)
    ccall((:FP4_BLS48_xtr_pow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, BIG_560_58), r, x, b)
end

function FP4_BLS48_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP4_BLS48_xtr_pow2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, BIG_560_58, BIG_560_58), r, c, d, e, f, a, b)
end

function FP4_BLS48_cmove(x, y, s)
    ccall((:FP4_BLS48_cmove, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}, Cint), x, y, s)
end

function FP4_BLS48_sqrt(r, x)
    ccall((:FP4_BLS48_sqrt, libamcl_pairing_BLS48), Cint, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), r, x)
end

function FP4_BLS48_div_i(x)
    ccall((:FP4_BLS48_div_i, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_div_2i(x)
    ccall((:FP4_BLS48_div_2i, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48},), x)
end

function FP4_BLS48_div2(x, y)
    ccall((:FP4_BLS48_div2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, y)
end
# Julia wrapper for header: fp4_BN254.h
# Automatically generated using Clang.jl


function FP4_BN254_iszilch(x)
    ccall((:FP4_BN254_iszilch, libamcl_pairing_BN254), Cint, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_isunity(x)
    ccall((:FP4_BN254_isunity, libamcl_pairing_BN254), Cint, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_equals(x, y)
    ccall((:FP4_BN254_equals, libamcl_pairing_BN254), Cint, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y)
end

function FP4_BN254_isreal(x)
    ccall((:FP4_BN254_isreal, libamcl_pairing_BN254), Cint, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_from_FP2s(x, a, b)
    ccall((:FP4_BN254_from_FP2s, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP2_BN254}, Ptr{FP2_BN254}), x, a, b)
end

function FP4_BN254_from_FP2(x, a)
    ccall((:FP4_BN254_from_FP2, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP2_BN254}), x, a)
end

function FP4_BN254_from_FP2H(x, a)
    ccall((:FP4_BN254_from_FP2H, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP2_BN254}), x, a)
end

function FP4_BN254_copy(x, y)
    ccall((:FP4_BN254_copy, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y)
end

function FP4_BN254_zero(x)
    ccall((:FP4_BN254_zero, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_one(x)
    ccall((:FP4_BN254_one, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_neg(x, y)
    ccall((:FP4_BN254_neg, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y)
end

function FP4_BN254_conj(x, y)
    ccall((:FP4_BN254_conj, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y)
end

function FP4_BN254_nconj(x, y)
    ccall((:FP4_BN254_nconj, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y)
end

function FP4_BN254_add(x, y, z)
    ccall((:FP4_BN254_add, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y, z)
end

function FP4_BN254_sub(x, y, z)
    ccall((:FP4_BN254_sub, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y, z)
end

function FP4_BN254_pmul(x, y, a)
    ccall((:FP4_BN254_pmul, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP2_BN254}), x, y, a)
end

function FP4_BN254_qmul(x, y, a)
    ccall((:FP4_BN254_qmul, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP_BN254}), x, y, a)
end

function FP4_BN254_imul(x, y, i)
    ccall((:FP4_BN254_imul, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, Cint), x, y, i)
end

function FP4_BN254_sqr(x, y)
    ccall((:FP4_BN254_sqr, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y)
end

function FP4_BN254_mul(x, y, z)
    ccall((:FP4_BN254_mul, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y, z)
end

function FP4_BN254_inv(x, y)
    ccall((:FP4_BN254_inv, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y)
end

function FP4_BN254_output(x)
    ccall((:FP4_BN254_output, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_rawoutput(x)
    ccall((:FP4_BN254_rawoutput, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_times_i(x)
    ccall((:FP4_BN254_times_i, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_norm(x)
    ccall((:FP4_BN254_norm, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_reduce(x)
    ccall((:FP4_BN254_reduce, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_pow(x, y, b)
    ccall((:FP4_BN254_pow, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, BIG_256_56), x, y, b)
end

function FP4_BN254_frob(x, f)
    ccall((:FP4_BN254_frob, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP2_BN254}), x, f)
end

function FP4_BN254_xtr_A(r, w, x, y, z)
    ccall((:FP4_BN254_xtr_A, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}), r, w, x, y, z)
end

function FP4_BN254_xtr_D(r, x)
    ccall((:FP4_BN254_xtr_D, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), r, x)
end

function FP4_BN254_xtr_pow(r, x, b)
    ccall((:FP4_BN254_xtr_pow, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, BIG_256_56), r, x, b)
end

function FP4_BN254_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP4_BN254_xtr_pow2, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}, Ptr{FP4_BN254}, BIG_256_56, BIG_256_56), r, c, d, e, f, a, b)
end

function FP4_BN254_cmove(x, y, s)
    ccall((:FP4_BN254_cmove, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}, Cint), x, y, s)
end

function FP4_BN254_sqrt(r, x)
    ccall((:FP4_BN254_sqrt, libamcl_pairing_BN254), Cint, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), r, x)
end

function FP4_BN254_div_i(x)
    ccall((:FP4_BN254_div_i, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_div_2i(x)
    ccall((:FP4_BN254_div_2i, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254},), x)
end

function FP4_BN254_div2(x, y)
    ccall((:FP4_BN254_div2, libamcl_pairing_BN254), Cvoid, (Ptr{FP4_BN254}, Ptr{FP4_BN254}), x, y)
end
# Julia wrapper for header: fp4_BN254CX.h
# Automatically generated using Clang.jl


function FP4_BN254CX_iszilch(x)
    ccall((:FP4_BN254CX_iszilch, libamcl_pairing_BN254CX), Cint, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_isunity(x)
    ccall((:FP4_BN254CX_isunity, libamcl_pairing_BN254CX), Cint, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_equals(x, y)
    ccall((:FP4_BN254CX_equals, libamcl_pairing_BN254CX), Cint, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y)
end

function FP4_BN254CX_isreal(x)
    ccall((:FP4_BN254CX_isreal, libamcl_pairing_BN254CX), Cint, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_from_FP2s(x, a, b)
    ccall((:FP4_BN254CX_from_FP2s, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP2_BN254CX}, Ptr{FP2_BN254CX}), x, a, b)
end

function FP4_BN254CX_from_FP2(x, a)
    ccall((:FP4_BN254CX_from_FP2, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP2_BN254CX}), x, a)
end

function FP4_BN254CX_from_FP2H(x, a)
    ccall((:FP4_BN254CX_from_FP2H, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP2_BN254CX}), x, a)
end

function FP4_BN254CX_copy(x, y)
    ccall((:FP4_BN254CX_copy, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y)
end

function FP4_BN254CX_zero(x)
    ccall((:FP4_BN254CX_zero, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_one(x)
    ccall((:FP4_BN254CX_one, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_neg(x, y)
    ccall((:FP4_BN254CX_neg, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y)
end

function FP4_BN254CX_conj(x, y)
    ccall((:FP4_BN254CX_conj, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y)
end

function FP4_BN254CX_nconj(x, y)
    ccall((:FP4_BN254CX_nconj, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y)
end

function FP4_BN254CX_add(x, y, z)
    ccall((:FP4_BN254CX_add, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y, z)
end

function FP4_BN254CX_sub(x, y, z)
    ccall((:FP4_BN254CX_sub, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y, z)
end

function FP4_BN254CX_pmul(x, y, a)
    ccall((:FP4_BN254CX_pmul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP2_BN254CX}), x, y, a)
end

function FP4_BN254CX_qmul(x, y, a)
    ccall((:FP4_BN254CX_qmul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP_BN254CX}), x, y, a)
end

function FP4_BN254CX_imul(x, y, i)
    ccall((:FP4_BN254CX_imul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Cint), x, y, i)
end

function FP4_BN254CX_sqr(x, y)
    ccall((:FP4_BN254CX_sqr, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y)
end

function FP4_BN254CX_mul(x, y, z)
    ccall((:FP4_BN254CX_mul, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y, z)
end

function FP4_BN254CX_inv(x, y)
    ccall((:FP4_BN254CX_inv, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y)
end

function FP4_BN254CX_output(x)
    ccall((:FP4_BN254CX_output, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_rawoutput(x)
    ccall((:FP4_BN254CX_rawoutput, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_times_i(x)
    ccall((:FP4_BN254CX_times_i, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_norm(x)
    ccall((:FP4_BN254CX_norm, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_reduce(x)
    ccall((:FP4_BN254CX_reduce, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_pow(x, y, b)
    ccall((:FP4_BN254CX_pow, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, BIG_256_56), x, y, b)
end

function FP4_BN254CX_frob(x, f)
    ccall((:FP4_BN254CX_frob, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP2_BN254CX}), x, f)
end

function FP4_BN254CX_xtr_A(r, w, x, y, z)
    ccall((:FP4_BN254CX_xtr_A, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), r, w, x, y, z)
end

function FP4_BN254CX_xtr_D(r, x)
    ccall((:FP4_BN254CX_xtr_D, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), r, x)
end

function FP4_BN254CX_xtr_pow(r, x, b)
    ccall((:FP4_BN254CX_xtr_pow, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, BIG_256_56), r, x, b)
end

function FP4_BN254CX_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP4_BN254CX_xtr_pow2, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, BIG_256_56, BIG_256_56), r, c, d, e, f, a, b)
end

function FP4_BN254CX_cmove(x, y, s)
    ccall((:FP4_BN254CX_cmove, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}, Cint), x, y, s)
end

function FP4_BN254CX_sqrt(r, x)
    ccall((:FP4_BN254CX_sqrt, libamcl_pairing_BN254CX), Cint, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), r, x)
end

function FP4_BN254CX_div_i(x)
    ccall((:FP4_BN254CX_div_i, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_div_2i(x)
    ccall((:FP4_BN254CX_div_2i, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX},), x)
end

function FP4_BN254CX_div2(x, y)
    ccall((:FP4_BN254CX_div2, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP4_BN254CX}, Ptr{FP4_BN254CX}), x, y)
end
# Julia wrapper for header: fp4_FP256BN.h
# Automatically generated using Clang.jl


function FP4_FP256BN_iszilch(x)
    ccall((:FP4_FP256BN_iszilch, libamcl_pairing_FP256BN), Cint, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_isunity(x)
    ccall((:FP4_FP256BN_isunity, libamcl_pairing_FP256BN), Cint, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_equals(x, y)
    ccall((:FP4_FP256BN_equals, libamcl_pairing_FP256BN), Cint, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y)
end

function FP4_FP256BN_isreal(x)
    ccall((:FP4_FP256BN_isreal, libamcl_pairing_FP256BN), Cint, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_from_FP2s(x, a, b)
    ccall((:FP4_FP256BN_from_FP2s, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP2_FP256BN}, Ptr{FP2_FP256BN}), x, a, b)
end

function FP4_FP256BN_from_FP2(x, a)
    ccall((:FP4_FP256BN_from_FP2, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP2_FP256BN}), x, a)
end

function FP4_FP256BN_from_FP2H(x, a)
    ccall((:FP4_FP256BN_from_FP2H, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP2_FP256BN}), x, a)
end

function FP4_FP256BN_copy(x, y)
    ccall((:FP4_FP256BN_copy, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y)
end

function FP4_FP256BN_zero(x)
    ccall((:FP4_FP256BN_zero, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_one(x)
    ccall((:FP4_FP256BN_one, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_neg(x, y)
    ccall((:FP4_FP256BN_neg, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y)
end

function FP4_FP256BN_conj(x, y)
    ccall((:FP4_FP256BN_conj, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y)
end

function FP4_FP256BN_nconj(x, y)
    ccall((:FP4_FP256BN_nconj, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y)
end

function FP4_FP256BN_add(x, y, z)
    ccall((:FP4_FP256BN_add, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y, z)
end

function FP4_FP256BN_sub(x, y, z)
    ccall((:FP4_FP256BN_sub, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y, z)
end

function FP4_FP256BN_pmul(x, y, a)
    ccall((:FP4_FP256BN_pmul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP2_FP256BN}), x, y, a)
end

function FP4_FP256BN_qmul(x, y, a)
    ccall((:FP4_FP256BN_qmul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP_FP256BN}), x, y, a)
end

function FP4_FP256BN_imul(x, y, i)
    ccall((:FP4_FP256BN_imul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Cint), x, y, i)
end

function FP4_FP256BN_sqr(x, y)
    ccall((:FP4_FP256BN_sqr, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y)
end

function FP4_FP256BN_mul(x, y, z)
    ccall((:FP4_FP256BN_mul, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y, z)
end

function FP4_FP256BN_inv(x, y)
    ccall((:FP4_FP256BN_inv, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y)
end

function FP4_FP256BN_output(x)
    ccall((:FP4_FP256BN_output, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_rawoutput(x)
    ccall((:FP4_FP256BN_rawoutput, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_times_i(x)
    ccall((:FP4_FP256BN_times_i, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_norm(x)
    ccall((:FP4_FP256BN_norm, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_reduce(x)
    ccall((:FP4_FP256BN_reduce, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_pow(x, y, b)
    ccall((:FP4_FP256BN_pow, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, BIG_256_56), x, y, b)
end

function FP4_FP256BN_frob(x, f)
    ccall((:FP4_FP256BN_frob, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP2_FP256BN}), x, f)
end

function FP4_FP256BN_xtr_A(r, w, x, y, z)
    ccall((:FP4_FP256BN_xtr_A, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), r, w, x, y, z)
end

function FP4_FP256BN_xtr_D(r, x)
    ccall((:FP4_FP256BN_xtr_D, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), r, x)
end

function FP4_FP256BN_xtr_pow(r, x, b)
    ccall((:FP4_FP256BN_xtr_pow, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, BIG_256_56), r, x, b)
end

function FP4_FP256BN_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP4_FP256BN_xtr_pow2, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, BIG_256_56, BIG_256_56), r, c, d, e, f, a, b)
end

function FP4_FP256BN_cmove(x, y, s)
    ccall((:FP4_FP256BN_cmove, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}, Cint), x, y, s)
end

function FP4_FP256BN_sqrt(r, x)
    ccall((:FP4_FP256BN_sqrt, libamcl_pairing_FP256BN), Cint, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), r, x)
end

function FP4_FP256BN_div_i(x)
    ccall((:FP4_FP256BN_div_i, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_div_2i(x)
    ccall((:FP4_FP256BN_div_2i, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN},), x)
end

function FP4_FP256BN_div2(x, y)
    ccall((:FP4_FP256BN_div2, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP4_FP256BN}, Ptr{FP4_FP256BN}), x, y)
end
# Julia wrapper for header: fp4_FP512BN.h
# Automatically generated using Clang.jl


function FP4_FP512BN_iszilch(x)
    ccall((:FP4_FP512BN_iszilch, libamcl_pairing_FP512BN), Cint, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_isunity(x)
    ccall((:FP4_FP512BN_isunity, libamcl_pairing_FP512BN), Cint, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_equals(x, y)
    ccall((:FP4_FP512BN_equals, libamcl_pairing_FP512BN), Cint, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y)
end

function FP4_FP512BN_isreal(x)
    ccall((:FP4_FP512BN_isreal, libamcl_pairing_FP512BN), Cint, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_from_FP2s(x, a, b)
    ccall((:FP4_FP512BN_from_FP2s, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP2_FP512BN}, Ptr{FP2_FP512BN}), x, a, b)
end

function FP4_FP512BN_from_FP2(x, a)
    ccall((:FP4_FP512BN_from_FP2, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP2_FP512BN}), x, a)
end

function FP4_FP512BN_from_FP2H(x, a)
    ccall((:FP4_FP512BN_from_FP2H, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP2_FP512BN}), x, a)
end

function FP4_FP512BN_copy(x, y)
    ccall((:FP4_FP512BN_copy, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y)
end

function FP4_FP512BN_zero(x)
    ccall((:FP4_FP512BN_zero, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_one(x)
    ccall((:FP4_FP512BN_one, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_neg(x, y)
    ccall((:FP4_FP512BN_neg, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y)
end

function FP4_FP512BN_conj(x, y)
    ccall((:FP4_FP512BN_conj, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y)
end

function FP4_FP512BN_nconj(x, y)
    ccall((:FP4_FP512BN_nconj, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y)
end

function FP4_FP512BN_add(x, y, z)
    ccall((:FP4_FP512BN_add, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y, z)
end

function FP4_FP512BN_sub(x, y, z)
    ccall((:FP4_FP512BN_sub, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y, z)
end

function FP4_FP512BN_pmul(x, y, a)
    ccall((:FP4_FP512BN_pmul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP2_FP512BN}), x, y, a)
end

function FP4_FP512BN_qmul(x, y, a)
    ccall((:FP4_FP512BN_qmul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP_FP512BN}), x, y, a)
end

function FP4_FP512BN_imul(x, y, i)
    ccall((:FP4_FP512BN_imul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Cint), x, y, i)
end

function FP4_FP512BN_sqr(x, y)
    ccall((:FP4_FP512BN_sqr, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y)
end

function FP4_FP512BN_mul(x, y, z)
    ccall((:FP4_FP512BN_mul, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y, z)
end

function FP4_FP512BN_inv(x, y)
    ccall((:FP4_FP512BN_inv, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y)
end

function FP4_FP512BN_output(x)
    ccall((:FP4_FP512BN_output, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_rawoutput(x)
    ccall((:FP4_FP512BN_rawoutput, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_times_i(x)
    ccall((:FP4_FP512BN_times_i, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_norm(x)
    ccall((:FP4_FP512BN_norm, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_reduce(x)
    ccall((:FP4_FP512BN_reduce, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_pow(x, y, b)
    ccall((:FP4_FP512BN_pow, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, BIG_512_60), x, y, b)
end

function FP4_FP512BN_frob(x, f)
    ccall((:FP4_FP512BN_frob, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP2_FP512BN}), x, f)
end

function FP4_FP512BN_xtr_A(r, w, x, y, z)
    ccall((:FP4_FP512BN_xtr_A, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), r, w, x, y, z)
end

function FP4_FP512BN_xtr_D(r, x)
    ccall((:FP4_FP512BN_xtr_D, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), r, x)
end

function FP4_FP512BN_xtr_pow(r, x, b)
    ccall((:FP4_FP512BN_xtr_pow, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, BIG_512_60), r, x, b)
end

function FP4_FP512BN_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP4_FP512BN_xtr_pow2, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, BIG_512_60, BIG_512_60), r, c, d, e, f, a, b)
end

function FP4_FP512BN_cmove(x, y, s)
    ccall((:FP4_FP512BN_cmove, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}, Cint), x, y, s)
end

function FP4_FP512BN_sqrt(r, x)
    ccall((:FP4_FP512BN_sqrt, libamcl_pairing_FP512BN), Cint, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), r, x)
end

function FP4_FP512BN_div_i(x)
    ccall((:FP4_FP512BN_div_i, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_div_2i(x)
    ccall((:FP4_FP512BN_div_2i, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN},), x)
end

function FP4_FP512BN_div2(x, y)
    ccall((:FP4_FP512BN_div2, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP4_FP512BN}, Ptr{FP4_FP512BN}), x, y)
end
# Julia wrapper for header: fp8_BLS24.h
# Automatically generated using Clang.jl


function FP8_BLS24_iszilch(x)
    ccall((:FP8_BLS24_iszilch, libamcl_pairing_BLS24), Cint, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_isunity(x)
    ccall((:FP8_BLS24_isunity, libamcl_pairing_BLS24), Cint, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_equals(x, y)
    ccall((:FP8_BLS24_equals, libamcl_pairing_BLS24), Cint, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y)
end

function FP8_BLS24_isreal(x)
    ccall((:FP8_BLS24_isreal, libamcl_pairing_BLS24), Cint, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_from_FP4s(x, a, b)
    ccall((:FP8_BLS24_from_FP4s, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP4_BLS24}, Ptr{FP4_BLS24}), x, a, b)
end

function FP8_BLS24_from_FP4(x, a)
    ccall((:FP8_BLS24_from_FP4, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP4_BLS24}), x, a)
end

function FP8_BLS24_from_FP4H(x, a)
    ccall((:FP8_BLS24_from_FP4H, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP4_BLS24}), x, a)
end

function FP8_BLS24_copy(x, y)
    ccall((:FP8_BLS24_copy, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y)
end

function FP8_BLS24_zero(x)
    ccall((:FP8_BLS24_zero, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_one(x)
    ccall((:FP8_BLS24_one, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_neg(x, y)
    ccall((:FP8_BLS24_neg, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y)
end

function FP8_BLS24_conj(x, y)
    ccall((:FP8_BLS24_conj, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y)
end

function FP8_BLS24_nconj(x, y)
    ccall((:FP8_BLS24_nconj, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y)
end

function FP8_BLS24_add(x, y, z)
    ccall((:FP8_BLS24_add, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y, z)
end

function FP8_BLS24_sub(x, y, z)
    ccall((:FP8_BLS24_sub, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y, z)
end

function FP8_BLS24_pmul(x, y, a)
    ccall((:FP8_BLS24_pmul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP4_BLS24}), x, y, a)
end

function FP8_BLS24_qmul(x, y, a)
    ccall((:FP8_BLS24_qmul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP2_BLS24}), x, y, a)
end

function FP8_BLS24_tmul(x, y, a)
    ccall((:FP8_BLS24_tmul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP_BLS24}), x, y, a)
end

function FP8_BLS24_imul(x, y, i)
    ccall((:FP8_BLS24_imul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Cint), x, y, i)
end

function FP8_BLS24_sqr(x, y)
    ccall((:FP8_BLS24_sqr, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y)
end

function FP8_BLS24_mul(x, y, z)
    ccall((:FP8_BLS24_mul, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y, z)
end

function FP8_BLS24_inv(x, y)
    ccall((:FP8_BLS24_inv, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), x, y)
end

function FP8_BLS24_output(x)
    ccall((:FP8_BLS24_output, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_rawoutput(x)
    ccall((:FP8_BLS24_rawoutput, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_times_i(x)
    ccall((:FP8_BLS24_times_i, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_times_i2(x)
    ccall((:FP8_BLS24_times_i2, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_norm(x)
    ccall((:FP8_BLS24_norm, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_reduce(x)
    ccall((:FP8_BLS24_reduce, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_pow(x, y, b)
    ccall((:FP8_BLS24_pow, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, BIG_480_56), x, y, b)
end

function FP8_BLS24_frob(x, f)
    ccall((:FP8_BLS24_frob, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP2_BLS24}), x, f)
end

function FP8_BLS24_xtr_A(r, w, x, y, z)
    ccall((:FP8_BLS24_xtr_A, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), r, w, x, y, z)
end

function FP8_BLS24_xtr_D(r, x)
    ccall((:FP8_BLS24_xtr_D, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), r, x)
end

function FP8_BLS24_xtr_pow(r, x, b)
    ccall((:FP8_BLS24_xtr_pow, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, BIG_480_56), r, x, b)
end

function FP8_BLS24_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP8_BLS24_xtr_pow2, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, BIG_480_56, BIG_480_56), r, c, d, e, f, a, b)
end

function FP8_BLS24_sqrt(r, x)
    ccall((:FP8_BLS24_sqrt, libamcl_pairing_BLS24), Cint, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}), r, x)
end

function FP8_BLS24_cmove(x, y, s)
    ccall((:FP8_BLS24_cmove, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24}, Ptr{FP8_BLS24}, Cint), x, y, s)
end

function FP8_BLS24_div_i(x)
    ccall((:FP8_BLS24_div_i, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_div_i2(x)
    ccall((:FP8_BLS24_div_i2, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end

function FP8_BLS24_div_2i(x)
    ccall((:FP8_BLS24_div_2i, libamcl_pairing_BLS24), Cvoid, (Ptr{FP8_BLS24},), x)
end
# Julia wrapper for header: fp8_BLS48.h
# Automatically generated using Clang.jl


function FP8_BLS48_iszilch(x)
    ccall((:FP8_BLS48_iszilch, libamcl_pairing_BLS48), Cint, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_isunity(x)
    ccall((:FP8_BLS48_isunity, libamcl_pairing_BLS48), Cint, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_equals(x, y)
    ccall((:FP8_BLS48_equals, libamcl_pairing_BLS48), Cint, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y)
end

function FP8_BLS48_isreal(x)
    ccall((:FP8_BLS48_isreal, libamcl_pairing_BLS48), Cint, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_from_FP4s(x, a, b)
    ccall((:FP8_BLS48_from_FP4s, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP4_BLS48}, Ptr{FP4_BLS48}), x, a, b)
end

function FP8_BLS48_from_FP4(x, a)
    ccall((:FP8_BLS48_from_FP4, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP4_BLS48}), x, a)
end

function FP8_BLS48_from_FP4H(x, a)
    ccall((:FP8_BLS48_from_FP4H, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP4_BLS48}), x, a)
end

function FP8_BLS48_copy(x, y)
    ccall((:FP8_BLS48_copy, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y)
end

function FP8_BLS48_zero(x)
    ccall((:FP8_BLS48_zero, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_one(x)
    ccall((:FP8_BLS48_one, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_neg(x, y)
    ccall((:FP8_BLS48_neg, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y)
end

function FP8_BLS48_conj(x, y)
    ccall((:FP8_BLS48_conj, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y)
end

function FP8_BLS48_nconj(x, y)
    ccall((:FP8_BLS48_nconj, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y)
end

function FP8_BLS48_add(x, y, z)
    ccall((:FP8_BLS48_add, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y, z)
end

function FP8_BLS48_sub(x, y, z)
    ccall((:FP8_BLS48_sub, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y, z)
end

function FP8_BLS48_pmul(x, y, a)
    ccall((:FP8_BLS48_pmul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP4_BLS48}), x, y, a)
end

function FP8_BLS48_qmul(x, y, a)
    ccall((:FP8_BLS48_qmul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP2_BLS48}), x, y, a)
end

function FP8_BLS48_tmul(x, y, a)
    ccall((:FP8_BLS48_tmul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP_BLS48}), x, y, a)
end

function FP8_BLS48_imul(x, y, i)
    ccall((:FP8_BLS48_imul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Cint), x, y, i)
end

function FP8_BLS48_sqr(x, y)
    ccall((:FP8_BLS48_sqr, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y)
end

function FP8_BLS48_mul(x, y, z)
    ccall((:FP8_BLS48_mul, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y, z)
end

function FP8_BLS48_inv(x, y)
    ccall((:FP8_BLS48_inv, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), x, y)
end

function FP8_BLS48_output(x)
    ccall((:FP8_BLS48_output, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_rawoutput(x)
    ccall((:FP8_BLS48_rawoutput, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_times_i(x)
    ccall((:FP8_BLS48_times_i, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_times_i2(x)
    ccall((:FP8_BLS48_times_i2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_norm(x)
    ccall((:FP8_BLS48_norm, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_reduce(x)
    ccall((:FP8_BLS48_reduce, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_pow(x, y, b)
    ccall((:FP8_BLS48_pow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, BIG_560_58), x, y, b)
end

function FP8_BLS48_frob(x, f)
    ccall((:FP8_BLS48_frob, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP2_BLS48}), x, f)
end

function FP8_BLS48_xtr_A(r, w, x, y, z)
    ccall((:FP8_BLS48_xtr_A, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), r, w, x, y, z)
end

function FP8_BLS48_xtr_D(r, x)
    ccall((:FP8_BLS48_xtr_D, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), r, x)
end

function FP8_BLS48_xtr_pow(r, x, b)
    ccall((:FP8_BLS48_xtr_pow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, BIG_560_58), r, x, b)
end

function FP8_BLS48_xtr_pow2(r, c, d, e, f, a, b)
    ccall((:FP8_BLS48_xtr_pow2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, BIG_560_58, BIG_560_58), r, c, d, e, f, a, b)
end

function FP8_BLS48_sqrt(r, x)
    ccall((:FP8_BLS48_sqrt, libamcl_pairing_BLS48), Cint, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}), r, x)
end

function FP8_BLS48_cmove(x, y, s)
    ccall((:FP8_BLS48_cmove, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48}, Ptr{FP8_BLS48}, Cint), x, y, s)
end

function FP8_BLS48_div_i(x)
    ccall((:FP8_BLS48_div_i, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_div_i2(x)
    ccall((:FP8_BLS48_div_i2, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end

function FP8_BLS48_div_2i(x)
    ccall((:FP8_BLS48_div_2i, libamcl_pairing_BLS48), Cvoid, (Ptr{FP8_BLS48},), x)
end
# Julia wrapper for header: fp_25519.h
# Automatically generated using Clang.jl


function FP_25519_iszilch(x)
    ccall((:FP_25519_iszilch, libamcl_curve_25519), Cint, (Ptr{FP_25519},), x)
end

function FP_25519_zero(x)
    ccall((:FP_25519_zero, libamcl_curve_25519), Cvoid, (Ptr{FP_25519},), x)
end

function FP_25519_copy(y, x)
    ccall((:FP_25519_copy, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}), y, x)
end

function FP_25519_rcopy(y, x)
    ccall((:FP_25519_rcopy, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, BIG_256_56), y, x)
end

function FP_25519_equals(x, y)
    ccall((:FP_25519_equals, libamcl_curve_25519), Cint, (Ptr{FP_25519}, Ptr{FP_25519}), x, y)
end

function FP_25519_cswap(x, y, s)
    ccall((:FP_25519_cswap, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}, Cint), x, y, s)
end

function FP_25519_cmove(x, y, s)
    ccall((:FP_25519_cmove, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}, Cint), x, y, s)
end

function FP_25519_nres(y, x)
    ccall((:FP_25519_nres, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, BIG_256_56), y, x)
end

function FP_25519_redc(x, y)
    ccall((:FP_25519_redc, libamcl_curve_25519), Cvoid, (BIG_256_56, Ptr{FP_25519}), x, y)
end

function FP_25519_one(x)
    ccall((:FP_25519_one, libamcl_curve_25519), Cvoid, (Ptr{FP_25519},), x)
end

function FP_25519_mod(r, d)
    ccall((:FP_25519_mod, libamcl_curve_25519), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_25519_mul(x, y, z)
    ccall((:FP_25519_mul, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}, Ptr{FP_25519}), x, y, z)
end

function FP_25519_imul(x, y, i)
    ccall((:FP_25519_imul, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}, Cint), x, y, i)
end

function FP_25519_sqr(x, y)
    ccall((:FP_25519_sqr, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}), x, y)
end

function FP_25519_add(x, y, z)
    ccall((:FP_25519_add, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}, Ptr{FP_25519}), x, y, z)
end

function FP_25519_sub(x, y, z)
    ccall((:FP_25519_sub, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}, Ptr{FP_25519}), x, y, z)
end

function FP_25519_div2(x, y)
    ccall((:FP_25519_div2, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}), x, y)
end

function FP_25519_pow(x, y, z)
    ccall((:FP_25519_pow, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}, BIG_256_56), x, y, z)
end

function FP_25519_sqrt(x, y)
    ccall((:FP_25519_sqrt, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}), x, y)
end

function FP_25519_neg(x, y)
    ccall((:FP_25519_neg, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}), x, y)
end

function FP_25519_output(x)
    ccall((:FP_25519_output, libamcl_curve_25519), Cvoid, (Ptr{FP_25519},), x)
end

function FP_25519_rawoutput(x)
    ccall((:FP_25519_rawoutput, libamcl_curve_25519), Cvoid, (Ptr{FP_25519},), x)
end

function FP_25519_reduce(x)
    ccall((:FP_25519_reduce, libamcl_curve_25519), Cvoid, (Ptr{FP_25519},), x)
end

function FP_25519_norm(x)
    ccall((:FP_25519_norm, libamcl_curve_25519), Cvoid, (Ptr{FP_25519},), x)
end

function FP_25519_qr(x)
    ccall((:FP_25519_qr, libamcl_curve_25519), Cint, (Ptr{FP_25519},), x)
end

function FP_25519_inv(x, y)
    ccall((:FP_25519_inv, libamcl_curve_25519), Cvoid, (Ptr{FP_25519}, Ptr{FP_25519}), x, y)
end
# Julia wrapper for header: fp_256PME.h
# Automatically generated using Clang.jl


function FP_256PME_iszilch(x)
    ccall((:FP_256PME_iszilch, libamcl_curve_256PME), Cint, (Ptr{FP_256PME},), x)
end

function FP_256PME_zero(x)
    ccall((:FP_256PME_zero, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME},), x)
end

function FP_256PME_copy(y, x)
    ccall((:FP_256PME_copy, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}), y, x)
end

function FP_256PME_rcopy(y, x)
    ccall((:FP_256PME_rcopy, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, BIG_256_56), y, x)
end

function FP_256PME_equals(x, y)
    ccall((:FP_256PME_equals, libamcl_curve_256PME), Cint, (Ptr{FP_256PME}, Ptr{FP_256PME}), x, y)
end

function FP_256PME_cswap(x, y, s)
    ccall((:FP_256PME_cswap, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}, Cint), x, y, s)
end

function FP_256PME_cmove(x, y, s)
    ccall((:FP_256PME_cmove, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}, Cint), x, y, s)
end

function FP_256PME_nres(y, x)
    ccall((:FP_256PME_nres, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, BIG_256_56), y, x)
end

function FP_256PME_redc(x, y)
    ccall((:FP_256PME_redc, libamcl_curve_256PME), Cvoid, (BIG_256_56, Ptr{FP_256PME}), x, y)
end

function FP_256PME_one(x)
    ccall((:FP_256PME_one, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME},), x)
end

function FP_256PME_mod(r, d)
    ccall((:FP_256PME_mod, libamcl_curve_256PME), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_256PME_mul(x, y, z)
    ccall((:FP_256PME_mul, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}, Ptr{FP_256PME}), x, y, z)
end

function FP_256PME_imul(x, y, i)
    ccall((:FP_256PME_imul, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}, Cint), x, y, i)
end

function FP_256PME_sqr(x, y)
    ccall((:FP_256PME_sqr, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}), x, y)
end

function FP_256PME_add(x, y, z)
    ccall((:FP_256PME_add, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}, Ptr{FP_256PME}), x, y, z)
end

function FP_256PME_sub(x, y, z)
    ccall((:FP_256PME_sub, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}, Ptr{FP_256PME}), x, y, z)
end

function FP_256PME_div2(x, y)
    ccall((:FP_256PME_div2, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}), x, y)
end

function FP_256PME_pow(x, y, z)
    ccall((:FP_256PME_pow, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}, BIG_256_56), x, y, z)
end

function FP_256PME_sqrt(x, y)
    ccall((:FP_256PME_sqrt, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}), x, y)
end

function FP_256PME_neg(x, y)
    ccall((:FP_256PME_neg, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}), x, y)
end

function FP_256PME_output(x)
    ccall((:FP_256PME_output, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME},), x)
end

function FP_256PME_rawoutput(x)
    ccall((:FP_256PME_rawoutput, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME},), x)
end

function FP_256PME_reduce(x)
    ccall((:FP_256PME_reduce, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME},), x)
end

function FP_256PME_norm(x)
    ccall((:FP_256PME_norm, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME},), x)
end

function FP_256PME_qr(x)
    ccall((:FP_256PME_qr, libamcl_curve_256PME), Cint, (Ptr{FP_256PME},), x)
end

function FP_256PME_inv(x, y)
    ccall((:FP_256PME_inv, libamcl_curve_256PME), Cvoid, (Ptr{FP_256PME}, Ptr{FP_256PME}), x, y)
end
# Julia wrapper for header: fp_256PMW.h
# Automatically generated using Clang.jl


function FP_256PMW_iszilch(x)
    ccall((:FP_256PMW_iszilch, libamcl_curve_256PMW), Cint, (Ptr{FP_256PMW},), x)
end

function FP_256PMW_zero(x)
    ccall((:FP_256PMW_zero, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW},), x)
end

function FP_256PMW_copy(y, x)
    ccall((:FP_256PMW_copy, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}), y, x)
end

function FP_256PMW_rcopy(y, x)
    ccall((:FP_256PMW_rcopy, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, BIG_256_56), y, x)
end

function FP_256PMW_equals(x, y)
    ccall((:FP_256PMW_equals, libamcl_curve_256PMW), Cint, (Ptr{FP_256PMW}, Ptr{FP_256PMW}), x, y)
end

function FP_256PMW_cswap(x, y, s)
    ccall((:FP_256PMW_cswap, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}, Cint), x, y, s)
end

function FP_256PMW_cmove(x, y, s)
    ccall((:FP_256PMW_cmove, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}, Cint), x, y, s)
end

function FP_256PMW_nres(y, x)
    ccall((:FP_256PMW_nres, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, BIG_256_56), y, x)
end

function FP_256PMW_redc(x, y)
    ccall((:FP_256PMW_redc, libamcl_curve_256PMW), Cvoid, (BIG_256_56, Ptr{FP_256PMW}), x, y)
end

function FP_256PMW_one(x)
    ccall((:FP_256PMW_one, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW},), x)
end

function FP_256PMW_mod(r, d)
    ccall((:FP_256PMW_mod, libamcl_curve_256PMW), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_256PMW_mul(x, y, z)
    ccall((:FP_256PMW_mul, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}, Ptr{FP_256PMW}), x, y, z)
end

function FP_256PMW_imul(x, y, i)
    ccall((:FP_256PMW_imul, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}, Cint), x, y, i)
end

function FP_256PMW_sqr(x, y)
    ccall((:FP_256PMW_sqr, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}), x, y)
end

function FP_256PMW_add(x, y, z)
    ccall((:FP_256PMW_add, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}, Ptr{FP_256PMW}), x, y, z)
end

function FP_256PMW_sub(x, y, z)
    ccall((:FP_256PMW_sub, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}, Ptr{FP_256PMW}), x, y, z)
end

function FP_256PMW_div2(x, y)
    ccall((:FP_256PMW_div2, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}), x, y)
end

function FP_256PMW_pow(x, y, z)
    ccall((:FP_256PMW_pow, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}, BIG_256_56), x, y, z)
end

function FP_256PMW_sqrt(x, y)
    ccall((:FP_256PMW_sqrt, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}), x, y)
end

function FP_256PMW_neg(x, y)
    ccall((:FP_256PMW_neg, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}), x, y)
end

function FP_256PMW_output(x)
    ccall((:FP_256PMW_output, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW},), x)
end

function FP_256PMW_rawoutput(x)
    ccall((:FP_256PMW_rawoutput, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW},), x)
end

function FP_256PMW_reduce(x)
    ccall((:FP_256PMW_reduce, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW},), x)
end

function FP_256PMW_norm(x)
    ccall((:FP_256PMW_norm, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW},), x)
end

function FP_256PMW_qr(x)
    ccall((:FP_256PMW_qr, libamcl_curve_256PMW), Cint, (Ptr{FP_256PMW},), x)
end

function FP_256PMW_inv(x, y)
    ccall((:FP_256PMW_inv, libamcl_curve_256PMW), Cvoid, (Ptr{FP_256PMW}, Ptr{FP_256PMW}), x, y)
end
# Julia wrapper for header: fp_384PM.h
# Automatically generated using Clang.jl


function FP_384PM_iszilch(x)
    ccall((:FP_384PM_iszilch, libamcl_curve_384PM), Cint, (Ptr{FP_384PM},), x)
end

function FP_384PM_zero(x)
    ccall((:FP_384PM_zero, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM},), x)
end

function FP_384PM_copy(y, x)
    ccall((:FP_384PM_copy, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}), y, x)
end

function FP_384PM_rcopy(y, x)
    ccall((:FP_384PM_rcopy, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, BIG_384_56), y, x)
end

function FP_384PM_equals(x, y)
    ccall((:FP_384PM_equals, libamcl_curve_384PM), Cint, (Ptr{FP_384PM}, Ptr{FP_384PM}), x, y)
end

function FP_384PM_cswap(x, y, s)
    ccall((:FP_384PM_cswap, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}, Cint), x, y, s)
end

function FP_384PM_cmove(x, y, s)
    ccall((:FP_384PM_cmove, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}, Cint), x, y, s)
end

function FP_384PM_nres(y, x)
    ccall((:FP_384PM_nres, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, BIG_384_56), y, x)
end

function FP_384PM_redc(x, y)
    ccall((:FP_384PM_redc, libamcl_curve_384PM), Cvoid, (BIG_384_56, Ptr{FP_384PM}), x, y)
end

function FP_384PM_one(x)
    ccall((:FP_384PM_one, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM},), x)
end

function FP_384PM_mod(r, d)
    ccall((:FP_384PM_mod, libamcl_curve_384PM), Cvoid, (BIG_384_56, DBIG_384_56), r, d)
end

function FP_384PM_mul(x, y, z)
    ccall((:FP_384PM_mul, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}, Ptr{FP_384PM}), x, y, z)
end

function FP_384PM_imul(x, y, i)
    ccall((:FP_384PM_imul, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}, Cint), x, y, i)
end

function FP_384PM_sqr(x, y)
    ccall((:FP_384PM_sqr, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}), x, y)
end

function FP_384PM_add(x, y, z)
    ccall((:FP_384PM_add, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}, Ptr{FP_384PM}), x, y, z)
end

function FP_384PM_sub(x, y, z)
    ccall((:FP_384PM_sub, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}, Ptr{FP_384PM}), x, y, z)
end

function FP_384PM_div2(x, y)
    ccall((:FP_384PM_div2, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}), x, y)
end

function FP_384PM_pow(x, y, z)
    ccall((:FP_384PM_pow, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}, BIG_384_56), x, y, z)
end

function FP_384PM_sqrt(x, y)
    ccall((:FP_384PM_sqrt, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}), x, y)
end

function FP_384PM_neg(x, y)
    ccall((:FP_384PM_neg, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}), x, y)
end

function FP_384PM_output(x)
    ccall((:FP_384PM_output, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM},), x)
end

function FP_384PM_rawoutput(x)
    ccall((:FP_384PM_rawoutput, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM},), x)
end

function FP_384PM_reduce(x)
    ccall((:FP_384PM_reduce, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM},), x)
end

function FP_384PM_norm(x)
    ccall((:FP_384PM_norm, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM},), x)
end

function FP_384PM_qr(x)
    ccall((:FP_384PM_qr, libamcl_curve_384PM), Cint, (Ptr{FP_384PM},), x)
end

function FP_384PM_inv(x, y)
    ccall((:FP_384PM_inv, libamcl_curve_384PM), Cvoid, (Ptr{FP_384PM}, Ptr{FP_384PM}), x, y)
end
# Julia wrapper for header: fp_512PM.h
# Automatically generated using Clang.jl


function FP_512PM_iszilch(x)
    ccall((:FP_512PM_iszilch, libamcl_curve_512PM), Cint, (Ptr{FP_512PM},), x)
end

function FP_512PM_zero(x)
    ccall((:FP_512PM_zero, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM},), x)
end

function FP_512PM_copy(y, x)
    ccall((:FP_512PM_copy, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}), y, x)
end

function FP_512PM_rcopy(y, x)
    ccall((:FP_512PM_rcopy, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, BIG_512_56), y, x)
end

function FP_512PM_equals(x, y)
    ccall((:FP_512PM_equals, libamcl_curve_512PM), Cint, (Ptr{FP_512PM}, Ptr{FP_512PM}), x, y)
end

function FP_512PM_cswap(x, y, s)
    ccall((:FP_512PM_cswap, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}, Cint), x, y, s)
end

function FP_512PM_cmove(x, y, s)
    ccall((:FP_512PM_cmove, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}, Cint), x, y, s)
end

function FP_512PM_nres(y, x)
    ccall((:FP_512PM_nres, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, BIG_512_56), y, x)
end

function FP_512PM_redc(x, y)
    ccall((:FP_512PM_redc, libamcl_curve_512PM), Cvoid, (BIG_512_56, Ptr{FP_512PM}), x, y)
end

function FP_512PM_one(x)
    ccall((:FP_512PM_one, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM},), x)
end

function FP_512PM_mod(r, d)
    ccall((:FP_512PM_mod, libamcl_curve_512PM), Cvoid, (BIG_512_56, DBIG_512_56), r, d)
end

function FP_512PM_mul(x, y, z)
    ccall((:FP_512PM_mul, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}, Ptr{FP_512PM}), x, y, z)
end

function FP_512PM_imul(x, y, i)
    ccall((:FP_512PM_imul, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}, Cint), x, y, i)
end

function FP_512PM_sqr(x, y)
    ccall((:FP_512PM_sqr, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}), x, y)
end

function FP_512PM_add(x, y, z)
    ccall((:FP_512PM_add, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}, Ptr{FP_512PM}), x, y, z)
end

function FP_512PM_sub(x, y, z)
    ccall((:FP_512PM_sub, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}, Ptr{FP_512PM}), x, y, z)
end

function FP_512PM_div2(x, y)
    ccall((:FP_512PM_div2, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}), x, y)
end

function FP_512PM_pow(x, y, z)
    ccall((:FP_512PM_pow, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}, BIG_512_56), x, y, z)
end

function FP_512PM_sqrt(x, y)
    ccall((:FP_512PM_sqrt, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}), x, y)
end

function FP_512PM_neg(x, y)
    ccall((:FP_512PM_neg, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}), x, y)
end

function FP_512PM_output(x)
    ccall((:FP_512PM_output, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM},), x)
end

function FP_512PM_rawoutput(x)
    ccall((:FP_512PM_rawoutput, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM},), x)
end

function FP_512PM_reduce(x)
    ccall((:FP_512PM_reduce, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM},), x)
end

function FP_512PM_norm(x)
    ccall((:FP_512PM_norm, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM},), x)
end

function FP_512PM_qr(x)
    ccall((:FP_512PM_qr, libamcl_curve_512PM), Cint, (Ptr{FP_512PM},), x)
end

function FP_512PM_inv(x, y)
    ccall((:FP_512PM_inv, libamcl_curve_512PM), Cvoid, (Ptr{FP_512PM}, Ptr{FP_512PM}), x, y)
end
# Julia wrapper for header: fp_ANSSI.h
# Automatically generated using Clang.jl


function FP_ANSSI_iszilch(x)
    ccall((:FP_ANSSI_iszilch, libamcl_curve_ANSSI), Cint, (Ptr{FP_ANSSI},), x)
end

function FP_ANSSI_zero(x)
    ccall((:FP_ANSSI_zero, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI},), x)
end

function FP_ANSSI_copy(y, x)
    ccall((:FP_ANSSI_copy, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), y, x)
end

function FP_ANSSI_rcopy(y, x)
    ccall((:FP_ANSSI_rcopy, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, BIG_256_56), y, x)
end

function FP_ANSSI_equals(x, y)
    ccall((:FP_ANSSI_equals, libamcl_curve_ANSSI), Cint, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), x, y)
end

function FP_ANSSI_cswap(x, y, s)
    ccall((:FP_ANSSI_cswap, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}, Cint), x, y, s)
end

function FP_ANSSI_cmove(x, y, s)
    ccall((:FP_ANSSI_cmove, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}, Cint), x, y, s)
end

function FP_ANSSI_nres(y, x)
    ccall((:FP_ANSSI_nres, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, BIG_256_56), y, x)
end

function FP_ANSSI_redc(x, y)
    ccall((:FP_ANSSI_redc, libamcl_curve_ANSSI), Cvoid, (BIG_256_56, Ptr{FP_ANSSI}), x, y)
end

function FP_ANSSI_one(x)
    ccall((:FP_ANSSI_one, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI},), x)
end

function FP_ANSSI_mod(r, d)
    ccall((:FP_ANSSI_mod, libamcl_curve_ANSSI), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_ANSSI_mul(x, y, z)
    ccall((:FP_ANSSI_mul, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), x, y, z)
end

function FP_ANSSI_imul(x, y, i)
    ccall((:FP_ANSSI_imul, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}, Cint), x, y, i)
end

function FP_ANSSI_sqr(x, y)
    ccall((:FP_ANSSI_sqr, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), x, y)
end

function FP_ANSSI_add(x, y, z)
    ccall((:FP_ANSSI_add, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), x, y, z)
end

function FP_ANSSI_sub(x, y, z)
    ccall((:FP_ANSSI_sub, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), x, y, z)
end

function FP_ANSSI_div2(x, y)
    ccall((:FP_ANSSI_div2, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), x, y)
end

function FP_ANSSI_pow(x, y, z)
    ccall((:FP_ANSSI_pow, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}, BIG_256_56), x, y, z)
end

function FP_ANSSI_sqrt(x, y)
    ccall((:FP_ANSSI_sqrt, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), x, y)
end

function FP_ANSSI_neg(x, y)
    ccall((:FP_ANSSI_neg, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), x, y)
end

function FP_ANSSI_output(x)
    ccall((:FP_ANSSI_output, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI},), x)
end

function FP_ANSSI_rawoutput(x)
    ccall((:FP_ANSSI_rawoutput, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI},), x)
end

function FP_ANSSI_reduce(x)
    ccall((:FP_ANSSI_reduce, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI},), x)
end

function FP_ANSSI_norm(x)
    ccall((:FP_ANSSI_norm, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI},), x)
end

function FP_ANSSI_qr(x)
    ccall((:FP_ANSSI_qr, libamcl_curve_ANSSI), Cint, (Ptr{FP_ANSSI},), x)
end

function FP_ANSSI_inv(x, y)
    ccall((:FP_ANSSI_inv, libamcl_curve_ANSSI), Cvoid, (Ptr{FP_ANSSI}, Ptr{FP_ANSSI}), x, y)
end
# Julia wrapper for header: fp_BLS24.h
# Automatically generated using Clang.jl


function FP_BLS24_iszilch(x)
    ccall((:FP_BLS24_iszilch, libamcl_curve_BLS24), Cint, (Ptr{FP_BLS24},), x)
end

function FP_BLS24_zero(x)
    ccall((:FP_BLS24_zero, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24},), x)
end

function FP_BLS24_copy(y, x)
    ccall((:FP_BLS24_copy, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}), y, x)
end

function FP_BLS24_rcopy(y, x)
    ccall((:FP_BLS24_rcopy, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, BIG_480_56), y, x)
end

function FP_BLS24_equals(x, y)
    ccall((:FP_BLS24_equals, libamcl_curve_BLS24), Cint, (Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, y)
end

function FP_BLS24_cswap(x, y, s)
    ccall((:FP_BLS24_cswap, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}, Cint), x, y, s)
end

function FP_BLS24_cmove(x, y, s)
    ccall((:FP_BLS24_cmove, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}, Cint), x, y, s)
end

function FP_BLS24_nres(y, x)
    ccall((:FP_BLS24_nres, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, BIG_480_56), y, x)
end

function FP_BLS24_redc(x, y)
    ccall((:FP_BLS24_redc, libamcl_curve_BLS24), Cvoid, (BIG_480_56, Ptr{FP_BLS24}), x, y)
end

function FP_BLS24_one(x)
    ccall((:FP_BLS24_one, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24},), x)
end

function FP_BLS24_mod(r, d)
    ccall((:FP_BLS24_mod, libamcl_curve_BLS24), Cvoid, (BIG_480_56, DBIG_480_56), r, d)
end

function FP_BLS24_mul(x, y, z)
    ccall((:FP_BLS24_mul, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, y, z)
end

function FP_BLS24_imul(x, y, i)
    ccall((:FP_BLS24_imul, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}, Cint), x, y, i)
end

function FP_BLS24_sqr(x, y)
    ccall((:FP_BLS24_sqr, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, y)
end

function FP_BLS24_add(x, y, z)
    ccall((:FP_BLS24_add, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, y, z)
end

function FP_BLS24_sub(x, y, z)
    ccall((:FP_BLS24_sub, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, y, z)
end

function FP_BLS24_div2(x, y)
    ccall((:FP_BLS24_div2, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, y)
end

function FP_BLS24_pow(x, y, z)
    ccall((:FP_BLS24_pow, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}, BIG_480_56), x, y, z)
end

function FP_BLS24_sqrt(x, y)
    ccall((:FP_BLS24_sqrt, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, y)
end

function FP_BLS24_neg(x, y)
    ccall((:FP_BLS24_neg, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, y)
end

function FP_BLS24_output(x)
    ccall((:FP_BLS24_output, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24},), x)
end

function FP_BLS24_rawoutput(x)
    ccall((:FP_BLS24_rawoutput, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24},), x)
end

function FP_BLS24_reduce(x)
    ccall((:FP_BLS24_reduce, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24},), x)
end

function FP_BLS24_norm(x)
    ccall((:FP_BLS24_norm, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24},), x)
end

function FP_BLS24_qr(x)
    ccall((:FP_BLS24_qr, libamcl_curve_BLS24), Cint, (Ptr{FP_BLS24},), x)
end

function FP_BLS24_inv(x, y)
    ccall((:FP_BLS24_inv, libamcl_curve_BLS24), Cvoid, (Ptr{FP_BLS24}, Ptr{FP_BLS24}), x, y)
end
# Julia wrapper for header: fp_BLS381.h
# Automatically generated using Clang.jl


function FP_BLS381_iszilch(x)
    ccall((:FP_BLS381_iszilch, libamcl_curve_BLS381), Cint, (Ptr{FP_BLS381},), x)
end

function FP_BLS381_zero(x)
    ccall((:FP_BLS381_zero, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381},), x)
end

function FP_BLS381_copy(y, x)
    ccall((:FP_BLS381_copy, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}), y, x)
end

function FP_BLS381_rcopy(y, x)
    ccall((:FP_BLS381_rcopy, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, BIG_384_58), y, x)
end

function FP_BLS381_equals(x, y)
    ccall((:FP_BLS381_equals, libamcl_curve_BLS381), Cint, (Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, y)
end

function FP_BLS381_cswap(x, y, s)
    ccall((:FP_BLS381_cswap, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}, Cint), x, y, s)
end

function FP_BLS381_cmove(x, y, s)
    ccall((:FP_BLS381_cmove, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}, Cint), x, y, s)
end

function FP_BLS381_nres(y, x)
    ccall((:FP_BLS381_nres, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, BIG_384_58), y, x)
end

function FP_BLS381_redc(x, y)
    ccall((:FP_BLS381_redc, libamcl_curve_BLS381), Cvoid, (BIG_384_58, Ptr{FP_BLS381}), x, y)
end

function FP_BLS381_one(x)
    ccall((:FP_BLS381_one, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381},), x)
end

function FP_BLS381_mod(r, d)
    ccall((:FP_BLS381_mod, libamcl_curve_BLS381), Cvoid, (BIG_384_58, DBIG_384_58), r, d)
end

function FP_BLS381_mul(x, y, z)
    ccall((:FP_BLS381_mul, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, y, z)
end

function FP_BLS381_imul(x, y, i)
    ccall((:FP_BLS381_imul, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}, Cint), x, y, i)
end

function FP_BLS381_sqr(x, y)
    ccall((:FP_BLS381_sqr, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, y)
end

function FP_BLS381_add(x, y, z)
    ccall((:FP_BLS381_add, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, y, z)
end

function FP_BLS381_sub(x, y, z)
    ccall((:FP_BLS381_sub, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, y, z)
end

function FP_BLS381_div2(x, y)
    ccall((:FP_BLS381_div2, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, y)
end

function FP_BLS381_pow(x, y, z)
    ccall((:FP_BLS381_pow, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}, BIG_384_58), x, y, z)
end

function FP_BLS381_sqrt(x, y)
    ccall((:FP_BLS381_sqrt, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, y)
end

function FP_BLS381_neg(x, y)
    ccall((:FP_BLS381_neg, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, y)
end

function FP_BLS381_output(x)
    ccall((:FP_BLS381_output, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381},), x)
end

function FP_BLS381_rawoutput(x)
    ccall((:FP_BLS381_rawoutput, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381},), x)
end

function FP_BLS381_reduce(x)
    ccall((:FP_BLS381_reduce, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381},), x)
end

function FP_BLS381_norm(x)
    ccall((:FP_BLS381_norm, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381},), x)
end

function FP_BLS381_qr(x)
    ccall((:FP_BLS381_qr, libamcl_curve_BLS381), Cint, (Ptr{FP_BLS381},), x)
end

function FP_BLS381_inv(x, y)
    ccall((:FP_BLS381_inv, libamcl_curve_BLS381), Cvoid, (Ptr{FP_BLS381}, Ptr{FP_BLS381}), x, y)
end
# Julia wrapper for header: fp_BLS383.h
# Automatically generated using Clang.jl


function FP_BLS383_iszilch(x)
    ccall((:FP_BLS383_iszilch, libamcl_curve_BLS383), Cint, (Ptr{FP_BLS383},), x)
end

function FP_BLS383_zero(x)
    ccall((:FP_BLS383_zero, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383},), x)
end

function FP_BLS383_copy(y, x)
    ccall((:FP_BLS383_copy, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}), y, x)
end

function FP_BLS383_rcopy(y, x)
    ccall((:FP_BLS383_rcopy, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, BIG_384_58), y, x)
end

function FP_BLS383_equals(x, y)
    ccall((:FP_BLS383_equals, libamcl_curve_BLS383), Cint, (Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, y)
end

function FP_BLS383_cswap(x, y, s)
    ccall((:FP_BLS383_cswap, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}, Cint), x, y, s)
end

function FP_BLS383_cmove(x, y, s)
    ccall((:FP_BLS383_cmove, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}, Cint), x, y, s)
end

function FP_BLS383_nres(y, x)
    ccall((:FP_BLS383_nres, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, BIG_384_58), y, x)
end

function FP_BLS383_redc(x, y)
    ccall((:FP_BLS383_redc, libamcl_curve_BLS383), Cvoid, (BIG_384_58, Ptr{FP_BLS383}), x, y)
end

function FP_BLS383_one(x)
    ccall((:FP_BLS383_one, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383},), x)
end

function FP_BLS383_mod(r, d)
    ccall((:FP_BLS383_mod, libamcl_curve_BLS383), Cvoid, (BIG_384_58, DBIG_384_58), r, d)
end

function FP_BLS383_mul(x, y, z)
    ccall((:FP_BLS383_mul, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, y, z)
end

function FP_BLS383_imul(x, y, i)
    ccall((:FP_BLS383_imul, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}, Cint), x, y, i)
end

function FP_BLS383_sqr(x, y)
    ccall((:FP_BLS383_sqr, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, y)
end

function FP_BLS383_add(x, y, z)
    ccall((:FP_BLS383_add, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, y, z)
end

function FP_BLS383_sub(x, y, z)
    ccall((:FP_BLS383_sub, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, y, z)
end

function FP_BLS383_div2(x, y)
    ccall((:FP_BLS383_div2, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, y)
end

function FP_BLS383_pow(x, y, z)
    ccall((:FP_BLS383_pow, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}, BIG_384_58), x, y, z)
end

function FP_BLS383_sqrt(x, y)
    ccall((:FP_BLS383_sqrt, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, y)
end

function FP_BLS383_neg(x, y)
    ccall((:FP_BLS383_neg, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, y)
end

function FP_BLS383_output(x)
    ccall((:FP_BLS383_output, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383},), x)
end

function FP_BLS383_rawoutput(x)
    ccall((:FP_BLS383_rawoutput, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383},), x)
end

function FP_BLS383_reduce(x)
    ccall((:FP_BLS383_reduce, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383},), x)
end

function FP_BLS383_norm(x)
    ccall((:FP_BLS383_norm, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383},), x)
end

function FP_BLS383_qr(x)
    ccall((:FP_BLS383_qr, libamcl_curve_BLS383), Cint, (Ptr{FP_BLS383},), x)
end

function FP_BLS383_inv(x, y)
    ccall((:FP_BLS383_inv, libamcl_curve_BLS383), Cvoid, (Ptr{FP_BLS383}, Ptr{FP_BLS383}), x, y)
end
# Julia wrapper for header: fp_BLS461.h
# Automatically generated using Clang.jl


function FP_BLS461_iszilch(x)
    ccall((:FP_BLS461_iszilch, libamcl_curve_BLS461), Cint, (Ptr{FP_BLS461},), x)
end

function FP_BLS461_zero(x)
    ccall((:FP_BLS461_zero, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461},), x)
end

function FP_BLS461_copy(y, x)
    ccall((:FP_BLS461_copy, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}), y, x)
end

function FP_BLS461_rcopy(y, x)
    ccall((:FP_BLS461_rcopy, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, BIG_464_60), y, x)
end

function FP_BLS461_equals(x, y)
    ccall((:FP_BLS461_equals, libamcl_curve_BLS461), Cint, (Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, y)
end

function FP_BLS461_cswap(x, y, s)
    ccall((:FP_BLS461_cswap, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}, Cint), x, y, s)
end

function FP_BLS461_cmove(x, y, s)
    ccall((:FP_BLS461_cmove, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}, Cint), x, y, s)
end

function FP_BLS461_nres(y, x)
    ccall((:FP_BLS461_nres, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, BIG_464_60), y, x)
end

function FP_BLS461_redc(x, y)
    ccall((:FP_BLS461_redc, libamcl_curve_BLS461), Cvoid, (BIG_464_60, Ptr{FP_BLS461}), x, y)
end

function FP_BLS461_one(x)
    ccall((:FP_BLS461_one, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461},), x)
end

function FP_BLS461_mod(r, d)
    ccall((:FP_BLS461_mod, libamcl_curve_BLS461), Cvoid, (BIG_464_60, DBIG_464_60), r, d)
end

function FP_BLS461_mul(x, y, z)
    ccall((:FP_BLS461_mul, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, y, z)
end

function FP_BLS461_imul(x, y, i)
    ccall((:FP_BLS461_imul, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}, Cint), x, y, i)
end

function FP_BLS461_sqr(x, y)
    ccall((:FP_BLS461_sqr, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, y)
end

function FP_BLS461_add(x, y, z)
    ccall((:FP_BLS461_add, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, y, z)
end

function FP_BLS461_sub(x, y, z)
    ccall((:FP_BLS461_sub, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, y, z)
end

function FP_BLS461_div2(x, y)
    ccall((:FP_BLS461_div2, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, y)
end

function FP_BLS461_pow(x, y, z)
    ccall((:FP_BLS461_pow, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}, BIG_464_60), x, y, z)
end

function FP_BLS461_sqrt(x, y)
    ccall((:FP_BLS461_sqrt, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, y)
end

function FP_BLS461_neg(x, y)
    ccall((:FP_BLS461_neg, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, y)
end

function FP_BLS461_output(x)
    ccall((:FP_BLS461_output, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461},), x)
end

function FP_BLS461_rawoutput(x)
    ccall((:FP_BLS461_rawoutput, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461},), x)
end

function FP_BLS461_reduce(x)
    ccall((:FP_BLS461_reduce, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461},), x)
end

function FP_BLS461_norm(x)
    ccall((:FP_BLS461_norm, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461},), x)
end

function FP_BLS461_qr(x)
    ccall((:FP_BLS461_qr, libamcl_curve_BLS461), Cint, (Ptr{FP_BLS461},), x)
end

function FP_BLS461_inv(x, y)
    ccall((:FP_BLS461_inv, libamcl_curve_BLS461), Cvoid, (Ptr{FP_BLS461}, Ptr{FP_BLS461}), x, y)
end
# Julia wrapper for header: fp_BLS48.h
# Automatically generated using Clang.jl


function FP_BLS48_iszilch(x)
    ccall((:FP_BLS48_iszilch, libamcl_curve_BLS48), Cint, (Ptr{FP_BLS48},), x)
end

function FP_BLS48_zero(x)
    ccall((:FP_BLS48_zero, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48},), x)
end

function FP_BLS48_copy(y, x)
    ccall((:FP_BLS48_copy, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}), y, x)
end

function FP_BLS48_rcopy(y, x)
    ccall((:FP_BLS48_rcopy, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, BIG_560_58), y, x)
end

function FP_BLS48_equals(x, y)
    ccall((:FP_BLS48_equals, libamcl_curve_BLS48), Cint, (Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, y)
end

function FP_BLS48_cswap(x, y, s)
    ccall((:FP_BLS48_cswap, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}, Cint), x, y, s)
end

function FP_BLS48_cmove(x, y, s)
    ccall((:FP_BLS48_cmove, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}, Cint), x, y, s)
end

function FP_BLS48_nres(y, x)
    ccall((:FP_BLS48_nres, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, BIG_560_58), y, x)
end

function FP_BLS48_redc(x, y)
    ccall((:FP_BLS48_redc, libamcl_curve_BLS48), Cvoid, (BIG_560_58, Ptr{FP_BLS48}), x, y)
end

function FP_BLS48_one(x)
    ccall((:FP_BLS48_one, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48},), x)
end

function FP_BLS48_mod(r, d)
    ccall((:FP_BLS48_mod, libamcl_curve_BLS48), Cvoid, (BIG_560_58, DBIG_560_58), r, d)
end

function FP_BLS48_mul(x, y, z)
    ccall((:FP_BLS48_mul, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, y, z)
end

function FP_BLS48_imul(x, y, i)
    ccall((:FP_BLS48_imul, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}, Cint), x, y, i)
end

function FP_BLS48_sqr(x, y)
    ccall((:FP_BLS48_sqr, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, y)
end

function FP_BLS48_add(x, y, z)
    ccall((:FP_BLS48_add, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, y, z)
end

function FP_BLS48_sub(x, y, z)
    ccall((:FP_BLS48_sub, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, y, z)
end

function FP_BLS48_div2(x, y)
    ccall((:FP_BLS48_div2, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, y)
end

function FP_BLS48_pow(x, y, z)
    ccall((:FP_BLS48_pow, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}, BIG_560_58), x, y, z)
end

function FP_BLS48_sqrt(x, y)
    ccall((:FP_BLS48_sqrt, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, y)
end

function FP_BLS48_neg(x, y)
    ccall((:FP_BLS48_neg, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, y)
end

function FP_BLS48_output(x)
    ccall((:FP_BLS48_output, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48},), x)
end

function FP_BLS48_rawoutput(x)
    ccall((:FP_BLS48_rawoutput, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48},), x)
end

function FP_BLS48_reduce(x)
    ccall((:FP_BLS48_reduce, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48},), x)
end

function FP_BLS48_norm(x)
    ccall((:FP_BLS48_norm, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48},), x)
end

function FP_BLS48_qr(x)
    ccall((:FP_BLS48_qr, libamcl_curve_BLS48), Cint, (Ptr{FP_BLS48},), x)
end

function FP_BLS48_inv(x, y)
    ccall((:FP_BLS48_inv, libamcl_curve_BLS48), Cvoid, (Ptr{FP_BLS48}, Ptr{FP_BLS48}), x, y)
end
# Julia wrapper for header: fp_BN254.h
# Automatically generated using Clang.jl


function FP_BN254_iszilch(x)
    ccall((:FP_BN254_iszilch, libamcl_curve_BN254), Cint, (Ptr{FP_BN254},), x)
end

function FP_BN254_zero(x)
    ccall((:FP_BN254_zero, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254},), x)
end

function FP_BN254_copy(y, x)
    ccall((:FP_BN254_copy, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}), y, x)
end

function FP_BN254_rcopy(y, x)
    ccall((:FP_BN254_rcopy, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, BIG_256_56), y, x)
end

function FP_BN254_equals(x, y)
    ccall((:FP_BN254_equals, libamcl_curve_BN254), Cint, (Ptr{FP_BN254}, Ptr{FP_BN254}), x, y)
end

function FP_BN254_cswap(x, y, s)
    ccall((:FP_BN254_cswap, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}, Cint), x, y, s)
end

function FP_BN254_cmove(x, y, s)
    ccall((:FP_BN254_cmove, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}, Cint), x, y, s)
end

function FP_BN254_nres(y, x)
    ccall((:FP_BN254_nres, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, BIG_256_56), y, x)
end

function FP_BN254_redc(x, y)
    ccall((:FP_BN254_redc, libamcl_curve_BN254), Cvoid, (BIG_256_56, Ptr{FP_BN254}), x, y)
end

function FP_BN254_one(x)
    ccall((:FP_BN254_one, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254},), x)
end

function FP_BN254_mod(r, d)
    ccall((:FP_BN254_mod, libamcl_curve_BN254), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_BN254_mul(x, y, z)
    ccall((:FP_BN254_mul, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}, Ptr{FP_BN254}), x, y, z)
end

function FP_BN254_imul(x, y, i)
    ccall((:FP_BN254_imul, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}, Cint), x, y, i)
end

function FP_BN254_sqr(x, y)
    ccall((:FP_BN254_sqr, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}), x, y)
end

function FP_BN254_add(x, y, z)
    ccall((:FP_BN254_add, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}, Ptr{FP_BN254}), x, y, z)
end

function FP_BN254_sub(x, y, z)
    ccall((:FP_BN254_sub, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}, Ptr{FP_BN254}), x, y, z)
end

function FP_BN254_div2(x, y)
    ccall((:FP_BN254_div2, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}), x, y)
end

function FP_BN254_pow(x, y, z)
    ccall((:FP_BN254_pow, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}, BIG_256_56), x, y, z)
end

function FP_BN254_sqrt(x, y)
    ccall((:FP_BN254_sqrt, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}), x, y)
end

function FP_BN254_neg(x, y)
    ccall((:FP_BN254_neg, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}), x, y)
end

function FP_BN254_output(x)
    ccall((:FP_BN254_output, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254},), x)
end

function FP_BN254_rawoutput(x)
    ccall((:FP_BN254_rawoutput, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254},), x)
end

function FP_BN254_reduce(x)
    ccall((:FP_BN254_reduce, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254},), x)
end

function FP_BN254_norm(x)
    ccall((:FP_BN254_norm, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254},), x)
end

function FP_BN254_qr(x)
    ccall((:FP_BN254_qr, libamcl_curve_BN254), Cint, (Ptr{FP_BN254},), x)
end

function FP_BN254_inv(x, y)
    ccall((:FP_BN254_inv, libamcl_curve_BN254), Cvoid, (Ptr{FP_BN254}, Ptr{FP_BN254}), x, y)
end
# Julia wrapper for header: fp_BN254CX.h
# Automatically generated using Clang.jl


function FP_BN254CX_iszilch(x)
    ccall((:FP_BN254CX_iszilch, libamcl_curve_BN254CX), Cint, (Ptr{FP_BN254CX},), x)
end

function FP_BN254CX_zero(x)
    ccall((:FP_BN254CX_zero, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX},), x)
end

function FP_BN254CX_copy(y, x)
    ccall((:FP_BN254CX_copy, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), y, x)
end

function FP_BN254CX_rcopy(y, x)
    ccall((:FP_BN254CX_rcopy, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, BIG_256_56), y, x)
end

function FP_BN254CX_equals(x, y)
    ccall((:FP_BN254CX_equals, libamcl_curve_BN254CX), Cint, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, y)
end

function FP_BN254CX_cswap(x, y, s)
    ccall((:FP_BN254CX_cswap, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}, Cint), x, y, s)
end

function FP_BN254CX_cmove(x, y, s)
    ccall((:FP_BN254CX_cmove, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}, Cint), x, y, s)
end

function FP_BN254CX_nres(y, x)
    ccall((:FP_BN254CX_nres, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, BIG_256_56), y, x)
end

function FP_BN254CX_redc(x, y)
    ccall((:FP_BN254CX_redc, libamcl_curve_BN254CX), Cvoid, (BIG_256_56, Ptr{FP_BN254CX}), x, y)
end

function FP_BN254CX_one(x)
    ccall((:FP_BN254CX_one, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX},), x)
end

function FP_BN254CX_mod(r, d)
    ccall((:FP_BN254CX_mod, libamcl_curve_BN254CX), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_BN254CX_mul(x, y, z)
    ccall((:FP_BN254CX_mul, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, y, z)
end

function FP_BN254CX_imul(x, y, i)
    ccall((:FP_BN254CX_imul, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}, Cint), x, y, i)
end

function FP_BN254CX_sqr(x, y)
    ccall((:FP_BN254CX_sqr, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, y)
end

function FP_BN254CX_add(x, y, z)
    ccall((:FP_BN254CX_add, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, y, z)
end

function FP_BN254CX_sub(x, y, z)
    ccall((:FP_BN254CX_sub, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, y, z)
end

function FP_BN254CX_div2(x, y)
    ccall((:FP_BN254CX_div2, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, y)
end

function FP_BN254CX_pow(x, y, z)
    ccall((:FP_BN254CX_pow, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}, BIG_256_56), x, y, z)
end

function FP_BN254CX_sqrt(x, y)
    ccall((:FP_BN254CX_sqrt, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, y)
end

function FP_BN254CX_neg(x, y)
    ccall((:FP_BN254CX_neg, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, y)
end

function FP_BN254CX_output(x)
    ccall((:FP_BN254CX_output, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX},), x)
end

function FP_BN254CX_rawoutput(x)
    ccall((:FP_BN254CX_rawoutput, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX},), x)
end

function FP_BN254CX_reduce(x)
    ccall((:FP_BN254CX_reduce, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX},), x)
end

function FP_BN254CX_norm(x)
    ccall((:FP_BN254CX_norm, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX},), x)
end

function FP_BN254CX_qr(x)
    ccall((:FP_BN254CX_qr, libamcl_curve_BN254CX), Cint, (Ptr{FP_BN254CX},), x)
end

function FP_BN254CX_inv(x, y)
    ccall((:FP_BN254CX_inv, libamcl_curve_BN254CX), Cvoid, (Ptr{FP_BN254CX}, Ptr{FP_BN254CX}), x, y)
end
# Julia wrapper for header: fp_BRAINPOOL.h
# Automatically generated using Clang.jl


function FP_BRAINPOOL_iszilch(x)
    ccall((:FP_BRAINPOOL_iszilch, libamcl_curve_BRAINPOOL), Cint, (Ptr{FP_BRAINPOOL},), x)
end

function FP_BRAINPOOL_zero(x)
    ccall((:FP_BRAINPOOL_zero, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL},), x)
end

function FP_BRAINPOOL_copy(y, x)
    ccall((:FP_BRAINPOOL_copy, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), y, x)
end

function FP_BRAINPOOL_rcopy(y, x)
    ccall((:FP_BRAINPOOL_rcopy, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, BIG_256_56), y, x)
end

function FP_BRAINPOOL_equals(x, y)
    ccall((:FP_BRAINPOOL_equals, libamcl_curve_BRAINPOOL), Cint, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), x, y)
end

function FP_BRAINPOOL_cswap(x, y, s)
    ccall((:FP_BRAINPOOL_cswap, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}, Cint), x, y, s)
end

function FP_BRAINPOOL_cmove(x, y, s)
    ccall((:FP_BRAINPOOL_cmove, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}, Cint), x, y, s)
end

function FP_BRAINPOOL_nres(y, x)
    ccall((:FP_BRAINPOOL_nres, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, BIG_256_56), y, x)
end

function FP_BRAINPOOL_redc(x, y)
    ccall((:FP_BRAINPOOL_redc, libamcl_curve_BRAINPOOL), Cvoid, (BIG_256_56, Ptr{FP_BRAINPOOL}), x, y)
end

function FP_BRAINPOOL_one(x)
    ccall((:FP_BRAINPOOL_one, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL},), x)
end

function FP_BRAINPOOL_mod(r, d)
    ccall((:FP_BRAINPOOL_mod, libamcl_curve_BRAINPOOL), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_BRAINPOOL_mul(x, y, z)
    ccall((:FP_BRAINPOOL_mul, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), x, y, z)
end

function FP_BRAINPOOL_imul(x, y, i)
    ccall((:FP_BRAINPOOL_imul, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}, Cint), x, y, i)
end

function FP_BRAINPOOL_sqr(x, y)
    ccall((:FP_BRAINPOOL_sqr, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), x, y)
end

function FP_BRAINPOOL_add(x, y, z)
    ccall((:FP_BRAINPOOL_add, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), x, y, z)
end

function FP_BRAINPOOL_sub(x, y, z)
    ccall((:FP_BRAINPOOL_sub, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), x, y, z)
end

function FP_BRAINPOOL_div2(x, y)
    ccall((:FP_BRAINPOOL_div2, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), x, y)
end

function FP_BRAINPOOL_pow(x, y, z)
    ccall((:FP_BRAINPOOL_pow, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}, BIG_256_56), x, y, z)
end

function FP_BRAINPOOL_sqrt(x, y)
    ccall((:FP_BRAINPOOL_sqrt, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), x, y)
end

function FP_BRAINPOOL_neg(x, y)
    ccall((:FP_BRAINPOOL_neg, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), x, y)
end

function FP_BRAINPOOL_output(x)
    ccall((:FP_BRAINPOOL_output, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL},), x)
end

function FP_BRAINPOOL_rawoutput(x)
    ccall((:FP_BRAINPOOL_rawoutput, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL},), x)
end

function FP_BRAINPOOL_reduce(x)
    ccall((:FP_BRAINPOOL_reduce, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL},), x)
end

function FP_BRAINPOOL_norm(x)
    ccall((:FP_BRAINPOOL_norm, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL},), x)
end

function FP_BRAINPOOL_qr(x)
    ccall((:FP_BRAINPOOL_qr, libamcl_curve_BRAINPOOL), Cint, (Ptr{FP_BRAINPOOL},), x)
end

function FP_BRAINPOOL_inv(x, y)
    ccall((:FP_BRAINPOOL_inv, libamcl_curve_BRAINPOOL), Cvoid, (Ptr{FP_BRAINPOOL}, Ptr{FP_BRAINPOOL}), x, y)
end
# Julia wrapper for header: fp_C41417.h
# Automatically generated using Clang.jl


function FP_C41417_iszilch(x)
    ccall((:FP_C41417_iszilch, libamcl_curve_C41417), Cint, (Ptr{FP_C41417},), x)
end

function FP_C41417_zero(x)
    ccall((:FP_C41417_zero, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417},), x)
end

function FP_C41417_copy(y, x)
    ccall((:FP_C41417_copy, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}), y, x)
end

function FP_C41417_rcopy(y, x)
    ccall((:FP_C41417_rcopy, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, BIG_416_60), y, x)
end

function FP_C41417_equals(x, y)
    ccall((:FP_C41417_equals, libamcl_curve_C41417), Cint, (Ptr{FP_C41417}, Ptr{FP_C41417}), x, y)
end

function FP_C41417_cswap(x, y, s)
    ccall((:FP_C41417_cswap, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}, Cint), x, y, s)
end

function FP_C41417_cmove(x, y, s)
    ccall((:FP_C41417_cmove, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}, Cint), x, y, s)
end

function FP_C41417_nres(y, x)
    ccall((:FP_C41417_nres, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, BIG_416_60), y, x)
end

function FP_C41417_redc(x, y)
    ccall((:FP_C41417_redc, libamcl_curve_C41417), Cvoid, (BIG_416_60, Ptr{FP_C41417}), x, y)
end

function FP_C41417_one(x)
    ccall((:FP_C41417_one, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417},), x)
end

function FP_C41417_mod(r, d)
    ccall((:FP_C41417_mod, libamcl_curve_C41417), Cvoid, (BIG_416_60, DBIG_416_60), r, d)
end

function FP_C41417_mul(x, y, z)
    ccall((:FP_C41417_mul, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}, Ptr{FP_C41417}), x, y, z)
end

function FP_C41417_imul(x, y, i)
    ccall((:FP_C41417_imul, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}, Cint), x, y, i)
end

function FP_C41417_sqr(x, y)
    ccall((:FP_C41417_sqr, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}), x, y)
end

function FP_C41417_add(x, y, z)
    ccall((:FP_C41417_add, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}, Ptr{FP_C41417}), x, y, z)
end

function FP_C41417_sub(x, y, z)
    ccall((:FP_C41417_sub, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}, Ptr{FP_C41417}), x, y, z)
end

function FP_C41417_div2(x, y)
    ccall((:FP_C41417_div2, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}), x, y)
end

function FP_C41417_pow(x, y, z)
    ccall((:FP_C41417_pow, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}, BIG_416_60), x, y, z)
end

function FP_C41417_sqrt(x, y)
    ccall((:FP_C41417_sqrt, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}), x, y)
end

function FP_C41417_neg(x, y)
    ccall((:FP_C41417_neg, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}), x, y)
end

function FP_C41417_output(x)
    ccall((:FP_C41417_output, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417},), x)
end

function FP_C41417_rawoutput(x)
    ccall((:FP_C41417_rawoutput, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417},), x)
end

function FP_C41417_reduce(x)
    ccall((:FP_C41417_reduce, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417},), x)
end

function FP_C41417_norm(x)
    ccall((:FP_C41417_norm, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417},), x)
end

function FP_C41417_qr(x)
    ccall((:FP_C41417_qr, libamcl_curve_C41417), Cint, (Ptr{FP_C41417},), x)
end

function FP_C41417_inv(x, y)
    ccall((:FP_C41417_inv, libamcl_curve_C41417), Cvoid, (Ptr{FP_C41417}, Ptr{FP_C41417}), x, y)
end
# Julia wrapper for header: fp_FP256BN.h
# Automatically generated using Clang.jl


function FP_FP256BN_iszilch(x)
    ccall((:FP_FP256BN_iszilch, libamcl_curve_FP256BN), Cint, (Ptr{FP_FP256BN},), x)
end

function FP_FP256BN_zero(x)
    ccall((:FP_FP256BN_zero, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN},), x)
end

function FP_FP256BN_copy(y, x)
    ccall((:FP_FP256BN_copy, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), y, x)
end

function FP_FP256BN_rcopy(y, x)
    ccall((:FP_FP256BN_rcopy, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, BIG_256_56), y, x)
end

function FP_FP256BN_equals(x, y)
    ccall((:FP_FP256BN_equals, libamcl_curve_FP256BN), Cint, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, y)
end

function FP_FP256BN_cswap(x, y, s)
    ccall((:FP_FP256BN_cswap, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}, Cint), x, y, s)
end

function FP_FP256BN_cmove(x, y, s)
    ccall((:FP_FP256BN_cmove, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}, Cint), x, y, s)
end

function FP_FP256BN_nres(y, x)
    ccall((:FP_FP256BN_nres, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, BIG_256_56), y, x)
end

function FP_FP256BN_redc(x, y)
    ccall((:FP_FP256BN_redc, libamcl_curve_FP256BN), Cvoid, (BIG_256_56, Ptr{FP_FP256BN}), x, y)
end

function FP_FP256BN_one(x)
    ccall((:FP_FP256BN_one, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN},), x)
end

function FP_FP256BN_mod(r, d)
    ccall((:FP_FP256BN_mod, libamcl_curve_FP256BN), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_FP256BN_mul(x, y, z)
    ccall((:FP_FP256BN_mul, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, y, z)
end

function FP_FP256BN_imul(x, y, i)
    ccall((:FP_FP256BN_imul, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}, Cint), x, y, i)
end

function FP_FP256BN_sqr(x, y)
    ccall((:FP_FP256BN_sqr, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, y)
end

function FP_FP256BN_add(x, y, z)
    ccall((:FP_FP256BN_add, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, y, z)
end

function FP_FP256BN_sub(x, y, z)
    ccall((:FP_FP256BN_sub, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, y, z)
end

function FP_FP256BN_div2(x, y)
    ccall((:FP_FP256BN_div2, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, y)
end

function FP_FP256BN_pow(x, y, z)
    ccall((:FP_FP256BN_pow, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}, BIG_256_56), x, y, z)
end

function FP_FP256BN_sqrt(x, y)
    ccall((:FP_FP256BN_sqrt, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, y)
end

function FP_FP256BN_neg(x, y)
    ccall((:FP_FP256BN_neg, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, y)
end

function FP_FP256BN_output(x)
    ccall((:FP_FP256BN_output, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN},), x)
end

function FP_FP256BN_rawoutput(x)
    ccall((:FP_FP256BN_rawoutput, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN},), x)
end

function FP_FP256BN_reduce(x)
    ccall((:FP_FP256BN_reduce, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN},), x)
end

function FP_FP256BN_norm(x)
    ccall((:FP_FP256BN_norm, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN},), x)
end

function FP_FP256BN_qr(x)
    ccall((:FP_FP256BN_qr, libamcl_curve_FP256BN), Cint, (Ptr{FP_FP256BN},), x)
end

function FP_FP256BN_inv(x, y)
    ccall((:FP_FP256BN_inv, libamcl_curve_FP256BN), Cvoid, (Ptr{FP_FP256BN}, Ptr{FP_FP256BN}), x, y)
end
# Julia wrapper for header: fp_FP512BN.h
# Automatically generated using Clang.jl


function FP_FP512BN_iszilch(x)
    ccall((:FP_FP512BN_iszilch, libamcl_curve_FP512BN), Cint, (Ptr{FP_FP512BN},), x)
end

function FP_FP512BN_zero(x)
    ccall((:FP_FP512BN_zero, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN},), x)
end

function FP_FP512BN_copy(y, x)
    ccall((:FP_FP512BN_copy, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), y, x)
end

function FP_FP512BN_rcopy(y, x)
    ccall((:FP_FP512BN_rcopy, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, BIG_512_60), y, x)
end

function FP_FP512BN_equals(x, y)
    ccall((:FP_FP512BN_equals, libamcl_curve_FP512BN), Cint, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, y)
end

function FP_FP512BN_cswap(x, y, s)
    ccall((:FP_FP512BN_cswap, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}, Cint), x, y, s)
end

function FP_FP512BN_cmove(x, y, s)
    ccall((:FP_FP512BN_cmove, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}, Cint), x, y, s)
end

function FP_FP512BN_nres(y, x)
    ccall((:FP_FP512BN_nres, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, BIG_512_60), y, x)
end

function FP_FP512BN_redc(x, y)
    ccall((:FP_FP512BN_redc, libamcl_curve_FP512BN), Cvoid, (BIG_512_60, Ptr{FP_FP512BN}), x, y)
end

function FP_FP512BN_one(x)
    ccall((:FP_FP512BN_one, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN},), x)
end

function FP_FP512BN_mod(r, d)
    ccall((:FP_FP512BN_mod, libamcl_curve_FP512BN), Cvoid, (BIG_512_60, DBIG_512_60), r, d)
end

function FP_FP512BN_mul(x, y, z)
    ccall((:FP_FP512BN_mul, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, y, z)
end

function FP_FP512BN_imul(x, y, i)
    ccall((:FP_FP512BN_imul, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}, Cint), x, y, i)
end

function FP_FP512BN_sqr(x, y)
    ccall((:FP_FP512BN_sqr, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, y)
end

function FP_FP512BN_add(x, y, z)
    ccall((:FP_FP512BN_add, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, y, z)
end

function FP_FP512BN_sub(x, y, z)
    ccall((:FP_FP512BN_sub, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, y, z)
end

function FP_FP512BN_div2(x, y)
    ccall((:FP_FP512BN_div2, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, y)
end

function FP_FP512BN_pow(x, y, z)
    ccall((:FP_FP512BN_pow, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}, BIG_512_60), x, y, z)
end

function FP_FP512BN_sqrt(x, y)
    ccall((:FP_FP512BN_sqrt, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, y)
end

function FP_FP512BN_neg(x, y)
    ccall((:FP_FP512BN_neg, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, y)
end

function FP_FP512BN_output(x)
    ccall((:FP_FP512BN_output, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN},), x)
end

function FP_FP512BN_rawoutput(x)
    ccall((:FP_FP512BN_rawoutput, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN},), x)
end

function FP_FP512BN_reduce(x)
    ccall((:FP_FP512BN_reduce, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN},), x)
end

function FP_FP512BN_norm(x)
    ccall((:FP_FP512BN_norm, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN},), x)
end

function FP_FP512BN_qr(x)
    ccall((:FP_FP512BN_qr, libamcl_curve_FP512BN), Cint, (Ptr{FP_FP512BN},), x)
end

function FP_FP512BN_inv(x, y)
    ccall((:FP_FP512BN_inv, libamcl_curve_FP512BN), Cvoid, (Ptr{FP_FP512BN}, Ptr{FP_FP512BN}), x, y)
end
# Julia wrapper for header: fp_GOLDILOCKS.h
# Automatically generated using Clang.jl


function FP_GOLDILOCKS_iszilch(x)
    ccall((:FP_GOLDILOCKS_iszilch, libamcl_curve_GOLDILOCKS), Cint, (Ptr{FP_GOLDILOCKS},), x)
end

function FP_GOLDILOCKS_zero(x)
    ccall((:FP_GOLDILOCKS_zero, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS},), x)
end

function FP_GOLDILOCKS_copy(y, x)
    ccall((:FP_GOLDILOCKS_copy, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), y, x)
end

function FP_GOLDILOCKS_rcopy(y, x)
    ccall((:FP_GOLDILOCKS_rcopy, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, BIG_448_58), y, x)
end

function FP_GOLDILOCKS_equals(x, y)
    ccall((:FP_GOLDILOCKS_equals, libamcl_curve_GOLDILOCKS), Cint, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), x, y)
end

function FP_GOLDILOCKS_cswap(x, y, s)
    ccall((:FP_GOLDILOCKS_cswap, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}, Cint), x, y, s)
end

function FP_GOLDILOCKS_cmove(x, y, s)
    ccall((:FP_GOLDILOCKS_cmove, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}, Cint), x, y, s)
end

function FP_GOLDILOCKS_nres(y, x)
    ccall((:FP_GOLDILOCKS_nres, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, BIG_448_58), y, x)
end

function FP_GOLDILOCKS_redc(x, y)
    ccall((:FP_GOLDILOCKS_redc, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, Ptr{FP_GOLDILOCKS}), x, y)
end

function FP_GOLDILOCKS_one(x)
    ccall((:FP_GOLDILOCKS_one, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS},), x)
end

function FP_GOLDILOCKS_mod(r, d)
    ccall((:FP_GOLDILOCKS_mod, libamcl_curve_GOLDILOCKS), Cvoid, (BIG_448_58, DBIG_448_58), r, d)
end

function FP_GOLDILOCKS_mul(x, y, z)
    ccall((:FP_GOLDILOCKS_mul, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), x, y, z)
end

function FP_GOLDILOCKS_imul(x, y, i)
    ccall((:FP_GOLDILOCKS_imul, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}, Cint), x, y, i)
end

function FP_GOLDILOCKS_sqr(x, y)
    ccall((:FP_GOLDILOCKS_sqr, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), x, y)
end

function FP_GOLDILOCKS_add(x, y, z)
    ccall((:FP_GOLDILOCKS_add, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), x, y, z)
end

function FP_GOLDILOCKS_sub(x, y, z)
    ccall((:FP_GOLDILOCKS_sub, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), x, y, z)
end

function FP_GOLDILOCKS_div2(x, y)
    ccall((:FP_GOLDILOCKS_div2, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), x, y)
end

function FP_GOLDILOCKS_pow(x, y, z)
    ccall((:FP_GOLDILOCKS_pow, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}, BIG_448_58), x, y, z)
end

function FP_GOLDILOCKS_sqrt(x, y)
    ccall((:FP_GOLDILOCKS_sqrt, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), x, y)
end

function FP_GOLDILOCKS_neg(x, y)
    ccall((:FP_GOLDILOCKS_neg, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), x, y)
end

function FP_GOLDILOCKS_output(x)
    ccall((:FP_GOLDILOCKS_output, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS},), x)
end

function FP_GOLDILOCKS_rawoutput(x)
    ccall((:FP_GOLDILOCKS_rawoutput, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS},), x)
end

function FP_GOLDILOCKS_reduce(x)
    ccall((:FP_GOLDILOCKS_reduce, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS},), x)
end

function FP_GOLDILOCKS_norm(x)
    ccall((:FP_GOLDILOCKS_norm, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS},), x)
end

function FP_GOLDILOCKS_qr(x)
    ccall((:FP_GOLDILOCKS_qr, libamcl_curve_GOLDILOCKS), Cint, (Ptr{FP_GOLDILOCKS},), x)
end

function FP_GOLDILOCKS_inv(x, y)
    ccall((:FP_GOLDILOCKS_inv, libamcl_curve_GOLDILOCKS), Cvoid, (Ptr{FP_GOLDILOCKS}, Ptr{FP_GOLDILOCKS}), x, y)
end
# Julia wrapper for header: fp_HIFIVE.h
# Automatically generated using Clang.jl


function FP_HIFIVE_iszilch(x)
    ccall((:FP_HIFIVE_iszilch, libamcl_curve_HIFIVE), Cint, (Ptr{FP_HIFIVE},), x)
end

function FP_HIFIVE_zero(x)
    ccall((:FP_HIFIVE_zero, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE},), x)
end

function FP_HIFIVE_copy(y, x)
    ccall((:FP_HIFIVE_copy, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), y, x)
end

function FP_HIFIVE_rcopy(y, x)
    ccall((:FP_HIFIVE_rcopy, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, BIG_336_60), y, x)
end

function FP_HIFIVE_equals(x, y)
    ccall((:FP_HIFIVE_equals, libamcl_curve_HIFIVE), Cint, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), x, y)
end

function FP_HIFIVE_cswap(x, y, s)
    ccall((:FP_HIFIVE_cswap, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}, Cint), x, y, s)
end

function FP_HIFIVE_cmove(x, y, s)
    ccall((:FP_HIFIVE_cmove, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}, Cint), x, y, s)
end

function FP_HIFIVE_nres(y, x)
    ccall((:FP_HIFIVE_nres, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, BIG_336_60), y, x)
end

function FP_HIFIVE_redc(x, y)
    ccall((:FP_HIFIVE_redc, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, Ptr{FP_HIFIVE}), x, y)
end

function FP_HIFIVE_one(x)
    ccall((:FP_HIFIVE_one, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE},), x)
end

function FP_HIFIVE_mod(r, d)
    ccall((:FP_HIFIVE_mod, libamcl_curve_HIFIVE), Cvoid, (BIG_336_60, DBIG_336_60), r, d)
end

function FP_HIFIVE_mul(x, y, z)
    ccall((:FP_HIFIVE_mul, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), x, y, z)
end

function FP_HIFIVE_imul(x, y, i)
    ccall((:FP_HIFIVE_imul, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}, Cint), x, y, i)
end

function FP_HIFIVE_sqr(x, y)
    ccall((:FP_HIFIVE_sqr, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), x, y)
end

function FP_HIFIVE_add(x, y, z)
    ccall((:FP_HIFIVE_add, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), x, y, z)
end

function FP_HIFIVE_sub(x, y, z)
    ccall((:FP_HIFIVE_sub, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), x, y, z)
end

function FP_HIFIVE_div2(x, y)
    ccall((:FP_HIFIVE_div2, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), x, y)
end

function FP_HIFIVE_pow(x, y, z)
    ccall((:FP_HIFIVE_pow, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}, BIG_336_60), x, y, z)
end

function FP_HIFIVE_sqrt(x, y)
    ccall((:FP_HIFIVE_sqrt, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), x, y)
end

function FP_HIFIVE_neg(x, y)
    ccall((:FP_HIFIVE_neg, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), x, y)
end

function FP_HIFIVE_output(x)
    ccall((:FP_HIFIVE_output, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE},), x)
end

function FP_HIFIVE_rawoutput(x)
    ccall((:FP_HIFIVE_rawoutput, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE},), x)
end

function FP_HIFIVE_reduce(x)
    ccall((:FP_HIFIVE_reduce, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE},), x)
end

function FP_HIFIVE_norm(x)
    ccall((:FP_HIFIVE_norm, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE},), x)
end

function FP_HIFIVE_qr(x)
    ccall((:FP_HIFIVE_qr, libamcl_curve_HIFIVE), Cint, (Ptr{FP_HIFIVE},), x)
end

function FP_HIFIVE_inv(x, y)
    ccall((:FP_HIFIVE_inv, libamcl_curve_HIFIVE), Cvoid, (Ptr{FP_HIFIVE}, Ptr{FP_HIFIVE}), x, y)
end
# Julia wrapper for header: fp_NIST256.h
# Automatically generated using Clang.jl


function FP_NIST256_iszilch(x)
    ccall((:FP_NIST256_iszilch, libamcl_curve_NIST256), Cint, (Ptr{FP_NIST256},), x)
end

function FP_NIST256_zero(x)
    ccall((:FP_NIST256_zero, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256},), x)
end

function FP_NIST256_copy(y, x)
    ccall((:FP_NIST256_copy, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}), y, x)
end

function FP_NIST256_rcopy(y, x)
    ccall((:FP_NIST256_rcopy, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, BIG_256_56), y, x)
end

function FP_NIST256_equals(x, y)
    ccall((:FP_NIST256_equals, libamcl_curve_NIST256), Cint, (Ptr{FP_NIST256}, Ptr{FP_NIST256}), x, y)
end

function FP_NIST256_cswap(x, y, s)
    ccall((:FP_NIST256_cswap, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}, Cint), x, y, s)
end

function FP_NIST256_cmove(x, y, s)
    ccall((:FP_NIST256_cmove, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}, Cint), x, y, s)
end

function FP_NIST256_nres(y, x)
    ccall((:FP_NIST256_nres, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, BIG_256_56), y, x)
end

function FP_NIST256_redc(x, y)
    ccall((:FP_NIST256_redc, libamcl_curve_NIST256), Cvoid, (BIG_256_56, Ptr{FP_NIST256}), x, y)
end

function FP_NIST256_one(x)
    ccall((:FP_NIST256_one, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256},), x)
end

function FP_NIST256_mod(r, d)
    ccall((:FP_NIST256_mod, libamcl_curve_NIST256), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_NIST256_mul(x, y, z)
    ccall((:FP_NIST256_mul, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}, Ptr{FP_NIST256}), x, y, z)
end

function FP_NIST256_imul(x, y, i)
    ccall((:FP_NIST256_imul, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}, Cint), x, y, i)
end

function FP_NIST256_sqr(x, y)
    ccall((:FP_NIST256_sqr, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}), x, y)
end

function FP_NIST256_add(x, y, z)
    ccall((:FP_NIST256_add, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}, Ptr{FP_NIST256}), x, y, z)
end

function FP_NIST256_sub(x, y, z)
    ccall((:FP_NIST256_sub, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}, Ptr{FP_NIST256}), x, y, z)
end

function FP_NIST256_div2(x, y)
    ccall((:FP_NIST256_div2, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}), x, y)
end

function FP_NIST256_pow(x, y, z)
    ccall((:FP_NIST256_pow, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}, BIG_256_56), x, y, z)
end

function FP_NIST256_sqrt(x, y)
    ccall((:FP_NIST256_sqrt, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}), x, y)
end

function FP_NIST256_neg(x, y)
    ccall((:FP_NIST256_neg, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}), x, y)
end

function FP_NIST256_output(x)
    ccall((:FP_NIST256_output, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256},), x)
end

function FP_NIST256_rawoutput(x)
    ccall((:FP_NIST256_rawoutput, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256},), x)
end

function FP_NIST256_reduce(x)
    ccall((:FP_NIST256_reduce, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256},), x)
end

function FP_NIST256_norm(x)
    ccall((:FP_NIST256_norm, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256},), x)
end

function FP_NIST256_qr(x)
    ccall((:FP_NIST256_qr, libamcl_curve_NIST256), Cint, (Ptr{FP_NIST256},), x)
end

function FP_NIST256_inv(x, y)
    ccall((:FP_NIST256_inv, libamcl_curve_NIST256), Cvoid, (Ptr{FP_NIST256}, Ptr{FP_NIST256}), x, y)
end
# Julia wrapper for header: fp_NIST384.h
# Automatically generated using Clang.jl


function FP_NIST384_iszilch(x)
    ccall((:FP_NIST384_iszilch, libamcl_curve_NIST384), Cint, (Ptr{FP_NIST384},), x)
end

function FP_NIST384_zero(x)
    ccall((:FP_NIST384_zero, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384},), x)
end

function FP_NIST384_copy(y, x)
    ccall((:FP_NIST384_copy, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}), y, x)
end

function FP_NIST384_rcopy(y, x)
    ccall((:FP_NIST384_rcopy, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, BIG_384_56), y, x)
end

function FP_NIST384_equals(x, y)
    ccall((:FP_NIST384_equals, libamcl_curve_NIST384), Cint, (Ptr{FP_NIST384}, Ptr{FP_NIST384}), x, y)
end

function FP_NIST384_cswap(x, y, s)
    ccall((:FP_NIST384_cswap, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}, Cint), x, y, s)
end

function FP_NIST384_cmove(x, y, s)
    ccall((:FP_NIST384_cmove, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}, Cint), x, y, s)
end

function FP_NIST384_nres(y, x)
    ccall((:FP_NIST384_nres, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, BIG_384_56), y, x)
end

function FP_NIST384_redc(x, y)
    ccall((:FP_NIST384_redc, libamcl_curve_NIST384), Cvoid, (BIG_384_56, Ptr{FP_NIST384}), x, y)
end

function FP_NIST384_one(x)
    ccall((:FP_NIST384_one, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384},), x)
end

function FP_NIST384_mod(r, d)
    ccall((:FP_NIST384_mod, libamcl_curve_NIST384), Cvoid, (BIG_384_56, DBIG_384_56), r, d)
end

function FP_NIST384_mul(x, y, z)
    ccall((:FP_NIST384_mul, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}, Ptr{FP_NIST384}), x, y, z)
end

function FP_NIST384_imul(x, y, i)
    ccall((:FP_NIST384_imul, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}, Cint), x, y, i)
end

function FP_NIST384_sqr(x, y)
    ccall((:FP_NIST384_sqr, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}), x, y)
end

function FP_NIST384_add(x, y, z)
    ccall((:FP_NIST384_add, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}, Ptr{FP_NIST384}), x, y, z)
end

function FP_NIST384_sub(x, y, z)
    ccall((:FP_NIST384_sub, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}, Ptr{FP_NIST384}), x, y, z)
end

function FP_NIST384_div2(x, y)
    ccall((:FP_NIST384_div2, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}), x, y)
end

function FP_NIST384_pow(x, y, z)
    ccall((:FP_NIST384_pow, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}, BIG_384_56), x, y, z)
end

function FP_NIST384_sqrt(x, y)
    ccall((:FP_NIST384_sqrt, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}), x, y)
end

function FP_NIST384_neg(x, y)
    ccall((:FP_NIST384_neg, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}), x, y)
end

function FP_NIST384_output(x)
    ccall((:FP_NIST384_output, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384},), x)
end

function FP_NIST384_rawoutput(x)
    ccall((:FP_NIST384_rawoutput, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384},), x)
end

function FP_NIST384_reduce(x)
    ccall((:FP_NIST384_reduce, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384},), x)
end

function FP_NIST384_norm(x)
    ccall((:FP_NIST384_norm, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384},), x)
end

function FP_NIST384_qr(x)
    ccall((:FP_NIST384_qr, libamcl_curve_NIST384), Cint, (Ptr{FP_NIST384},), x)
end

function FP_NIST384_inv(x, y)
    ccall((:FP_NIST384_inv, libamcl_curve_NIST384), Cvoid, (Ptr{FP_NIST384}, Ptr{FP_NIST384}), x, y)
end
# Julia wrapper for header: fp_NIST521.h
# Automatically generated using Clang.jl


function FP_NIST521_iszilch(x)
    ccall((:FP_NIST521_iszilch, libamcl_curve_NIST521), Cint, (Ptr{FP_NIST521},), x)
end

function FP_NIST521_zero(x)
    ccall((:FP_NIST521_zero, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521},), x)
end

function FP_NIST521_copy(y, x)
    ccall((:FP_NIST521_copy, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}), y, x)
end

function FP_NIST521_rcopy(y, x)
    ccall((:FP_NIST521_rcopy, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, BIG_528_60), y, x)
end

function FP_NIST521_equals(x, y)
    ccall((:FP_NIST521_equals, libamcl_curve_NIST521), Cint, (Ptr{FP_NIST521}, Ptr{FP_NIST521}), x, y)
end

function FP_NIST521_cswap(x, y, s)
    ccall((:FP_NIST521_cswap, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}, Cint), x, y, s)
end

function FP_NIST521_cmove(x, y, s)
    ccall((:FP_NIST521_cmove, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}, Cint), x, y, s)
end

function FP_NIST521_nres(y, x)
    ccall((:FP_NIST521_nres, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, BIG_528_60), y, x)
end

function FP_NIST521_redc(x, y)
    ccall((:FP_NIST521_redc, libamcl_curve_NIST521), Cvoid, (BIG_528_60, Ptr{FP_NIST521}), x, y)
end

function FP_NIST521_one(x)
    ccall((:FP_NIST521_one, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521},), x)
end

function FP_NIST521_mod(r, d)
    ccall((:FP_NIST521_mod, libamcl_curve_NIST521), Cvoid, (BIG_528_60, DBIG_528_60), r, d)
end

function FP_NIST521_mul(x, y, z)
    ccall((:FP_NIST521_mul, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}, Ptr{FP_NIST521}), x, y, z)
end

function FP_NIST521_imul(x, y, i)
    ccall((:FP_NIST521_imul, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}, Cint), x, y, i)
end

function FP_NIST521_sqr(x, y)
    ccall((:FP_NIST521_sqr, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}), x, y)
end

function FP_NIST521_add(x, y, z)
    ccall((:FP_NIST521_add, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}, Ptr{FP_NIST521}), x, y, z)
end

function FP_NIST521_sub(x, y, z)
    ccall((:FP_NIST521_sub, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}, Ptr{FP_NIST521}), x, y, z)
end

function FP_NIST521_div2(x, y)
    ccall((:FP_NIST521_div2, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}), x, y)
end

function FP_NIST521_pow(x, y, z)
    ccall((:FP_NIST521_pow, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}, BIG_528_60), x, y, z)
end

function FP_NIST521_sqrt(x, y)
    ccall((:FP_NIST521_sqrt, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}), x, y)
end

function FP_NIST521_neg(x, y)
    ccall((:FP_NIST521_neg, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}), x, y)
end

function FP_NIST521_output(x)
    ccall((:FP_NIST521_output, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521},), x)
end

function FP_NIST521_rawoutput(x)
    ccall((:FP_NIST521_rawoutput, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521},), x)
end

function FP_NIST521_reduce(x)
    ccall((:FP_NIST521_reduce, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521},), x)
end

function FP_NIST521_norm(x)
    ccall((:FP_NIST521_norm, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521},), x)
end

function FP_NIST521_qr(x)
    ccall((:FP_NIST521_qr, libamcl_curve_NIST521), Cint, (Ptr{FP_NIST521},), x)
end

function FP_NIST521_inv(x, y)
    ccall((:FP_NIST521_inv, libamcl_curve_NIST521), Cvoid, (Ptr{FP_NIST521}, Ptr{FP_NIST521}), x, y)
end
# Julia wrapper for header: fp_SECP256K1.h
# Automatically generated using Clang.jl


function FP_SECP256K1_iszilch(x)
    ccall((:FP_SECP256K1_iszilch, libamcl_curve_SECP256K1), Cint, (Ptr{FP_SECP256K1},), x)
end

function FP_SECP256K1_zero(x)
    ccall((:FP_SECP256K1_zero, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1},), x)
end

function FP_SECP256K1_copy(y, x)
    ccall((:FP_SECP256K1_copy, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), y, x)
end

function FP_SECP256K1_rcopy(y, x)
    ccall((:FP_SECP256K1_rcopy, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, BIG_256_56), y, x)
end

function FP_SECP256K1_equals(x, y)
    ccall((:FP_SECP256K1_equals, libamcl_curve_SECP256K1), Cint, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), x, y)
end

function FP_SECP256K1_cswap(x, y, s)
    ccall((:FP_SECP256K1_cswap, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}, Cint), x, y, s)
end

function FP_SECP256K1_cmove(x, y, s)
    ccall((:FP_SECP256K1_cmove, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}, Cint), x, y, s)
end

function FP_SECP256K1_nres(y, x)
    ccall((:FP_SECP256K1_nres, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, BIG_256_56), y, x)
end

function FP_SECP256K1_redc(x, y)
    ccall((:FP_SECP256K1_redc, libamcl_curve_SECP256K1), Cvoid, (BIG_256_56, Ptr{FP_SECP256K1}), x, y)
end

function FP_SECP256K1_one(x)
    ccall((:FP_SECP256K1_one, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1},), x)
end

function FP_SECP256K1_mod(r, d)
    ccall((:FP_SECP256K1_mod, libamcl_curve_SECP256K1), Cvoid, (BIG_256_56, DBIG_256_56), r, d)
end

function FP_SECP256K1_mul(x, y, z)
    ccall((:FP_SECP256K1_mul, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), x, y, z)
end

function FP_SECP256K1_imul(x, y, i)
    ccall((:FP_SECP256K1_imul, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}, Cint), x, y, i)
end

function FP_SECP256K1_sqr(x, y)
    ccall((:FP_SECP256K1_sqr, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), x, y)
end

function FP_SECP256K1_add(x, y, z)
    ccall((:FP_SECP256K1_add, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), x, y, z)
end

function FP_SECP256K1_sub(x, y, z)
    ccall((:FP_SECP256K1_sub, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), x, y, z)
end

function FP_SECP256K1_div2(x, y)
    ccall((:FP_SECP256K1_div2, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), x, y)
end

function FP_SECP256K1_pow(x, y, z)
    ccall((:FP_SECP256K1_pow, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}, BIG_256_56), x, y, z)
end

function FP_SECP256K1_sqrt(x, y)
    ccall((:FP_SECP256K1_sqrt, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), x, y)
end

function FP_SECP256K1_neg(x, y)
    ccall((:FP_SECP256K1_neg, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), x, y)
end

function FP_SECP256K1_output(x)
    ccall((:FP_SECP256K1_output, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1},), x)
end

function FP_SECP256K1_rawoutput(x)
    ccall((:FP_SECP256K1_rawoutput, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1},), x)
end

function FP_SECP256K1_reduce(x)
    ccall((:FP_SECP256K1_reduce, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1},), x)
end

function FP_SECP256K1_norm(x)
    ccall((:FP_SECP256K1_norm, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1},), x)
end

function FP_SECP256K1_qr(x)
    ccall((:FP_SECP256K1_qr, libamcl_curve_SECP256K1), Cint, (Ptr{FP_SECP256K1},), x)
end

function FP_SECP256K1_inv(x, y)
    ccall((:FP_SECP256K1_inv, libamcl_curve_SECP256K1), Cvoid, (Ptr{FP_SECP256K1}, Ptr{FP_SECP256K1}), x, y)
end
# Julia wrapper for header: mpin192_BLS24.h
# Automatically generated using Clang.jl


function MPIN_BLS24_GET_Y(h, t, O, Y)
    ccall((:MPIN_BLS24_GET_Y, libamcl_mpin_BLS24), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), h, t, O, Y)
end

function MPIN_BLS24_EXTRACT_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS24_EXTRACT_FACTOR, libamcl_mpin_BLS24), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS24_RESTORE_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS24_RESTORE_FACTOR, libamcl_mpin_BLS24), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS24_EXTRACT_PIN(h, ID, pin, CS)
    ccall((:MPIN_BLS24_EXTRACT_PIN, libamcl_mpin_BLS24), Cint, (Cint, Ptr{octet}, Cint, Ptr{octet}), h, ID, pin, CS)
end

function MPIN_BLS24_CLIENT(h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
    ccall((:MPIN_BLS24_CLIENT, libamcl_mpin_BLS24), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
end

function MPIN_BLS24_CLIENT_1(h, d, ID, R, x, pin, T, S, U, UT, TP)
    ccall((:MPIN_BLS24_CLIENT_1, libamcl_mpin_BLS24), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, R, x, pin, T, S, U, UT, TP)
end

function MPIN_BLS24_RANDOM_GENERATE(R, S)
    ccall((:MPIN_BLS24_RANDOM_GENERATE, libamcl_mpin_BLS24), Cint, (Ptr{csprng}, Ptr{octet}), R, S)
end

function MPIN_BLS24_CLIENT_2(x, y, V)
    ccall((:MPIN_BLS24_CLIENT_2, libamcl_mpin_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), x, y, V)
end

function MPIN_BLS24_SERVER(h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
    ccall((:MPIN_BLS24_SERVER, libamcl_mpin_BLS24), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
end

function MPIN_BLS24_SERVER_1(h, d, ID, HID, HTID)
    ccall((:MPIN_BLS24_SERVER_1, libamcl_mpin_BLS24), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, HID, HTID)
end

function MPIN_BLS24_SERVER_2(d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
    ccall((:MPIN_BLS24_SERVER_2, libamcl_mpin_BLS24), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
end

function MPIN_BLS24_RECOMBINE_G1(Q1, Q2, Q)
    ccall((:MPIN_BLS24_RECOMBINE_G1, libamcl_mpin_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), Q1, Q2, Q)
end

function MPIN_BLS24_RECOMBINE_G2(P1, P2, P)
    ccall((:MPIN_BLS24_RECOMBINE_G2, libamcl_mpin_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), P1, P2, P)
end

function MPIN_BLS24_KANGAROO(E, F)
    ccall((:MPIN_BLS24_KANGAROO, libamcl_mpin_BLS24), Cint, (Ptr{octet}, Ptr{octet}), E, F)
end

function MPIN_BLS24_ENCODING(R, TP)
    ccall((:MPIN_BLS24_ENCODING, libamcl_mpin_BLS24), Cint, (Ptr{csprng}, Ptr{octet}), R, TP)
end

function MPIN_BLS24_DECODING(TP)
    ccall((:MPIN_BLS24_DECODING, libamcl_mpin_BLS24), Cint, (Ptr{octet},), TP)
end

function MPIN_BLS24_GET_G1_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS24_GET_G1_MULTIPLE, libamcl_mpin_BLS24), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS24_GET_G2_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS24_GET_G2_MULTIPLE, libamcl_mpin_BLS24), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS24_GET_CLIENT_SECRET(S, ID, CS)
    ccall((:MPIN_BLS24_GET_CLIENT_SECRET, libamcl_mpin_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, ID, CS)
end

function MPIN_BLS24_GET_CLIENT_PERMIT(h, d, S, ID, TP)
    ccall((:MPIN_BLS24_GET_CLIENT_PERMIT, libamcl_mpin_BLS24), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, S, ID, TP)
end

function MPIN_BLS24_GET_SERVER_SECRET(S, SS)
    ccall((:MPIN_BLS24_GET_SERVER_SECRET, libamcl_mpin_BLS24), Cint, (Ptr{octet}, Ptr{octet}), S, SS)
end

function MPIN_BLS24_PRECOMPUTE(T, ID, CP, g1, g2)
    ccall((:MPIN_BLS24_PRECOMPUTE, libamcl_mpin_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), T, ID, CP, g1, g2)
end

function MPIN_BLS24_SERVER_KEY(h, Z, SS, w, p, I, U, UT, K)
    ccall((:MPIN_BLS24_SERVER_KEY, libamcl_mpin_BLS24), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, Z, SS, w, p, I, U, UT, K)
end

function MPIN_BLS24_CLIENT_KEY(h, g1, g2, pin, r, x, p, T, K)
    ccall((:MPIN_BLS24_CLIENT_KEY, libamcl_mpin_BLS24), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, g1, g2, pin, r, x, p, T, K)
end

function MPIN_BLS24_GET_DVS_KEYPAIR(R, Z, Pa)
    ccall((:MPIN_BLS24_GET_DVS_KEYPAIR, libamcl_mpin_BLS24), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, Z, Pa)
end
# Julia wrapper for header: mpin256_BLS48.h
# Automatically generated using Clang.jl


function MPIN_BLS48_GET_Y(h, t, O, Y)
    ccall((:MPIN_BLS48_GET_Y, libamcl_mpin256_BLS48), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), h, t, O, Y)
end

function MPIN_BLS48_EXTRACT_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS48_EXTRACT_FACTOR, libamcl_mpin256_BLS48), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS48_RESTORE_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS48_RESTORE_FACTOR, libamcl_mpin256_BLS48), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS48_EXTRACT_PIN(h, ID, pin, CS)
    ccall((:MPIN_BLS48_EXTRACT_PIN, libamcl_mpin256_BLS48), Cint, (Cint, Ptr{octet}, Cint, Ptr{octet}), h, ID, pin, CS)
end

function MPIN_BLS48_CLIENT(h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
    ccall((:MPIN_BLS48_CLIENT, libamcl_mpin256_BLS48), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
end

function MPIN_BLS48_CLIENT_1(h, d, ID, R, x, pin, T, S, U, UT, TP)
    ccall((:MPIN_BLS48_CLIENT_1, libamcl_mpin256_BLS48), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, R, x, pin, T, S, U, UT, TP)
end

function MPIN_BLS48_RANDOM_GENERATE(R, S)
    ccall((:MPIN_BLS48_RANDOM_GENERATE, libamcl_mpin256_BLS48), Cint, (Ptr{csprng}, Ptr{octet}), R, S)
end

function MPIN_BLS48_CLIENT_2(x, y, V)
    ccall((:MPIN_BLS48_CLIENT_2, libamcl_mpin256_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), x, y, V)
end

function MPIN_BLS48_SERVER(h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
    ccall((:MPIN_BLS48_SERVER, libamcl_mpin256_BLS48), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
end

function MPIN_BLS48_SERVER_1(h, d, ID, HID, HTID)
    ccall((:MPIN_BLS48_SERVER_1, libamcl_mpin256_BLS48), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, HID, HTID)
end

function MPIN_BLS48_SERVER_2(d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
    ccall((:MPIN_BLS48_SERVER_2, libamcl_mpin256_BLS48), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
end

function MPIN_BLS48_RECOMBINE_G1(Q1, Q2, Q)
    ccall((:MPIN_BLS48_RECOMBINE_G1, libamcl_mpin256_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), Q1, Q2, Q)
end

function MPIN_BLS48_RECOMBINE_G2(P1, P2, P)
    ccall((:MPIN_BLS48_RECOMBINE_G2, libamcl_mpin256_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), P1, P2, P)
end

function MPIN_BLS48_KANGAROO(E, F)
    ccall((:MPIN_BLS48_KANGAROO, libamcl_mpin256_BLS48), Cint, (Ptr{octet}, Ptr{octet}), E, F)
end

function MPIN_BLS48_ENCODING(R, TP)
    ccall((:MPIN_BLS48_ENCODING, libamcl_mpin256_BLS48), Cint, (Ptr{csprng}, Ptr{octet}), R, TP)
end

function MPIN_BLS48_DECODING(TP)
    ccall((:MPIN_BLS48_DECODING, libamcl_mpin256_BLS48), Cint, (Ptr{octet},), TP)
end

function MPIN_BLS48_GET_G1_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS48_GET_G1_MULTIPLE, libamcl_mpin256_BLS48), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS48_GET_G2_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS48_GET_G2_MULTIPLE, libamcl_mpin256_BLS48), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS48_GET_CLIENT_SECRET(S, ID, CS)
    ccall((:MPIN_BLS48_GET_CLIENT_SECRET, libamcl_mpin256_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, ID, CS)
end

function MPIN_BLS48_GET_CLIENT_PERMIT(h, d, S, ID, TP)
    ccall((:MPIN_BLS48_GET_CLIENT_PERMIT, libamcl_mpin256_BLS48), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, S, ID, TP)
end

function MPIN_BLS48_GET_SERVER_SECRET(S, SS)
    ccall((:MPIN_BLS48_GET_SERVER_SECRET, libamcl_mpin256_BLS48), Cint, (Ptr{octet}, Ptr{octet}), S, SS)
end

function MPIN_BLS48_PRECOMPUTE(T, ID, CP, g1, g2)
    ccall((:MPIN_BLS48_PRECOMPUTE, libamcl_mpin256_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), T, ID, CP, g1, g2)
end

function MPIN_BLS48_SERVER_KEY(h, Z, SS, w, p, I, U, UT, K)
    ccall((:MPIN_BLS48_SERVER_KEY, libamcl_mpin256_BLS48), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, Z, SS, w, p, I, U, UT, K)
end

function MPIN_BLS48_CLIENT_KEY(h, g1, g2, pin, r, x, p, T, K)
    ccall((:MPIN_BLS48_CLIENT_KEY, libamcl_mpin256_BLS48), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, g1, g2, pin, r, x, p, T, K)
end

function MPIN_BLS48_GET_DVS_KEYPAIR(R, Z, Pa)
    ccall((:MPIN_BLS48_GET_DVS_KEYPAIR, libamcl_mpin256_BLS48), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, Z, Pa)
end
# Julia wrapper for header: mpin_BLS381.h
# Automatically generated using Clang.jl


function MPIN_BLS381_GET_Y(h, t, O, Y)
    ccall((:MPIN_BLS381_GET_Y, libamcl_mpin_BLS381), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), h, t, O, Y)
end

function MPIN_BLS381_EXTRACT_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS381_EXTRACT_FACTOR, libamcl_mpin_BLS381), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS381_RESTORE_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS381_RESTORE_FACTOR, libamcl_mpin_BLS381), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS381_EXTRACT_PIN(h, ID, pin, CS)
    ccall((:MPIN_BLS381_EXTRACT_PIN, libamcl_mpin_BLS381), Cint, (Cint, Ptr{octet}, Cint, Ptr{octet}), h, ID, pin, CS)
end

function MPIN_BLS381_CLIENT(h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
    ccall((:MPIN_BLS381_CLIENT, libamcl_mpin_BLS381), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
end

function MPIN_BLS381_CLIENT_1(h, d, ID, R, x, pin, T, S, U, UT, TP)
    ccall((:MPIN_BLS381_CLIENT_1, libamcl_mpin_BLS381), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, R, x, pin, T, S, U, UT, TP)
end

function MPIN_BLS381_RANDOM_GENERATE(R, S)
    ccall((:MPIN_BLS381_RANDOM_GENERATE, libamcl_mpin_BLS381), Cint, (Ptr{csprng}, Ptr{octet}), R, S)
end

function MPIN_BLS381_CLIENT_2(x, y, V)
    ccall((:MPIN_BLS381_CLIENT_2, libamcl_mpin_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), x, y, V)
end

function MPIN_BLS381_SERVER(h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
    ccall((:MPIN_BLS381_SERVER, libamcl_mpin_BLS381), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
end

function MPIN_BLS381_SERVER_1(h, d, ID, HID, HTID)
    ccall((:MPIN_BLS381_SERVER_1, libamcl_mpin_BLS381), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, HID, HTID)
end

function MPIN_BLS381_SERVER_2(d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
    ccall((:MPIN_BLS381_SERVER_2, libamcl_mpin_BLS381), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
end

function MPIN_BLS381_RECOMBINE_G1(Q1, Q2, Q)
    ccall((:MPIN_BLS381_RECOMBINE_G1, libamcl_mpin_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), Q1, Q2, Q)
end

function MPIN_BLS381_RECOMBINE_G2(P1, P2, P)
    ccall((:MPIN_BLS381_RECOMBINE_G2, libamcl_mpin_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), P1, P2, P)
end

function MPIN_BLS381_KANGAROO(E, F)
    ccall((:MPIN_BLS381_KANGAROO, libamcl_mpin_BLS381), Cint, (Ptr{octet}, Ptr{octet}), E, F)
end

function MPIN_BLS381_ENCODING(R, TP)
    ccall((:MPIN_BLS381_ENCODING, libamcl_mpin_BLS381), Cint, (Ptr{csprng}, Ptr{octet}), R, TP)
end

function MPIN_BLS381_DECODING(TP)
    ccall((:MPIN_BLS381_DECODING, libamcl_mpin_BLS381), Cint, (Ptr{octet},), TP)
end

function MPIN_BLS381_GET_G1_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS381_GET_G1_MULTIPLE, libamcl_mpin_BLS381), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS381_GET_G2_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS381_GET_G2_MULTIPLE, libamcl_mpin_BLS381), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS381_GET_CLIENT_SECRET(S, ID, CS)
    ccall((:MPIN_BLS381_GET_CLIENT_SECRET, libamcl_mpin_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, ID, CS)
end

function MPIN_BLS381_GET_CLIENT_PERMIT(h, d, S, ID, TP)
    ccall((:MPIN_BLS381_GET_CLIENT_PERMIT, libamcl_mpin_BLS381), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, S, ID, TP)
end

function MPIN_BLS381_GET_SERVER_SECRET(S, SS)
    ccall((:MPIN_BLS381_GET_SERVER_SECRET, libamcl_mpin_BLS381), Cint, (Ptr{octet}, Ptr{octet}), S, SS)
end

function MPIN_BLS381_PRECOMPUTE(T, ID, CP, g1, g2)
    ccall((:MPIN_BLS381_PRECOMPUTE, libamcl_mpin_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), T, ID, CP, g1, g2)
end

function MPIN_BLS381_SERVER_KEY(h, Z, SS, w, p, I, U, UT, K)
    ccall((:MPIN_BLS381_SERVER_KEY, libamcl_mpin_BLS381), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, Z, SS, w, p, I, U, UT, K)
end

function MPIN_BLS381_CLIENT_KEY(h, g1, g2, pin, r, x, p, T, K)
    ccall((:MPIN_BLS381_CLIENT_KEY, libamcl_mpin_BLS381), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, g1, g2, pin, r, x, p, T, K)
end

function MPIN_BLS381_GET_DVS_KEYPAIR(R, Z, Pa)
    ccall((:MPIN_BLS381_GET_DVS_KEYPAIR, libamcl_mpin_BLS381), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, Z, Pa)
end
# Julia wrapper for header: mpin_BLS383.h
# Automatically generated using Clang.jl


function MPIN_BLS383_GET_Y(h, t, O, Y)
    ccall((:MPIN_BLS383_GET_Y, libamcl_mpin_BLS383), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), h, t, O, Y)
end

function MPIN_BLS383_EXTRACT_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS383_EXTRACT_FACTOR, libamcl_mpin_BLS383), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS383_RESTORE_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS383_RESTORE_FACTOR, libamcl_mpin_BLS383), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS383_EXTRACT_PIN(h, ID, pin, CS)
    ccall((:MPIN_BLS383_EXTRACT_PIN, libamcl_mpin_BLS383), Cint, (Cint, Ptr{octet}, Cint, Ptr{octet}), h, ID, pin, CS)
end

function MPIN_BLS383_CLIENT(h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
    ccall((:MPIN_BLS383_CLIENT, libamcl_mpin_BLS383), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
end

function MPIN_BLS383_CLIENT_1(h, d, ID, R, x, pin, T, S, U, UT, TP)
    ccall((:MPIN_BLS383_CLIENT_1, libamcl_mpin_BLS383), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, R, x, pin, T, S, U, UT, TP)
end

function MPIN_BLS383_RANDOM_GENERATE(R, S)
    ccall((:MPIN_BLS383_RANDOM_GENERATE, libamcl_mpin_BLS383), Cint, (Ptr{csprng}, Ptr{octet}), R, S)
end

function MPIN_BLS383_CLIENT_2(x, y, V)
    ccall((:MPIN_BLS383_CLIENT_2, libamcl_mpin_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), x, y, V)
end

function MPIN_BLS383_SERVER(h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
    ccall((:MPIN_BLS383_SERVER, libamcl_mpin_BLS383), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
end

function MPIN_BLS383_SERVER_1(h, d, ID, HID, HTID)
    ccall((:MPIN_BLS383_SERVER_1, libamcl_mpin_BLS383), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, HID, HTID)
end

function MPIN_BLS383_SERVER_2(d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
    ccall((:MPIN_BLS383_SERVER_2, libamcl_mpin_BLS383), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
end

function MPIN_BLS383_RECOMBINE_G1(Q1, Q2, Q)
    ccall((:MPIN_BLS383_RECOMBINE_G1, libamcl_mpin_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), Q1, Q2, Q)
end

function MPIN_BLS383_RECOMBINE_G2(P1, P2, P)
    ccall((:MPIN_BLS383_RECOMBINE_G2, libamcl_mpin_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), P1, P2, P)
end

function MPIN_BLS383_KANGAROO(E, F)
    ccall((:MPIN_BLS383_KANGAROO, libamcl_mpin_BLS383), Cint, (Ptr{octet}, Ptr{octet}), E, F)
end

function MPIN_BLS383_ENCODING(R, TP)
    ccall((:MPIN_BLS383_ENCODING, libamcl_mpin_BLS383), Cint, (Ptr{csprng}, Ptr{octet}), R, TP)
end

function MPIN_BLS383_DECODING(TP)
    ccall((:MPIN_BLS383_DECODING, libamcl_mpin_BLS383), Cint, (Ptr{octet},), TP)
end

function MPIN_BLS383_GET_G1_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS383_GET_G1_MULTIPLE, libamcl_mpin_BLS383), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS383_GET_G2_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS383_GET_G2_MULTIPLE, libamcl_mpin_BLS383), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS383_GET_CLIENT_SECRET(S, ID, CS)
    ccall((:MPIN_BLS383_GET_CLIENT_SECRET, libamcl_mpin_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, ID, CS)
end

function MPIN_BLS383_GET_CLIENT_PERMIT(h, d, S, ID, TP)
    ccall((:MPIN_BLS383_GET_CLIENT_PERMIT, libamcl_mpin_BLS383), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, S, ID, TP)
end

function MPIN_BLS383_GET_SERVER_SECRET(S, SS)
    ccall((:MPIN_BLS383_GET_SERVER_SECRET, libamcl_mpin_BLS383), Cint, (Ptr{octet}, Ptr{octet}), S, SS)
end

function MPIN_BLS383_PRECOMPUTE(T, ID, CP, g1, g2)
    ccall((:MPIN_BLS383_PRECOMPUTE, libamcl_mpin_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), T, ID, CP, g1, g2)
end

function MPIN_BLS383_SERVER_KEY(h, Z, SS, w, p, I, U, UT, K)
    ccall((:MPIN_BLS383_SERVER_KEY, libamcl_mpin_BLS383), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, Z, SS, w, p, I, U, UT, K)
end

function MPIN_BLS383_CLIENT_KEY(h, g1, g2, pin, r, x, p, T, K)
    ccall((:MPIN_BLS383_CLIENT_KEY, libamcl_mpin_BLS383), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, g1, g2, pin, r, x, p, T, K)
end

function MPIN_BLS383_GET_DVS_KEYPAIR(R, Z, Pa)
    ccall((:MPIN_BLS383_GET_DVS_KEYPAIR, libamcl_mpin_BLS383), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, Z, Pa)
end
# Julia wrapper for header: mpin_BLS461.h
# Automatically generated using Clang.jl


function MPIN_BLS461_GET_Y(h, t, O, Y)
    ccall((:MPIN_BLS461_GET_Y, libamcl_mpin_BLS461), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), h, t, O, Y)
end

function MPIN_BLS461_EXTRACT_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS461_EXTRACT_FACTOR, libamcl_mpin_BLS461), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS461_RESTORE_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BLS461_RESTORE_FACTOR, libamcl_mpin_BLS461), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BLS461_EXTRACT_PIN(h, ID, pin, CS)
    ccall((:MPIN_BLS461_EXTRACT_PIN, libamcl_mpin_BLS461), Cint, (Cint, Ptr{octet}, Cint, Ptr{octet}), h, ID, pin, CS)
end

function MPIN_BLS461_CLIENT(h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
    ccall((:MPIN_BLS461_CLIENT, libamcl_mpin_BLS461), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
end

function MPIN_BLS461_CLIENT_1(h, d, ID, R, x, pin, T, S, U, UT, TP)
    ccall((:MPIN_BLS461_CLIENT_1, libamcl_mpin_BLS461), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, R, x, pin, T, S, U, UT, TP)
end

function MPIN_BLS461_RANDOM_GENERATE(R, S)
    ccall((:MPIN_BLS461_RANDOM_GENERATE, libamcl_mpin_BLS461), Cint, (Ptr{csprng}, Ptr{octet}), R, S)
end

function MPIN_BLS461_CLIENT_2(x, y, V)
    ccall((:MPIN_BLS461_CLIENT_2, libamcl_mpin_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), x, y, V)
end

function MPIN_BLS461_SERVER(h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
    ccall((:MPIN_BLS461_SERVER, libamcl_mpin_BLS461), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
end

function MPIN_BLS461_SERVER_1(h, d, ID, HID, HTID)
    ccall((:MPIN_BLS461_SERVER_1, libamcl_mpin_BLS461), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, HID, HTID)
end

function MPIN_BLS461_SERVER_2(d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
    ccall((:MPIN_BLS461_SERVER_2, libamcl_mpin_BLS461), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
end

function MPIN_BLS461_RECOMBINE_G1(Q1, Q2, Q)
    ccall((:MPIN_BLS461_RECOMBINE_G1, libamcl_mpin_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), Q1, Q2, Q)
end

function MPIN_BLS461_RECOMBINE_G2(P1, P2, P)
    ccall((:MPIN_BLS461_RECOMBINE_G2, libamcl_mpin_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), P1, P2, P)
end

function MPIN_BLS461_KANGAROO(E, F)
    ccall((:MPIN_BLS461_KANGAROO, libamcl_mpin_BLS461), Cint, (Ptr{octet}, Ptr{octet}), E, F)
end

function MPIN_BLS461_ENCODING(R, TP)
    ccall((:MPIN_BLS461_ENCODING, libamcl_mpin_BLS461), Cint, (Ptr{csprng}, Ptr{octet}), R, TP)
end

function MPIN_BLS461_DECODING(TP)
    ccall((:MPIN_BLS461_DECODING, libamcl_mpin_BLS461), Cint, (Ptr{octet},), TP)
end

function MPIN_BLS461_GET_G1_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS461_GET_G1_MULTIPLE, libamcl_mpin_BLS461), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS461_GET_G2_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BLS461_GET_G2_MULTIPLE, libamcl_mpin_BLS461), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BLS461_GET_CLIENT_SECRET(S, ID, CS)
    ccall((:MPIN_BLS461_GET_CLIENT_SECRET, libamcl_mpin_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, ID, CS)
end

function MPIN_BLS461_GET_CLIENT_PERMIT(h, d, S, ID, TP)
    ccall((:MPIN_BLS461_GET_CLIENT_PERMIT, libamcl_mpin_BLS461), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, S, ID, TP)
end

function MPIN_BLS461_GET_SERVER_SECRET(S, SS)
    ccall((:MPIN_BLS461_GET_SERVER_SECRET, libamcl_mpin_BLS461), Cint, (Ptr{octet}, Ptr{octet}), S, SS)
end

function MPIN_BLS461_PRECOMPUTE(T, ID, CP, g1, g2)
    ccall((:MPIN_BLS461_PRECOMPUTE, libamcl_mpin_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), T, ID, CP, g1, g2)
end

function MPIN_BLS461_SERVER_KEY(h, Z, SS, w, p, I, U, UT, K)
    ccall((:MPIN_BLS461_SERVER_KEY, libamcl_mpin_BLS461), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, Z, SS, w, p, I, U, UT, K)
end

function MPIN_BLS461_CLIENT_KEY(h, g1, g2, pin, r, x, p, T, K)
    ccall((:MPIN_BLS461_CLIENT_KEY, libamcl_mpin_BLS461), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, g1, g2, pin, r, x, p, T, K)
end

function MPIN_BLS461_GET_DVS_KEYPAIR(R, Z, Pa)
    ccall((:MPIN_BLS461_GET_DVS_KEYPAIR, libamcl_mpin_BLS461), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, Z, Pa)
end
# Julia wrapper for header: mpin_BN254.h
# Automatically generated using Clang.jl


function MPIN_BN254_GET_Y(h, t, O, Y)
    ccall((:MPIN_BN254_GET_Y, libamcl_mpin_BN254), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), h, t, O, Y)
end

function MPIN_BN254_EXTRACT_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BN254_EXTRACT_FACTOR, libamcl_mpin_BN254), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BN254_RESTORE_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BN254_RESTORE_FACTOR, libamcl_mpin_BN254), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BN254_EXTRACT_PIN(h, ID, pin, CS)
    ccall((:MPIN_BN254_EXTRACT_PIN, libamcl_mpin_BN254), Cint, (Cint, Ptr{octet}, Cint, Ptr{octet}), h, ID, pin, CS)
end

function MPIN_BN254_CLIENT(h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
    ccall((:MPIN_BN254_CLIENT, libamcl_mpin_BN254), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
end

function MPIN_BN254_CLIENT_1(h, d, ID, R, x, pin, T, S, U, UT, TP)
    ccall((:MPIN_BN254_CLIENT_1, libamcl_mpin_BN254), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, R, x, pin, T, S, U, UT, TP)
end

function MPIN_BN254_RANDOM_GENERATE(R, S)
    ccall((:MPIN_BN254_RANDOM_GENERATE, libamcl_mpin_BN254), Cint, (Ptr{csprng}, Ptr{octet}), R, S)
end

function MPIN_BN254_CLIENT_2(x, y, V)
    ccall((:MPIN_BN254_CLIENT_2, libamcl_mpin_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), x, y, V)
end

function MPIN_BN254_SERVER(h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
    ccall((:MPIN_BN254_SERVER, libamcl_mpin_BN254), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
end

function MPIN_BN254_SERVER_1(h, d, ID, HID, HTID)
    ccall((:MPIN_BN254_SERVER_1, libamcl_mpin_BN254), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, HID, HTID)
end

function MPIN_BN254_SERVER_2(d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
    ccall((:MPIN_BN254_SERVER_2, libamcl_mpin_BN254), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
end

function MPIN_BN254_RECOMBINE_G1(Q1, Q2, Q)
    ccall((:MPIN_BN254_RECOMBINE_G1, libamcl_mpin_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), Q1, Q2, Q)
end

function MPIN_BN254_RECOMBINE_G2(P1, P2, P)
    ccall((:MPIN_BN254_RECOMBINE_G2, libamcl_mpin_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), P1, P2, P)
end

function MPIN_BN254_KANGAROO(E, F)
    ccall((:MPIN_BN254_KANGAROO, libamcl_mpin_BN254), Cint, (Ptr{octet}, Ptr{octet}), E, F)
end

function MPIN_BN254_ENCODING(R, TP)
    ccall((:MPIN_BN254_ENCODING, libamcl_mpin_BN254), Cint, (Ptr{csprng}, Ptr{octet}), R, TP)
end

function MPIN_BN254_DECODING(TP)
    ccall((:MPIN_BN254_DECODING, libamcl_mpin_BN254), Cint, (Ptr{octet},), TP)
end

function MPIN_BN254_GET_G1_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BN254_GET_G1_MULTIPLE, libamcl_mpin_BN254), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BN254_GET_G2_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BN254_GET_G2_MULTIPLE, libamcl_mpin_BN254), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BN254_GET_CLIENT_SECRET(S, ID, CS)
    ccall((:MPIN_BN254_GET_CLIENT_SECRET, libamcl_mpin_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, ID, CS)
end

function MPIN_BN254_GET_CLIENT_PERMIT(h, d, S, ID, TP)
    ccall((:MPIN_BN254_GET_CLIENT_PERMIT, libamcl_mpin_BN254), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, S, ID, TP)
end

function MPIN_BN254_GET_SERVER_SECRET(S, SS)
    ccall((:MPIN_BN254_GET_SERVER_SECRET, libamcl_mpin_BN254), Cint, (Ptr{octet}, Ptr{octet}), S, SS)
end

function MPIN_BN254_PRECOMPUTE(T, ID, CP, g1, g2)
    ccall((:MPIN_BN254_PRECOMPUTE, libamcl_mpin_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), T, ID, CP, g1, g2)
end

function MPIN_BN254_SERVER_KEY(h, Z, SS, w, p, I, U, UT, K)
    ccall((:MPIN_BN254_SERVER_KEY, libamcl_mpin_BN254), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, Z, SS, w, p, I, U, UT, K)
end

function MPIN_BN254_CLIENT_KEY(h, g1, g2, pin, r, x, p, T, K)
    ccall((:MPIN_BN254_CLIENT_KEY, libamcl_mpin_BN254), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, g1, g2, pin, r, x, p, T, K)
end

function MPIN_BN254_GET_DVS_KEYPAIR(R, Z, Pa)
    ccall((:MPIN_BN254_GET_DVS_KEYPAIR, libamcl_mpin_BN254), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, Z, Pa)
end
# Julia wrapper for header: mpin_BN254CX.h
# Automatically generated using Clang.jl


function MPIN_BN254CX_GET_Y(h, t, O, Y)
    ccall((:MPIN_BN254CX_GET_Y, libamcl_mpin_BN254CX), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), h, t, O, Y)
end

function MPIN_BN254CX_EXTRACT_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BN254CX_EXTRACT_FACTOR, libamcl_mpin_BN254CX), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BN254CX_RESTORE_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_BN254CX_RESTORE_FACTOR, libamcl_mpin_BN254CX), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_BN254CX_EXTRACT_PIN(h, ID, pin, CS)
    ccall((:MPIN_BN254CX_EXTRACT_PIN, libamcl_mpin_BN254CX), Cint, (Cint, Ptr{octet}, Cint, Ptr{octet}), h, ID, pin, CS)
end

function MPIN_BN254CX_CLIENT(h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
    ccall((:MPIN_BN254CX_CLIENT, libamcl_mpin_BN254CX), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
end

function MPIN_BN254CX_CLIENT_1(h, d, ID, R, x, pin, T, S, U, UT, TP)
    ccall((:MPIN_BN254CX_CLIENT_1, libamcl_mpin_BN254CX), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, R, x, pin, T, S, U, UT, TP)
end

function MPIN_BN254CX_RANDOM_GENERATE(R, S)
    ccall((:MPIN_BN254CX_RANDOM_GENERATE, libamcl_mpin_BN254CX), Cint, (Ptr{csprng}, Ptr{octet}), R, S)
end

function MPIN_BN254CX_CLIENT_2(x, y, V)
    ccall((:MPIN_BN254CX_CLIENT_2, libamcl_mpin_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), x, y, V)
end

function MPIN_BN254CX_SERVER(h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
    ccall((:MPIN_BN254CX_SERVER, libamcl_mpin_BN254CX), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
end

function MPIN_BN254CX_SERVER_1(h, d, ID, HID, HTID)
    ccall((:MPIN_BN254CX_SERVER_1, libamcl_mpin_BN254CX), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, HID, HTID)
end

function MPIN_BN254CX_SERVER_2(d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
    ccall((:MPIN_BN254CX_SERVER_2, libamcl_mpin_BN254CX), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
end

function MPIN_BN254CX_RECOMBINE_G1(Q1, Q2, Q)
    ccall((:MPIN_BN254CX_RECOMBINE_G1, libamcl_mpin_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), Q1, Q2, Q)
end

function MPIN_BN254CX_RECOMBINE_G2(P1, P2, P)
    ccall((:MPIN_BN254CX_RECOMBINE_G2, libamcl_mpin_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), P1, P2, P)
end

function MPIN_BN254CX_KANGAROO(E, F)
    ccall((:MPIN_BN254CX_KANGAROO, libamcl_mpin_BN254CX), Cint, (Ptr{octet}, Ptr{octet}), E, F)
end

function MPIN_BN254CX_ENCODING(R, TP)
    ccall((:MPIN_BN254CX_ENCODING, libamcl_mpin_BN254CX), Cint, (Ptr{csprng}, Ptr{octet}), R, TP)
end

function MPIN_BN254CX_DECODING(TP)
    ccall((:MPIN_BN254CX_DECODING, libamcl_mpin_BN254CX), Cint, (Ptr{octet},), TP)
end

function MPIN_BN254CX_GET_G1_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BN254CX_GET_G1_MULTIPLE, libamcl_mpin_BN254CX), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BN254CX_GET_G2_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_BN254CX_GET_G2_MULTIPLE, libamcl_mpin_BN254CX), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_BN254CX_GET_CLIENT_SECRET(S, ID, CS)
    ccall((:MPIN_BN254CX_GET_CLIENT_SECRET, libamcl_mpin_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, ID, CS)
end

function MPIN_BN254CX_GET_CLIENT_PERMIT(h, d, S, ID, TP)
    ccall((:MPIN_BN254CX_GET_CLIENT_PERMIT, libamcl_mpin_BN254CX), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, S, ID, TP)
end

function MPIN_BN254CX_GET_SERVER_SECRET(S, SS)
    ccall((:MPIN_BN254CX_GET_SERVER_SECRET, libamcl_mpin_BN254CX), Cint, (Ptr{octet}, Ptr{octet}), S, SS)
end

function MPIN_BN254CX_PRECOMPUTE(T, ID, CP, g1, g2)
    ccall((:MPIN_BN254CX_PRECOMPUTE, libamcl_mpin_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), T, ID, CP, g1, g2)
end

function MPIN_BN254CX_SERVER_KEY(h, Z, SS, w, p, I, U, UT, K)
    ccall((:MPIN_BN254CX_SERVER_KEY, libamcl_mpin_BN254CX), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, Z, SS, w, p, I, U, UT, K)
end

function MPIN_BN254CX_CLIENT_KEY(h, g1, g2, pin, r, x, p, T, K)
    ccall((:MPIN_BN254CX_CLIENT_KEY, libamcl_mpin_BN254CX), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, g1, g2, pin, r, x, p, T, K)
end

function MPIN_BN254CX_GET_DVS_KEYPAIR(R, Z, Pa)
    ccall((:MPIN_BN254CX_GET_DVS_KEYPAIR, libamcl_mpin_BN254CX), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, Z, Pa)
end
# Julia wrapper for header: mpin_FP256BN.h
# Automatically generated using Clang.jl


function MPIN_FP256BN_GET_Y(h, t, O, Y)
    ccall((:MPIN_FP256BN_GET_Y, libamcl_mpin_FP256BN), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), h, t, O, Y)
end

function MPIN_FP256BN_EXTRACT_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_FP256BN_EXTRACT_FACTOR, libamcl_mpin_FP256BN), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_FP256BN_RESTORE_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_FP256BN_RESTORE_FACTOR, libamcl_mpin_FP256BN), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_FP256BN_EXTRACT_PIN(h, ID, pin, CS)
    ccall((:MPIN_FP256BN_EXTRACT_PIN, libamcl_mpin_FP256BN), Cint, (Cint, Ptr{octet}, Cint, Ptr{octet}), h, ID, pin, CS)
end

function MPIN_FP256BN_CLIENT(h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
    ccall((:MPIN_FP256BN_CLIENT, libamcl_mpin_FP256BN), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
end

function MPIN_FP256BN_CLIENT_1(h, d, ID, R, x, pin, T, S, U, UT, TP)
    ccall((:MPIN_FP256BN_CLIENT_1, libamcl_mpin_FP256BN), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, R, x, pin, T, S, U, UT, TP)
end

function MPIN_FP256BN_RANDOM_GENERATE(R, S)
    ccall((:MPIN_FP256BN_RANDOM_GENERATE, libamcl_mpin_FP256BN), Cint, (Ptr{csprng}, Ptr{octet}), R, S)
end

function MPIN_FP256BN_CLIENT_2(x, y, V)
    ccall((:MPIN_FP256BN_CLIENT_2, libamcl_mpin_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), x, y, V)
end

function MPIN_FP256BN_SERVER(h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
    ccall((:MPIN_FP256BN_SERVER, libamcl_mpin_FP256BN), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
end

function MPIN_FP256BN_SERVER_1(h, d, ID, HID, HTID)
    ccall((:MPIN_FP256BN_SERVER_1, libamcl_mpin_FP256BN), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, HID, HTID)
end

function MPIN_FP256BN_SERVER_2(d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
    ccall((:MPIN_FP256BN_SERVER_2, libamcl_mpin_FP256BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
end

function MPIN_FP256BN_RECOMBINE_G1(Q1, Q2, Q)
    ccall((:MPIN_FP256BN_RECOMBINE_G1, libamcl_mpin_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), Q1, Q2, Q)
end

function MPIN_FP256BN_RECOMBINE_G2(P1, P2, P)
    ccall((:MPIN_FP256BN_RECOMBINE_G2, libamcl_mpin_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), P1, P2, P)
end

function MPIN_FP256BN_KANGAROO(E, F)
    ccall((:MPIN_FP256BN_KANGAROO, libamcl_mpin_FP256BN), Cint, (Ptr{octet}, Ptr{octet}), E, F)
end

function MPIN_FP256BN_ENCODING(R, TP)
    ccall((:MPIN_FP256BN_ENCODING, libamcl_mpin_FP256BN), Cint, (Ptr{csprng}, Ptr{octet}), R, TP)
end

function MPIN_FP256BN_DECODING(TP)
    ccall((:MPIN_FP256BN_DECODING, libamcl_mpin_FP256BN), Cint, (Ptr{octet},), TP)
end

function MPIN_FP256BN_GET_G1_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_FP256BN_GET_G1_MULTIPLE, libamcl_mpin_FP256BN), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_FP256BN_GET_G2_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_FP256BN_GET_G2_MULTIPLE, libamcl_mpin_FP256BN), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_FP256BN_GET_CLIENT_SECRET(S, ID, CS)
    ccall((:MPIN_FP256BN_GET_CLIENT_SECRET, libamcl_mpin_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, ID, CS)
end

function MPIN_FP256BN_GET_CLIENT_PERMIT(h, d, S, ID, TP)
    ccall((:MPIN_FP256BN_GET_CLIENT_PERMIT, libamcl_mpin_FP256BN), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, S, ID, TP)
end

function MPIN_FP256BN_GET_SERVER_SECRET(S, SS)
    ccall((:MPIN_FP256BN_GET_SERVER_SECRET, libamcl_mpin_FP256BN), Cint, (Ptr{octet}, Ptr{octet}), S, SS)
end

function MPIN_FP256BN_PRECOMPUTE(T, ID, CP, g1, g2)
    ccall((:MPIN_FP256BN_PRECOMPUTE, libamcl_mpin_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), T, ID, CP, g1, g2)
end

function MPIN_FP256BN_SERVER_KEY(h, Z, SS, w, p, I, U, UT, K)
    ccall((:MPIN_FP256BN_SERVER_KEY, libamcl_mpin_FP256BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, Z, SS, w, p, I, U, UT, K)
end

function MPIN_FP256BN_CLIENT_KEY(h, g1, g2, pin, r, x, p, T, K)
    ccall((:MPIN_FP256BN_CLIENT_KEY, libamcl_mpin_FP256BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, g1, g2, pin, r, x, p, T, K)
end

function MPIN_FP256BN_GET_DVS_KEYPAIR(R, Z, Pa)
    ccall((:MPIN_FP256BN_GET_DVS_KEYPAIR, libamcl_mpin_FP256BN), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, Z, Pa)
end
# Julia wrapper for header: mpin_FP512BN.h
# Automatically generated using Clang.jl


function MPIN_FP512BN_GET_Y(h, t, O, Y)
    ccall((:MPIN_FP512BN_GET_Y, libamcl_mpin_FP512BN), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), h, t, O, Y)
end

function MPIN_FP512BN_EXTRACT_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_FP512BN_EXTRACT_FACTOR, libamcl_mpin_FP512BN), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_FP512BN_RESTORE_FACTOR(h, ID, factor, facbits, CS)
    ccall((:MPIN_FP512BN_RESTORE_FACTOR, libamcl_mpin_FP512BN), Cint, (Cint, Ptr{octet}, Cint, Cint, Ptr{octet}), h, ID, factor, facbits, CS)
end

function MPIN_FP512BN_EXTRACT_PIN(h, ID, pin, CS)
    ccall((:MPIN_FP512BN_EXTRACT_PIN, libamcl_mpin_FP512BN), Cint, (Cint, Ptr{octet}, Cint, Ptr{octet}), h, ID, pin, CS)
end

function MPIN_FP512BN_CLIENT(h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
    ccall((:MPIN_FP512BN_CLIENT, libamcl_mpin_FP512BN), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, ID, R, x, pin, T, V, U, UT, TP, MESSAGE, t, y)
end

function MPIN_FP512BN_CLIENT_1(h, d, ID, R, x, pin, T, S, U, UT, TP)
    ccall((:MPIN_FP512BN_CLIENT_1, libamcl_mpin_FP512BN), Cint, (Cint, Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, R, x, pin, T, S, U, UT, TP)
end

function MPIN_FP512BN_RANDOM_GENERATE(R, S)
    ccall((:MPIN_FP512BN_RANDOM_GENERATE, libamcl_mpin_FP512BN), Cint, (Ptr{csprng}, Ptr{octet}), R, S)
end

function MPIN_FP512BN_CLIENT_2(x, y, V)
    ccall((:MPIN_FP512BN_CLIENT_2, libamcl_mpin_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), x, y, V)
end

function MPIN_FP512BN_SERVER(h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
    ccall((:MPIN_FP512BN_SERVER, libamcl_mpin_FP512BN), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}), h, d, HID, HTID, y, SS, U, UT, V, E, F, ID, MESSAGE, t, Pa)
end

function MPIN_FP512BN_SERVER_1(h, d, ID, HID, HTID)
    ccall((:MPIN_FP512BN_SERVER_1, libamcl_mpin_FP512BN), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, ID, HID, HTID)
end

function MPIN_FP512BN_SERVER_2(d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
    ccall((:MPIN_FP512BN_SERVER_2, libamcl_mpin_FP512BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), d, HID, HTID, y, SS, U, UT, V, E, F, Pa)
end

function MPIN_FP512BN_RECOMBINE_G1(Q1, Q2, Q)
    ccall((:MPIN_FP512BN_RECOMBINE_G1, libamcl_mpin_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), Q1, Q2, Q)
end

function MPIN_FP512BN_RECOMBINE_G2(P1, P2, P)
    ccall((:MPIN_FP512BN_RECOMBINE_G2, libamcl_mpin_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), P1, P2, P)
end

function MPIN_FP512BN_KANGAROO(E, F)
    ccall((:MPIN_FP512BN_KANGAROO, libamcl_mpin_FP512BN), Cint, (Ptr{octet}, Ptr{octet}), E, F)
end

function MPIN_FP512BN_ENCODING(R, TP)
    ccall((:MPIN_FP512BN_ENCODING, libamcl_mpin_FP512BN), Cint, (Ptr{csprng}, Ptr{octet}), R, TP)
end

function MPIN_FP512BN_DECODING(TP)
    ccall((:MPIN_FP512BN_DECODING, libamcl_mpin_FP512BN), Cint, (Ptr{octet},), TP)
end

function MPIN_FP512BN_GET_G1_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_FP512BN_GET_G1_MULTIPLE, libamcl_mpin_FP512BN), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_FP512BN_GET_G2_MULTIPLE(R, type, x, G, W)
    ccall((:MPIN_FP512BN_GET_G2_MULTIPLE, libamcl_mpin_FP512BN), Cint, (Ptr{csprng}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), R, type, x, G, W)
end

function MPIN_FP512BN_GET_CLIENT_SECRET(S, ID, CS)
    ccall((:MPIN_FP512BN_GET_CLIENT_SECRET, libamcl_mpin_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, ID, CS)
end

function MPIN_FP512BN_GET_CLIENT_PERMIT(h, d, S, ID, TP)
    ccall((:MPIN_FP512BN_GET_CLIENT_PERMIT, libamcl_mpin_FP512BN), Cint, (Cint, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, d, S, ID, TP)
end

function MPIN_FP512BN_GET_SERVER_SECRET(S, SS)
    ccall((:MPIN_FP512BN_GET_SERVER_SECRET, libamcl_mpin_FP512BN), Cint, (Ptr{octet}, Ptr{octet}), S, SS)
end

function MPIN_FP512BN_PRECOMPUTE(T, ID, CP, g1, g2)
    ccall((:MPIN_FP512BN_PRECOMPUTE, libamcl_mpin_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), T, ID, CP, g1, g2)
end

function MPIN_FP512BN_SERVER_KEY(h, Z, SS, w, p, I, U, UT, K)
    ccall((:MPIN_FP512BN_SERVER_KEY, libamcl_mpin_FP512BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, Z, SS, w, p, I, U, UT, K)
end

function MPIN_FP512BN_CLIENT_KEY(h, g1, g2, pin, r, x, p, T, K)
    ccall((:MPIN_FP512BN_CLIENT_KEY, libamcl_mpin_FP512BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, g1, g2, pin, r, x, p, T, K)
end

function MPIN_FP512BN_GET_DVS_KEYPAIR(R, Z, Pa)
    ccall((:MPIN_FP512BN_GET_DVS_KEYPAIR, libamcl_mpin_FP512BN), Cint, (Ptr{csprng}, Ptr{octet}, Ptr{octet}), R, Z, Pa)
end
# Julia wrapper for header: pair192_BLS24.h
# Automatically generated using Clang.jl


function PAIR_BLS24_another(r, PV, QV)
    ccall((:PAIR_BLS24_another, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{ECP4_BLS24}, Ptr{ECP_BLS24}), r, PV, QV)
end

function PAIR_BLS24_ate(r, P, Q)
    ccall((:PAIR_BLS24_ate, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{ECP4_BLS24}, Ptr{ECP_BLS24}), r, P, Q)
end

function PAIR_BLS24_double_ate(r, P, Q, R, S)
    ccall((:PAIR_BLS24_double_ate, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{ECP4_BLS24}, Ptr{ECP_BLS24}, Ptr{ECP4_BLS24}, Ptr{ECP_BLS24}), r, P, Q, R, S)
end

function PAIR_BLS24_fexp(x)
    ccall((:PAIR_BLS24_fexp, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24},), x)
end

function PAIR_BLS24_G1mul(Q, b)
    ccall((:PAIR_BLS24_G1mul, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP_BLS24}, BIG_480_56), Q, b)
end

function PAIR_BLS24_G2mul(P, b)
    ccall((:PAIR_BLS24_G2mul, libamcl_pairing_BLS24), Cvoid, (Ptr{ECP4_BLS24}, BIG_480_56), P, b)
end

function PAIR_BLS24_GTpow(x, b)
    ccall((:PAIR_BLS24_GTpow, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, BIG_480_56), x, b)
end

function PAIR_BLS24_GTmember(x)
    ccall((:PAIR_BLS24_GTmember, libamcl_pairing_BLS24), Cint, (Ptr{FP24_BLS24},), x)
end

function PAIR_BLS24_nbits(n3, n)
    ccall((:PAIR_BLS24_nbits, libamcl_pairing_BLS24), Cint, (BIG_480_56, BIG_480_56), n3, n)
end

function PAIR_BLS24_initmp(r)
    ccall((:PAIR_BLS24_initmp, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24},), r)
end

function PAIR_BLS24_miller(res, r)
    ccall((:PAIR_BLS24_miller, libamcl_pairing_BLS24), Cvoid, (Ptr{FP24_BLS24}, Ptr{FP24_BLS24}), res, r)
end
# Julia wrapper for header: pair256_BLS48.h
# Automatically generated using Clang.jl


function PAIR_BLS48_another(r, PV, QV)
    ccall((:PAIR_BLS48_another, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{ECP8_BLS48}, Ptr{ECP_BLS48}), r, PV, QV)
end

function PAIR_BLS48_ate(r, P, Q)
    ccall((:PAIR_BLS48_ate, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{ECP8_BLS48}, Ptr{ECP_BLS48}), r, P, Q)
end

function PAIR_BLS48_double_ate(r, P, Q, R, S)
    ccall((:PAIR_BLS48_double_ate, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{ECP8_BLS48}, Ptr{ECP_BLS48}, Ptr{ECP8_BLS48}, Ptr{ECP_BLS48}), r, P, Q, R, S)
end

function PAIR_BLS48_fexp(x)
    ccall((:PAIR_BLS48_fexp, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48},), x)
end

function PAIR_BLS48_G1mul(Q, b)
    ccall((:PAIR_BLS48_G1mul, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP_BLS48}, BIG_560_58), Q, b)
end

function PAIR_BLS48_G2mul(P, b)
    ccall((:PAIR_BLS48_G2mul, libamcl_pairing_BLS48), Cvoid, (Ptr{ECP8_BLS48}, BIG_560_58), P, b)
end

function PAIR_BLS48_GTpow(x, b)
    ccall((:PAIR_BLS48_GTpow, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, BIG_560_58), x, b)
end

function PAIR_BLS48_GTmember(x)
    ccall((:PAIR_BLS48_GTmember, libamcl_pairing_BLS48), Cint, (Ptr{FP48_BLS48},), x)
end

function PAIR_BLS48_nbits(n3, n)
    ccall((:PAIR_BLS48_nbits, libamcl_pairing_BLS48), Cint, (BIG_560_58, BIG_560_58), n3, n)
end

function PAIR_BLS48_initmp(r)
    ccall((:PAIR_BLS48_initmp, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48},), r)
end

function PAIR_BLS48_miller(res, r)
    ccall((:PAIR_BLS48_miller, libamcl_pairing_BLS48), Cvoid, (Ptr{FP48_BLS48}, Ptr{FP48_BLS48}), res, r)
end
# Julia wrapper for header: pair_BLS381.h
# Automatically generated using Clang.jl


function PAIR_BLS381_another(r, PV, QV)
    ccall((:PAIR_BLS381_another, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{ECP2_BLS381}, Ptr{ECP_BLS381}), r, PV, QV)
end

function PAIR_BLS381_ate(r, P, Q)
    ccall((:PAIR_BLS381_ate, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{ECP2_BLS381}, Ptr{ECP_BLS381}), r, P, Q)
end

function PAIR_BLS381_double_ate(r, P, Q, R, S)
    ccall((:PAIR_BLS381_double_ate, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{ECP2_BLS381}, Ptr{ECP_BLS381}, Ptr{ECP2_BLS381}, Ptr{ECP_BLS381}), r, P, Q, R, S)
end

function PAIR_BLS381_fexp(x)
    ccall((:PAIR_BLS381_fexp, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381},), x)
end

function PAIR_BLS381_G1mul(Q, b)
    ccall((:PAIR_BLS381_G1mul, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP_BLS381}, BIG_384_58), Q, b)
end

function PAIR_BLS381_G2mul(P, b)
    ccall((:PAIR_BLS381_G2mul, libamcl_pairing_BLS381), Cvoid, (Ptr{ECP2_BLS381}, BIG_384_58), P, b)
end

function PAIR_BLS381_GTpow(x, b)
    ccall((:PAIR_BLS381_GTpow, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, BIG_384_58), x, b)
end

function PAIR_BLS381_GTmember(x)
    ccall((:PAIR_BLS381_GTmember, libamcl_pairing_BLS381), Cint, (Ptr{FP12_BLS381},), x)
end

function PAIR_BLS381_nbits(n3, n)
    ccall((:PAIR_BLS381_nbits, libamcl_pairing_BLS381), Cint, (BIG_384_58, BIG_384_58), n3, n)
end

function PAIR_BLS381_initmp(r)
    ccall((:PAIR_BLS381_initmp, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381},), r)
end

function PAIR_BLS381_miller(res, r)
    ccall((:PAIR_BLS381_miller, libamcl_pairing_BLS381), Cvoid, (Ptr{FP12_BLS381}, Ptr{FP12_BLS381}), res, r)
end
# Julia wrapper for header: pair_BLS383.h
# Automatically generated using Clang.jl


function PAIR_BLS383_another(r, PV, QV)
    ccall((:PAIR_BLS383_another, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{ECP2_BLS383}, Ptr{ECP_BLS383}), r, PV, QV)
end

function PAIR_BLS383_ate(r, P, Q)
    ccall((:PAIR_BLS383_ate, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{ECP2_BLS383}, Ptr{ECP_BLS383}), r, P, Q)
end

function PAIR_BLS383_double_ate(r, P, Q, R, S)
    ccall((:PAIR_BLS383_double_ate, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{ECP2_BLS383}, Ptr{ECP_BLS383}, Ptr{ECP2_BLS383}, Ptr{ECP_BLS383}), r, P, Q, R, S)
end

function PAIR_BLS383_fexp(x)
    ccall((:PAIR_BLS383_fexp, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383},), x)
end

function PAIR_BLS383_G1mul(Q, b)
    ccall((:PAIR_BLS383_G1mul, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP_BLS383}, BIG_384_58), Q, b)
end

function PAIR_BLS383_G2mul(P, b)
    ccall((:PAIR_BLS383_G2mul, libamcl_pairing_BLS383), Cvoid, (Ptr{ECP2_BLS383}, BIG_384_58), P, b)
end

function PAIR_BLS383_GTpow(x, b)
    ccall((:PAIR_BLS383_GTpow, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, BIG_384_58), x, b)
end

function PAIR_BLS383_GTmember(x)
    ccall((:PAIR_BLS383_GTmember, libamcl_pairing_BLS383), Cint, (Ptr{FP12_BLS383},), x)
end

function PAIR_BLS383_nbits(n3, n)
    ccall((:PAIR_BLS383_nbits, libamcl_pairing_BLS383), Cint, (BIG_384_58, BIG_384_58), n3, n)
end

function PAIR_BLS383_initmp(r)
    ccall((:PAIR_BLS383_initmp, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383},), r)
end

function PAIR_BLS383_miller(res, r)
    ccall((:PAIR_BLS383_miller, libamcl_pairing_BLS383), Cvoid, (Ptr{FP12_BLS383}, Ptr{FP12_BLS383}), res, r)
end
# Julia wrapper for header: pair_BLS461.h
# Automatically generated using Clang.jl


function PAIR_BLS461_another(r, PV, QV)
    ccall((:PAIR_BLS461_another, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{ECP2_BLS461}, Ptr{ECP_BLS461}), r, PV, QV)
end

function PAIR_BLS461_ate(r, P, Q)
    ccall((:PAIR_BLS461_ate, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{ECP2_BLS461}, Ptr{ECP_BLS461}), r, P, Q)
end

function PAIR_BLS461_double_ate(r, P, Q, R, S)
    ccall((:PAIR_BLS461_double_ate, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{ECP2_BLS461}, Ptr{ECP_BLS461}, Ptr{ECP2_BLS461}, Ptr{ECP_BLS461}), r, P, Q, R, S)
end

function PAIR_BLS461_fexp(x)
    ccall((:PAIR_BLS461_fexp, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461},), x)
end

function PAIR_BLS461_G1mul(Q, b)
    ccall((:PAIR_BLS461_G1mul, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP_BLS461}, BIG_464_60), Q, b)
end

function PAIR_BLS461_G2mul(P, b)
    ccall((:PAIR_BLS461_G2mul, libamcl_pairing_BLS461), Cvoid, (Ptr{ECP2_BLS461}, BIG_464_60), P, b)
end

function PAIR_BLS461_GTpow(x, b)
    ccall((:PAIR_BLS461_GTpow, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, BIG_464_60), x, b)
end

function PAIR_BLS461_GTmember(x)
    ccall((:PAIR_BLS461_GTmember, libamcl_pairing_BLS461), Cint, (Ptr{FP12_BLS461},), x)
end

function PAIR_BLS461_nbits(n3, n)
    ccall((:PAIR_BLS461_nbits, libamcl_pairing_BLS461), Cint, (BIG_464_60, BIG_464_60), n3, n)
end

function PAIR_BLS461_initmp(r)
    ccall((:PAIR_BLS461_initmp, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461},), r)
end

function PAIR_BLS461_miller(res, r)
    ccall((:PAIR_BLS461_miller, libamcl_pairing_BLS461), Cvoid, (Ptr{FP12_BLS461}, Ptr{FP12_BLS461}), res, r)
end
# Julia wrapper for header: pair_BN254.h
# Automatically generated using Clang.jl


function PAIR_BN254_another(r, PV, QV)
    ccall((:PAIR_BN254_another, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{ECP2_BN254}, Ptr{ECP_BN254}), r, PV, QV)
end

function PAIR_BN254_ate(r, P, Q)
    ccall((:PAIR_BN254_ate, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{ECP2_BN254}, Ptr{ECP_BN254}), r, P, Q)
end

function PAIR_BN254_double_ate(r, P, Q, R, S)
    ccall((:PAIR_BN254_double_ate, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{ECP2_BN254}, Ptr{ECP_BN254}, Ptr{ECP2_BN254}, Ptr{ECP_BN254}), r, P, Q, R, S)
end

function PAIR_BN254_fexp(x)
    ccall((:PAIR_BN254_fexp, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254},), x)
end

function PAIR_BN254_G1mul(Q, b)
    ccall((:PAIR_BN254_G1mul, libamcl_pairing_BN254), Cvoid, (Ptr{ECP_BN254}, BIG_256_56), Q, b)
end

function PAIR_BN254_G2mul(P, b)
    ccall((:PAIR_BN254_G2mul, libamcl_pairing_BN254), Cvoid, (Ptr{ECP2_BN254}, BIG_256_56), P, b)
end

function PAIR_BN254_GTpow(x, b)
    ccall((:PAIR_BN254_GTpow, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, BIG_256_56), x, b)
end

function PAIR_BN254_GTmember(x)
    ccall((:PAIR_BN254_GTmember, libamcl_pairing_BN254), Cint, (Ptr{FP12_BN254},), x)
end

function PAIR_BN254_nbits(n3, n)
    ccall((:PAIR_BN254_nbits, libamcl_pairing_BN254), Cint, (BIG_256_56, BIG_256_56), n3, n)
end

function PAIR_BN254_initmp(r)
    ccall((:PAIR_BN254_initmp, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254},), r)
end

function PAIR_BN254_miller(res, r)
    ccall((:PAIR_BN254_miller, libamcl_pairing_BN254), Cvoid, (Ptr{FP12_BN254}, Ptr{FP12_BN254}), res, r)
end
# Julia wrapper for header: pair_BN254CX.h
# Automatically generated using Clang.jl


function PAIR_BN254CX_another(r, PV, QV)
    ccall((:PAIR_BN254CX_another, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{ECP2_BN254CX}, Ptr{ECP_BN254CX}), r, PV, QV)
end

function PAIR_BN254CX_ate(r, P, Q)
    ccall((:PAIR_BN254CX_ate, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{ECP2_BN254CX}, Ptr{ECP_BN254CX}), r, P, Q)
end

function PAIR_BN254CX_double_ate(r, P, Q, R, S)
    ccall((:PAIR_BN254CX_double_ate, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{ECP2_BN254CX}, Ptr{ECP_BN254CX}, Ptr{ECP2_BN254CX}, Ptr{ECP_BN254CX}), r, P, Q, R, S)
end

function PAIR_BN254CX_fexp(x)
    ccall((:PAIR_BN254CX_fexp, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX},), x)
end

function PAIR_BN254CX_G1mul(Q, b)
    ccall((:PAIR_BN254CX_G1mul, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP_BN254CX}, BIG_256_56), Q, b)
end

function PAIR_BN254CX_G2mul(P, b)
    ccall((:PAIR_BN254CX_G2mul, libamcl_pairing_BN254CX), Cvoid, (Ptr{ECP2_BN254CX}, BIG_256_56), P, b)
end

function PAIR_BN254CX_GTpow(x, b)
    ccall((:PAIR_BN254CX_GTpow, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, BIG_256_56), x, b)
end

function PAIR_BN254CX_GTmember(x)
    ccall((:PAIR_BN254CX_GTmember, libamcl_pairing_BN254CX), Cint, (Ptr{FP12_BN254CX},), x)
end

function PAIR_BN254CX_nbits(n3, n)
    ccall((:PAIR_BN254CX_nbits, libamcl_pairing_BN254CX), Cint, (BIG_256_56, BIG_256_56), n3, n)
end

function PAIR_BN254CX_initmp(r)
    ccall((:PAIR_BN254CX_initmp, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX},), r)
end

function PAIR_BN254CX_miller(res, r)
    ccall((:PAIR_BN254CX_miller, libamcl_pairing_BN254CX), Cvoid, (Ptr{FP12_BN254CX}, Ptr{FP12_BN254CX}), res, r)
end
# Julia wrapper for header: pair_FP256BN.h
# Automatically generated using Clang.jl


function PAIR_FP256BN_another(r, PV, QV)
    ccall((:PAIR_FP256BN_another, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{ECP2_FP256BN}, Ptr{ECP_FP256BN}), r, PV, QV)
end

function PAIR_FP256BN_ate(r, P, Q)
    ccall((:PAIR_FP256BN_ate, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{ECP2_FP256BN}, Ptr{ECP_FP256BN}), r, P, Q)
end

function PAIR_FP256BN_double_ate(r, P, Q, R, S)
    ccall((:PAIR_FP256BN_double_ate, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{ECP2_FP256BN}, Ptr{ECP_FP256BN}, Ptr{ECP2_FP256BN}, Ptr{ECP_FP256BN}), r, P, Q, R, S)
end

function PAIR_FP256BN_fexp(x)
    ccall((:PAIR_FP256BN_fexp, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN},), x)
end

function PAIR_FP256BN_G1mul(Q, b)
    ccall((:PAIR_FP256BN_G1mul, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP_FP256BN}, BIG_256_56), Q, b)
end

function PAIR_FP256BN_G2mul(P, b)
    ccall((:PAIR_FP256BN_G2mul, libamcl_pairing_FP256BN), Cvoid, (Ptr{ECP2_FP256BN}, BIG_256_56), P, b)
end

function PAIR_FP256BN_GTpow(x, b)
    ccall((:PAIR_FP256BN_GTpow, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, BIG_256_56), x, b)
end

function PAIR_FP256BN_GTmember(x)
    ccall((:PAIR_FP256BN_GTmember, libamcl_pairing_FP256BN), Cint, (Ptr{FP12_FP256BN},), x)
end

function PAIR_FP256BN_nbits(n3, n)
    ccall((:PAIR_FP256BN_nbits, libamcl_pairing_FP256BN), Cint, (BIG_256_56, BIG_256_56), n3, n)
end

function PAIR_FP256BN_initmp(r)
    ccall((:PAIR_FP256BN_initmp, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN},), r)
end

function PAIR_FP256BN_miller(res, r)
    ccall((:PAIR_FP256BN_miller, libamcl_pairing_FP256BN), Cvoid, (Ptr{FP12_FP256BN}, Ptr{FP12_FP256BN}), res, r)
end
# Julia wrapper for header: pair_FP512BN.h
# Automatically generated using Clang.jl


function PAIR_FP512BN_another(r, PV, QV)
    ccall((:PAIR_FP512BN_another, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{ECP2_FP512BN}, Ptr{ECP_FP512BN}), r, PV, QV)
end

function PAIR_FP512BN_ate(r, P, Q)
    ccall((:PAIR_FP512BN_ate, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{ECP2_FP512BN}, Ptr{ECP_FP512BN}), r, P, Q)
end

function PAIR_FP512BN_double_ate(r, P, Q, R, S)
    ccall((:PAIR_FP512BN_double_ate, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{ECP2_FP512BN}, Ptr{ECP_FP512BN}, Ptr{ECP2_FP512BN}, Ptr{ECP_FP512BN}), r, P, Q, R, S)
end

function PAIR_FP512BN_fexp(x)
    ccall((:PAIR_FP512BN_fexp, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN},), x)
end

function PAIR_FP512BN_G1mul(Q, b)
    ccall((:PAIR_FP512BN_G1mul, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP_FP512BN}, BIG_512_60), Q, b)
end

function PAIR_FP512BN_G2mul(P, b)
    ccall((:PAIR_FP512BN_G2mul, libamcl_pairing_FP512BN), Cvoid, (Ptr{ECP2_FP512BN}, BIG_512_60), P, b)
end

function PAIR_FP512BN_GTpow(x, b)
    ccall((:PAIR_FP512BN_GTpow, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, BIG_512_60), x, b)
end

function PAIR_FP512BN_GTmember(x)
    ccall((:PAIR_FP512BN_GTmember, libamcl_pairing_FP512BN), Cint, (Ptr{FP12_FP512BN},), x)
end

function PAIR_FP512BN_nbits(n3, n)
    ccall((:PAIR_FP512BN_nbits, libamcl_pairing_FP512BN), Cint, (BIG_512_60, BIG_512_60), n3, n)
end

function PAIR_FP512BN_initmp(r)
    ccall((:PAIR_FP512BN_initmp, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN},), r)
end

function PAIR_FP512BN_miller(res, r)
    ccall((:PAIR_FP512BN_miller, libamcl_pairing_FP512BN), Cvoid, (Ptr{FP12_FP512BN}, Ptr{FP12_FP512BN}), res, r)
end
# Julia wrapper for header: pbc_support.h
# Automatically generated using Clang.jl


function mhashit(sha, n, x, w)
    ccall((:mhashit, libamcl_core), Cvoid, (Cint, Cint, Ptr{octet}, Ptr{octet}), sha, n, x, w)
end

function today()
    ccall((:today, libamcl_core), UInt32, ())
end

function HASH_ALL(h, I, U, CU, Y, V, R, W, H)
    ccall((:HASH_ALL, libamcl_core), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), h, I, U, CU, Y, V, R, W, H)
end

function HASH_ID(h, ID, HID)
    ccall((:HASH_ID, libamcl_core), Cvoid, (Cint, Ptr{octet}, Ptr{octet}), h, ID, HID)
end

function GET_TIME()
    ccall((:GET_TIME, libamcl_core), UInt32, ())
end

function AES_GCM_ENCRYPT(K, IV, H, P, C, T)
    ccall((:AES_GCM_ENCRYPT, libamcl_core), Cvoid, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), K, IV, H, P, C, T)
end

function AES_GCM_DECRYPT(K, IV, H, C, P, T)
    ccall((:AES_GCM_DECRYPT, libamcl_core), Cvoid, (Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), K, IV, H, C, P, T)
end
# Julia wrapper for header: randapi.h
# Automatically generated using Clang.jl


function CREATE_CSPRNG(R, S)
    ccall((:CREATE_CSPRNG, libamcl_core), Cvoid, (Ptr{csprng}, Ptr{octet}), R, S)
end

function KILL_CSPRNG(R)
    ccall((:KILL_CSPRNG, libamcl_core), Cvoid, (Ptr{csprng},), R)
end
# Julia wrapper for header: rsa_2048.h
# Automatically generated using Clang.jl


function RSA_2048_KEY_PAIR(R, e, PRIV, PUB, P, Q)
    ccall((:RSA_2048_KEY_PAIR, libamcl_rsa_2048), Cvoid, (Ptr{csprng}, Int32, Ptr{rsa_private_key_2048}, Ptr{rsa_public_key_2048}, Ptr{octet}, Ptr{octet}), R, e, PRIV, PUB, P, Q)
end

function RSA_2048_ENCRYPT(PUB, F, G)
    ccall((:RSA_2048_ENCRYPT, libamcl_rsa_2048), Cvoid, (Ptr{rsa_public_key_2048}, Ptr{octet}, Ptr{octet}), PUB, F, G)
end

function RSA_2048_DECRYPT(PRIV, G, F)
    ccall((:RSA_2048_DECRYPT, libamcl_rsa_2048), Cvoid, (Ptr{rsa_private_key_2048}, Ptr{octet}, Ptr{octet}), PRIV, G, F)
end

function RSA_2048_PRIVATE_KEY_KILL(PRIV)
    ccall((:RSA_2048_PRIVATE_KEY_KILL, libamcl_rsa_2048), Cvoid, (Ptr{rsa_private_key_2048},), PRIV)
end

function RSA_2048_fromOctet(x, S)
    ccall((:RSA_2048_fromOctet, libamcl_rsa_2048), Cvoid, (Ptr{BIG_1024_58}, Ptr{octet}), x, S)
end
# Julia wrapper for header: rsa_3072.h
# Automatically generated using Clang.jl


function RSA_3072_KEY_PAIR(R, e, PRIV, PUB, P, Q)
    ccall((:RSA_3072_KEY_PAIR, libamcl_rsa_3072), Cvoid, (Ptr{csprng}, Int32, Ptr{rsa_private_key_3072}, Ptr{rsa_public_key_3072}, Ptr{octet}, Ptr{octet}), R, e, PRIV, PUB, P, Q)
end

function RSA_3072_ENCRYPT(PUB, F, G)
    ccall((:RSA_3072_ENCRYPT, libamcl_rsa_3072), Cvoid, (Ptr{rsa_public_key_3072}, Ptr{octet}, Ptr{octet}), PUB, F, G)
end

function RSA_3072_DECRYPT(PRIV, G, F)
    ccall((:RSA_3072_DECRYPT, libamcl_rsa_3072), Cvoid, (Ptr{rsa_private_key_3072}, Ptr{octet}, Ptr{octet}), PRIV, G, F)
end

function RSA_3072_PRIVATE_KEY_KILL(PRIV)
    ccall((:RSA_3072_PRIVATE_KEY_KILL, libamcl_rsa_3072), Cvoid, (Ptr{rsa_private_key_3072},), PRIV)
end

function RSA_3072_fromOctet(x, S)
    ccall((:RSA_3072_fromOctet, libamcl_rsa_3072), Cvoid, (Ptr{BIG_384_56}, Ptr{octet}), x, S)
end
# Julia wrapper for header: rsa_4096.h
# Automatically generated using Clang.jl


function RSA_4096_KEY_PAIR(R, e, PRIV, PUB, P, Q)
    ccall((:RSA_4096_KEY_PAIR, libamcl_rsa_4096), Cvoid, (Ptr{csprng}, Int32, Ptr{rsa_private_key_4096}, Ptr{rsa_public_key_4096}, Ptr{octet}, Ptr{octet}), R, e, PRIV, PUB, P, Q)
end

function RSA_4096_ENCRYPT(PUB, F, G)
    ccall((:RSA_4096_ENCRYPT, libamcl_rsa_4096), Cvoid, (Ptr{rsa_public_key_4096}, Ptr{octet}, Ptr{octet}), PUB, F, G)
end

function RSA_4096_DECRYPT(PRIV, G, F)
    ccall((:RSA_4096_DECRYPT, libamcl_rsa_4096), Cvoid, (Ptr{rsa_private_key_4096}, Ptr{octet}, Ptr{octet}), PRIV, G, F)
end

function RSA_4096_PRIVATE_KEY_KILL(PRIV)
    ccall((:RSA_4096_PRIVATE_KEY_KILL, libamcl_rsa_4096), Cvoid, (Ptr{rsa_private_key_4096},), PRIV)
end

function RSA_4096_fromOctet(x, S)
    ccall((:RSA_4096_fromOctet, libamcl_rsa_4096), Cvoid, (Ptr{BIG_512_60}, Ptr{octet}), x, S)
end
# Julia wrapper for header: rsa_support.h
# Automatically generated using Clang.jl


function PKCS15(h, M, W)
    ccall((:PKCS15, libamcl_core), Cint, (Cint, Ptr{octet}, Ptr{octet}), h, M, W)
end

function OAEP_ENCODE(h, M, R, P, F)
    ccall((:OAEP_ENCODE, libamcl_core), Cint, (Cint, Ptr{octet}, Ptr{csprng}, Ptr{octet}, Ptr{octet}), h, M, R, P, F)
end

function OAEP_DECODE(h, P, F)
    ccall((:OAEP_DECODE, libamcl_core), Cint, (Cint, Ptr{octet}, Ptr{octet}), h, P, F)
end
# Julia wrapper for header: utils.h
# Automatically generated using Clang.jl


function amcl_hex2bin(src, dst, src_len)
    ccall((:amcl_hex2bin, libamcl_core), Cvoid, (Cstring, Cstring, Cint), src, dst, src_len)
end

function amcl_bin2hex(src, dst, src_len)
    ccall((:amcl_bin2hex, libamcl_core), Cvoid, (Cstring, Cstring, Cint), src, dst, src_len)
end

function amcl_print_hex(src, src_len)
    ccall((:amcl_print_hex, libamcl_core), Cvoid, (Cstring, Cint), src, src_len)
end

function generateRandom(RNG, randomValue)
    ccall((:generateRandom, libamcl_core), Cvoid, (Ptr{csprng}, Ptr{octet}), RNG, randomValue)
end

function generateOTP(RNG)
    ccall((:generateOTP, libamcl_core), Cint, (Ptr{csprng},), RNG)
end
# Julia wrapper for header: version.h
# Automatically generated using Clang.jl


function amcl_version()
    ccall((:amcl_version, libamcl_core), Cvoid, ())
end
# Julia wrapper for header: wcc192_BLS24.h
# Automatically generated using Clang.jl


function WCC_BLS24_RANDOM_GENERATE(RNG, S)
    ccall((:WCC_BLS24_RANDOM_GENERATE, libamcl_wcc_BLS24), Cint, (Ptr{csprng}, Ptr{octet}), RNG, S)
end

function WCC_BLS24_Hq(sha, A, B, C, D, h)
    ccall((:WCC_BLS24_Hq, libamcl_wcc_BLS24), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, A, B, C, D, h)
end

function WCC_BLS24_GET_G2_MULTIPLE(S, HID, VG2)
    ccall((:WCC_BLS24_GET_G2_MULTIPLE, libamcl_wcc_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG2)
end

function WCC_BLS24_GET_G1_MULTIPLE(S, HID, VG1)
    ccall((:WCC_BLS24_GET_G1_MULTIPLE, libamcl_wcc_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG1)
end

function WCC_BLS24_SENDER_KEY(sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
    ccall((:WCC_BLS24_SENDER_KEY, libamcl_wcc_BLS24), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
end

function WCC_BLS24_RECEIVER_KEY(sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
    ccall((:WCC_BLS24_RECEIVER_KEY, libamcl_wcc_BLS24), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
end

function WCC_BLS24_RECOMBINE_G1(R1, R2, R)
    ccall((:WCC_BLS24_RECOMBINE_G1, libamcl_wcc_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function WCC_BLS24_RECOMBINE_G2(W1, W2, W)
    ccall((:WCC_BLS24_RECOMBINE_G2, libamcl_wcc_BLS24), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end
# Julia wrapper for header: wcc256_BLS48.h
# Automatically generated using Clang.jl


function WCC_BLS48_RANDOM_GENERATE(RNG, S)
    ccall((:WCC_BLS48_RANDOM_GENERATE, libamcl_wcc_BLS48), Cint, (Ptr{csprng}, Ptr{octet}), RNG, S)
end

function WCC_BLS48_Hq(sha, A, B, C, D, h)
    ccall((:WCC_BLS48_Hq, libamcl_wcc_BLS48), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, A, B, C, D, h)
end

function WCC_BLS48_GET_G2_MULTIPLE(S, HID, VG2)
    ccall((:WCC_BLS48_GET_G2_MULTIPLE, libamcl_wcc_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG2)
end

function WCC_BLS48_GET_G1_MULTIPLE(S, HID, VG1)
    ccall((:WCC_BLS48_GET_G1_MULTIPLE, libamcl_wcc_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG1)
end

function WCC_BLS48_SENDER_KEY(sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
    ccall((:WCC_BLS48_SENDER_KEY, libamcl_wcc_BLS48), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
end

function WCC_BLS48_RECEIVER_KEY(sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
    ccall((:WCC_BLS48_RECEIVER_KEY, libamcl_wcc_BLS48), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
end

function WCC_BLS48_RECOMBINE_G1(R1, R2, R)
    ccall((:WCC_BLS48_RECOMBINE_G1, libamcl_wcc_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function WCC_BLS48_RECOMBINE_G2(W1, W2, W)
    ccall((:WCC_BLS48_RECOMBINE_G2, libamcl_wcc_BLS48), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end
# Julia wrapper for header: wcc_BLS381.h
# Automatically generated using Clang.jl


function WCC_BLS381_RANDOM_GENERATE(RNG, S)
    ccall((:WCC_BLS381_RANDOM_GENERATE, libamcl_wcc_BLS381), Cint, (Ptr{csprng}, Ptr{octet}), RNG, S)
end

function WCC_BLS381_Hq(sha, A, B, C, D, h)
    ccall((:WCC_BLS381_Hq, libamcl_wcc_BLS381), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, A, B, C, D, h)
end

function WCC_BLS381_GET_G2_MULTIPLE(S, HID, VG2)
    ccall((:WCC_BLS381_GET_G2_MULTIPLE, libamcl_wcc_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG2)
end

function WCC_BLS381_GET_G1_MULTIPLE(S, HID, VG1)
    ccall((:WCC_BLS381_GET_G1_MULTIPLE, libamcl_wcc_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG1)
end

function WCC_BLS381_SENDER_KEY(sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
    ccall((:WCC_BLS381_SENDER_KEY, libamcl_wcc_BLS381), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
end

function WCC_BLS381_RECEIVER_KEY(sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
    ccall((:WCC_BLS381_RECEIVER_KEY, libamcl_wcc_BLS381), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
end

function WCC_BLS381_RECOMBINE_G1(R1, R2, R)
    ccall((:WCC_BLS381_RECOMBINE_G1, libamcl_wcc_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function WCC_BLS381_RECOMBINE_G2(W1, W2, W)
    ccall((:WCC_BLS381_RECOMBINE_G2, libamcl_wcc_BLS381), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end
# Julia wrapper for header: wcc_BLS383.h
# Automatically generated using Clang.jl


function WCC_BLS383_RANDOM_GENERATE(RNG, S)
    ccall((:WCC_BLS383_RANDOM_GENERATE, libamcl_wcc_BLS383), Cint, (Ptr{csprng}, Ptr{octet}), RNG, S)
end

function WCC_BLS383_Hq(sha, A, B, C, D, h)
    ccall((:WCC_BLS383_Hq, libamcl_wcc_BLS383), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, A, B, C, D, h)
end

function WCC_BLS383_GET_G2_MULTIPLE(S, HID, VG2)
    ccall((:WCC_BLS383_GET_G2_MULTIPLE, libamcl_wcc_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG2)
end

function WCC_BLS383_GET_G1_MULTIPLE(S, HID, VG1)
    ccall((:WCC_BLS383_GET_G1_MULTIPLE, libamcl_wcc_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG1)
end

function WCC_BLS383_SENDER_KEY(sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
    ccall((:WCC_BLS383_SENDER_KEY, libamcl_wcc_BLS383), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
end

function WCC_BLS383_RECEIVER_KEY(sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
    ccall((:WCC_BLS383_RECEIVER_KEY, libamcl_wcc_BLS383), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
end

function WCC_BLS383_RECOMBINE_G1(R1, R2, R)
    ccall((:WCC_BLS383_RECOMBINE_G1, libamcl_wcc_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function WCC_BLS383_RECOMBINE_G2(W1, W2, W)
    ccall((:WCC_BLS383_RECOMBINE_G2, libamcl_wcc_BLS383), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end
# Julia wrapper for header: wcc_BLS461.h
# Automatically generated using Clang.jl


function WCC_BLS461_RANDOM_GENERATE(RNG, S)
    ccall((:WCC_BLS461_RANDOM_GENERATE, libamcl_wcc_BLS461), Cint, (Ptr{csprng}, Ptr{octet}), RNG, S)
end

function WCC_BLS461_Hq(sha, A, B, C, D, h)
    ccall((:WCC_BLS461_Hq, libamcl_wcc_BLS461), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, A, B, C, D, h)
end

function WCC_BLS461_GET_G2_MULTIPLE(S, HID, VG2)
    ccall((:WCC_BLS461_GET_G2_MULTIPLE, libamcl_wcc_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG2)
end

function WCC_BLS461_GET_G1_MULTIPLE(S, HID, VG1)
    ccall((:WCC_BLS461_GET_G1_MULTIPLE, libamcl_wcc_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG1)
end

function WCC_BLS461_SENDER_KEY(sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
    ccall((:WCC_BLS461_SENDER_KEY, libamcl_wcc_BLS461), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
end

function WCC_BLS461_RECEIVER_KEY(sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
    ccall((:WCC_BLS461_RECEIVER_KEY, libamcl_wcc_BLS461), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
end

function WCC_BLS461_RECOMBINE_G1(R1, R2, R)
    ccall((:WCC_BLS461_RECOMBINE_G1, libamcl_wcc_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function WCC_BLS461_RECOMBINE_G2(W1, W2, W)
    ccall((:WCC_BLS461_RECOMBINE_G2, libamcl_wcc_BLS461), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end
# Julia wrapper for header: wcc_BN254.h
# Automatically generated using Clang.jl


function WCC_BN254_RANDOM_GENERATE(RNG, S)
    ccall((:WCC_BN254_RANDOM_GENERATE, libamcl_wcc_BN254), Cint, (Ptr{csprng}, Ptr{octet}), RNG, S)
end

function WCC_BN254_Hq(sha, A, B, C, D, h)
    ccall((:WCC_BN254_Hq, libamcl_wcc_BN254), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, A, B, C, D, h)
end

function WCC_BN254_GET_G2_MULTIPLE(S, HID, VG2)
    ccall((:WCC_BN254_GET_G2_MULTIPLE, libamcl_wcc_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG2)
end

function WCC_BN254_GET_G1_MULTIPLE(S, HID, VG1)
    ccall((:WCC_BN254_GET_G1_MULTIPLE, libamcl_wcc_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG1)
end

function WCC_BN254_SENDER_KEY(sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
    ccall((:WCC_BN254_SENDER_KEY, libamcl_wcc_BN254), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
end

function WCC_BN254_RECEIVER_KEY(sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
    ccall((:WCC_BN254_RECEIVER_KEY, libamcl_wcc_BN254), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
end

function WCC_BN254_RECOMBINE_G1(R1, R2, R)
    ccall((:WCC_BN254_RECOMBINE_G1, libamcl_wcc_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function WCC_BN254_RECOMBINE_G2(W1, W2, W)
    ccall((:WCC_BN254_RECOMBINE_G2, libamcl_wcc_BN254), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end
# Julia wrapper for header: wcc_BN254CX.h
# Automatically generated using Clang.jl


function WCC_BN254CX_RANDOM_GENERATE(RNG, S)
    ccall((:WCC_BN254CX_RANDOM_GENERATE, libamcl_wcc_BN254CX), Cint, (Ptr{csprng}, Ptr{octet}), RNG, S)
end

function WCC_BN254CX_Hq(sha, A, B, C, D, h)
    ccall((:WCC_BN254CX_Hq, libamcl_wcc_BN254CX), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, A, B, C, D, h)
end

function WCC_BN254CX_GET_G2_MULTIPLE(S, HID, VG2)
    ccall((:WCC_BN254CX_GET_G2_MULTIPLE, libamcl_wcc_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG2)
end

function WCC_BN254CX_GET_G1_MULTIPLE(S, HID, VG1)
    ccall((:WCC_BN254CX_GET_G1_MULTIPLE, libamcl_wcc_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG1)
end

function WCC_BN254CX_SENDER_KEY(sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
    ccall((:WCC_BN254CX_SENDER_KEY, libamcl_wcc_BN254CX), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
end

function WCC_BN254CX_RECEIVER_KEY(sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
    ccall((:WCC_BN254CX_RECEIVER_KEY, libamcl_wcc_BN254CX), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
end

function WCC_BN254CX_RECOMBINE_G1(R1, R2, R)
    ccall((:WCC_BN254CX_RECOMBINE_G1, libamcl_wcc_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function WCC_BN254CX_RECOMBINE_G2(W1, W2, W)
    ccall((:WCC_BN254CX_RECOMBINE_G2, libamcl_wcc_BN254CX), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end
# Julia wrapper for header: wcc_FP256BN.h
# Automatically generated using Clang.jl


function WCC_FP256BN_RANDOM_GENERATE(RNG, S)
    ccall((:WCC_FP256BN_RANDOM_GENERATE, libamcl_wcc_FP256BN), Cint, (Ptr{csprng}, Ptr{octet}), RNG, S)
end

function WCC_FP256BN_Hq(sha, A, B, C, D, h)
    ccall((:WCC_FP256BN_Hq, libamcl_wcc_FP256BN), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, A, B, C, D, h)
end

function WCC_FP256BN_GET_G2_MULTIPLE(S, HID, VG2)
    ccall((:WCC_FP256BN_GET_G2_MULTIPLE, libamcl_wcc_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG2)
end

function WCC_FP256BN_GET_G1_MULTIPLE(S, HID, VG1)
    ccall((:WCC_FP256BN_GET_G1_MULTIPLE, libamcl_wcc_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG1)
end

function WCC_FP256BN_SENDER_KEY(sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
    ccall((:WCC_FP256BN_SENDER_KEY, libamcl_wcc_FP256BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
end

function WCC_FP256BN_RECEIVER_KEY(sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
    ccall((:WCC_FP256BN_RECEIVER_KEY, libamcl_wcc_FP256BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
end

function WCC_FP256BN_RECOMBINE_G1(R1, R2, R)
    ccall((:WCC_FP256BN_RECOMBINE_G1, libamcl_wcc_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function WCC_FP256BN_RECOMBINE_G2(W1, W2, W)
    ccall((:WCC_FP256BN_RECOMBINE_G2, libamcl_wcc_FP256BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end
# Julia wrapper for header: wcc_FP512BN.h
# Automatically generated using Clang.jl


function WCC_FP512BN_RANDOM_GENERATE(RNG, S)
    ccall((:WCC_FP512BN_RANDOM_GENERATE, libamcl_wcc_FP512BN), Cint, (Ptr{csprng}, Ptr{octet}), RNG, S)
end

function WCC_FP512BN_Hq(sha, A, B, C, D, h)
    ccall((:WCC_FP512BN_Hq, libamcl_wcc_FP512BN), Cvoid, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, A, B, C, D, h)
end

function WCC_FP512BN_GET_G2_MULTIPLE(S, HID, VG2)
    ccall((:WCC_FP512BN_GET_G2_MULTIPLE, libamcl_wcc_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG2)
end

function WCC_FP512BN_GET_G1_MULTIPLE(S, HID, VG1)
    ccall((:WCC_FP512BN_GET_G1_MULTIPLE, libamcl_wcc_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), S, HID, VG1)
end

function WCC_FP512BN_SENDER_KEY(sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
    ccall((:WCC_FP512BN_SENDER_KEY, libamcl_wcc_FP512BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, xOct, piaOct, pibOct, PbG2Oct, PgG1Oct, AKeyG1Oct, IdBOct, AESKeyOct)
end

function WCC_FP512BN_RECEIVER_KEY(sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
    ccall((:WCC_FP512BN_RECEIVER_KEY, libamcl_wcc_FP512BN), Cint, (Cint, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}, Ptr{octet}), sha, yOct, wOct, piaOct, pibOct, PaG1Oct, PgG1Oct, BKeyG2Oct, IdAOct, AESKeyOct)
end

function WCC_FP512BN_RECOMBINE_G1(R1, R2, R)
    ccall((:WCC_FP512BN_RECOMBINE_G1, libamcl_wcc_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), R1, R2, R)
end

function WCC_FP512BN_RECOMBINE_G2(W1, W2, W)
    ccall((:WCC_FP512BN_RECOMBINE_G2, libamcl_wcc_FP512BN), Cint, (Ptr{octet}, Ptr{octet}, Ptr{octet}), W1, W2, W)
end
# Julia wrapper for header: x509.h
# Automatically generated using Clang.jl


function X509_extract_cert_sig(c, s)
    ccall((:X509_extract_cert_sig, libamcl_x509), pktype, (Ptr{octet}, Ptr{octet}), c, s)
end

function X509_extract_cert(sc, c)
    ccall((:X509_extract_cert, libamcl_x509), Cint, (Ptr{octet}, Ptr{octet}), sc, c)
end

function X509_extract_public_key(c, k)
    ccall((:X509_extract_public_key, libamcl_x509), pktype, (Ptr{octet}, Ptr{octet}), c, k)
end

function X509_find_issuer(c)
    ccall((:X509_find_issuer, libamcl_x509), Cint, (Ptr{octet},), c)
end

function X509_find_validity(c)
    ccall((:X509_find_validity, libamcl_x509), Cint, (Ptr{octet},), c)
end

function X509_find_subject(c)
    ccall((:X509_find_subject, libamcl_x509), Cint, (Ptr{octet},), c)
end

function X509_find_entity_property(c, S, s, f)
    ccall((:X509_find_entity_property, libamcl_x509), Cint, (Ptr{octet}, Ptr{octet}, Cint, Ptr{Cint}), c, S, s, f)
end

function X509_find_start_date(c, s)
    ccall((:X509_find_start_date, libamcl_x509), Cint, (Ptr{octet}, Cint), c, s)
end

function X509_find_expiry_date(c, s)
    ccall((:X509_find_expiry_date, libamcl_x509), Cint, (Ptr{octet}, Cint), c, s)
end
