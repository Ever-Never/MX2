.class public Landroid/webkit/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final BASE64_PAD:B = 0x3dt

.field private static final BASE64_TABLE:[B

.field private static PUBLIC_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "MEIZU_FRAME_GROUP_924kn#sfay"

    sput-object v0, Landroid/webkit/Utility;->PUBLIC_KEY:Ljava/lang/String;

    .line 131
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/webkit/Utility;->BASE64_TABLE:[B

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeBase64(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 187
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 192
    .local v2, bytes:[B
    new-instance v4, Landroid/webkit/Base64InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Landroid/webkit/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    .local v4, is:Landroid/webkit/Base64InputStream;
    const/4 v0, 0x0

    .line 196
    .local v0, b:I
    :goto_0
    invoke-virtual {v4}, Landroid/webkit/Base64InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 197
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Landroid/webkit/Base64InputStream;
    :catch_0
    move-exception v3

    .line 200
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static decodePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "password"

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v3, 0x0

    .line 126
    :goto_0
    return-object v3

    .line 89
    :cond_0
    invoke-static {p0}, Landroid/webkit/Utility;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v6

    .line 91
    .local v6, result:[B
    const/4 v3, 0x0

    .line 94
    .local v3, newPassword:Ljava/lang/String;
    :try_start_0
    const-string v11, "AES"

    invoke-static {v11}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 95
    .local v2, kgen:Ljavax/crypto/KeyGenerator;
    const-string v11, "SHA1PRNG"

    const-string v12, "Crypto"

    invoke-static {v11, v12}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v8

    .line 96
    .local v8, secrand:Ljava/security/SecureRandom;
    sget-object v11, Landroid/webkit/Utility;->PUBLIC_KEY:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 97
    const/16 v11, 0x80

    invoke-virtual {v2, v11, v8}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 99
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 101
    .local v9, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    .line 103
    .local v5, raw:[B
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    const-string v11, "AES"

    invoke-direct {v10, v5, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 105
    .local v10, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v11, "AES"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 106
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v11, 0x2

    invoke-virtual {v0, v11, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 108
    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 110
    .local v7, result2:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5

    .end local v3           #newPassword:Ljava/lang/String;
    .local v4, newPassword:Ljava/lang/String;
    move-object v3, v4

    .line 124
    .end local v4           #newPassword:Ljava/lang/String;
    .restart local v3       #newPassword:Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v5           #raw:[B
    .end local v7           #result2:[B
    .end local v8           #secrand:Ljava/security/SecureRandom;
    .end local v9           #skey:Ljavax/crypto/SecretKey;
    .end local v10           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 114
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 117
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 119
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v1

    .line 121
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v1

    .line 123
    .local v1, e:Ljava/security/NoSuchProviderException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static encodeB([B)Ljava/lang/String;
    .locals 7
    .parameter "bytes"

    .prologue
    const/16 v6, 0x3d

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 152
    .local v2, idx:I
    array-length v1, p0

    .line 153
    .local v1, end:I
    :goto_0
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_0

    .line 154
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 156
    .local v0, data:I
    sget-object v4, Landroid/webkit/Utility;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    sget-object v4, Landroid/webkit/Utility;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    sget-object v4, Landroid/webkit/Utility;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    sget-object v4, Landroid/webkit/Utility;->BASE64_TABLE:[B

    and-int/lit8 v5, v0, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 162
    .end local v0           #data:I
    :cond_0
    add-int/lit8 v4, v1, -0x2

    if-ne v2, v4, :cond_2

    .line 163
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int v0, v4, v5

    .line 164
    .restart local v0       #data:I
    sget-object v4, Landroid/webkit/Utility;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    sget-object v4, Landroid/webkit/Utility;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    sget-object v4, Landroid/webkit/Utility;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .end local v0           #data:I
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 169
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_1

    .line 170
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v0, v4, 0x10

    .line 171
    .restart local v0       #data:I
    sget-object v4, Landroid/webkit/Utility;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    sget-object v4, Landroid/webkit/Utility;->BASE64_TABLE:[B

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static encodePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "password"

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v3, 0x0

    .line 81
    :goto_0
    return-object v3

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 49
    .local v3, newPassword:Ljava/lang/String;
    :try_start_0
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 50
    .local v2, kgen:Ljavax/crypto/KeyGenerator;
    const-string v9, "SHA1PRNG"

    const-string v10, "Crypto"

    invoke-static {v9, v10}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v6

    .line 51
    .local v6, secrand:Ljava/security/SecureRandom;
    sget-object v9, Landroid/webkit/Utility;->PUBLIC_KEY:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 52
    const/16 v9, 0x80

    invoke-virtual {v2, v9, v6}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 54
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 56
    .local v7, skey:Ljavax/crypto/SecretKey;
    invoke-interface {v7}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    .line 58
    .local v4, raw:[B
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v4, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 60
    .local v8, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v9, "AES"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 61
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v0, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 65
    .local v5, result:[B
    invoke-static {v5}, Landroid/webkit/Utility;->encodeB([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    goto :goto_0

    .line 67
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #kgen:Ljavax/crypto/KeyGenerator;
    .end local v4           #raw:[B
    .end local v5           #result:[B
    .end local v6           #secrand:Ljava/security/SecureRandom;
    .end local v7           #skey:Ljavax/crypto/SecretKey;
    .end local v8           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 72
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 74
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v1

    .line 76
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v1

    .line 78
    .local v1, e:Ljava/security/NoSuchProviderException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
