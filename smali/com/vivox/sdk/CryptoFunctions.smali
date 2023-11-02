.class final Lcom/vivox/sdk/CryptoFunctions;
.super Ljava/lang/Object;
.source "CryptoFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/CryptoFunctions$CryptoFunctionsHolder;
    }
.end annotation


# static fields
.field private static final AES_CIPHER:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final RSA_CIPHER:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"


# instance fields
.field private mAesKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mNextId:I

.field private final mRsaPrivateKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mRsaPublicKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mAesKeys:Ljava/util/Map;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mRsaPublicKeys:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mRsaPrivateKeys:Ljava/util/Map;

    const/4 v0, 0x1

    .line 197
    iput v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mNextId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivox/sdk/CryptoFunctions$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/vivox/sdk/CryptoFunctions;-><init>()V

    return-void
.end method

.method private encDecAes(I[B[BI)[B
    .locals 3

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mAesKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 108
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 109
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 111
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p4, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 112
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 124
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 122
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 120
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 118
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception p1

    .line 116
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_5
    move-exception p1

    .line 114
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getInstance()Lcom/vivox/sdk/CryptoFunctions;
    .locals 1

    .line 41
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions$CryptoFunctionsHolder;->access$100()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    return-object v0
.end method

.method private hashFunction([BLjava/lang/String;)[B
    .locals 0

    .line 51
    :try_start_0
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    .line 52
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method private readPemSection([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 168
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 169
    :try_start_1
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v8, v4

    .line 174
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v8, v2

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 186
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array p3, v1, [Ljava/io/Closeable;

    aput-object v6, p3, v4

    aput-object p1, p3, v2

    aput-object v5, p3, v0

    .line 190
    invoke-static {p3}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object p2

    :cond_3
    if-eqz v8, :cond_0

    .line 182
    :try_start_4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v6, v3

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p1, v3

    goto :goto_3

    :catch_2
    move-exception p2

    move-object p1, v3

    move-object v6, p1

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object p1, v3

    move-object v5, p1

    goto :goto_3

    :catch_3
    move-exception p2

    move-object p1, v3

    move-object v5, p1

    move-object v6, v5

    .line 188
    :goto_2
    :try_start_5
    invoke-static {p2}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    new-array p2, v1, [Ljava/io/Closeable;

    aput-object v6, p2, v4

    aput-object p1, p2, v2

    aput-object v5, p2, v0

    .line 190
    invoke-static {p2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object v3

    :catchall_3
    move-exception p2

    move-object v3, v6

    :goto_3
    new-array p3, v1, [Ljava/io/Closeable;

    aput-object v3, p3, v4

    aput-object p1, p3, v2

    aput-object v5, p3, v0

    invoke-static {p3}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 191
    throw p2
.end method


# virtual methods
.method public base64Decode([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public base64Encode([B)[B
    .locals 1

    const/4 v0, 0x2

    .line 88
    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public createCrypt([BI)I
    .locals 2

    const-string v0, "RSA"

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    .line 237
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createCrypt: invalid mode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 234
    :cond_0
    iget p1, p0, Lcom/vivox/sdk/CryptoFunctions;->mNextId:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/vivox/sdk/CryptoFunctions;->mNextId:I

    return p1

    :cond_1
    const-string p2, "-----BEGIN PRIVATE KEY-----"

    const-string v1, "-----END PRIVATE KEY-----"

    .line 219
    invoke-direct {p0, p1, p2, v1}, Lcom/vivox/sdk/CryptoFunctions;->readPemSection([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_3

    .line 220
    array-length v1, p2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :cond_3
    :goto_0
    if-eqz p1, :cond_7

    .line 226
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    .line 227
    iget p2, p0, Lcom/vivox/sdk/CryptoFunctions;->mNextId:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mNextId:I

    .line 228
    iget-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mRsaPrivateKeys:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2

    :cond_4
    const-string p2, "-----BEGIN PUBLIC KEY-----"

    const-string v1, "-----END PUBLIC KEY-----"

    .line 204
    invoke-direct {p0, p1, p2, v1}, Lcom/vivox/sdk/CryptoFunctions;->readPemSection([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_6

    .line 205
    array-length v1, p2

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, p2

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 210
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 212
    iget p2, p0, Lcom/vivox/sdk/CryptoFunctions;->mNextId:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mNextId:I

    .line 213
    iget-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mRsaPublicKeys:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    .line 244
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 242
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public decAes(I[B[B)[B
    .locals 1

    const/4 v0, 0x2

    .line 134
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vivox/sdk/CryptoFunctions;->encDecAes(I[B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public decRsaPriv(I[B)[B
    .locals 3

    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 154
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 155
    iget-object v2, p0, Lcom/vivox/sdk/CryptoFunctions;->mRsaPrivateKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Key;

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 156
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 158
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public destroyCrypt(I)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mRsaPrivateKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mRsaPublicKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mAesKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public encAes(I[B[B)[B
    .locals 1

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vivox/sdk/CryptoFunctions;->encDecAes(I[B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public encRsaPub(I[B)[B
    .locals 3

    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 143
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 144
    iget-object v2, p0, Lcom/vivox/sdk/CryptoFunctions;->mRsaPublicKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Key;

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 145
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 147
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public md5([B)[B
    .locals 1

    const-string v0, "MD5"

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/vivox/sdk/CryptoFunctions;->hashFunction([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public randBytes(II)[B
    .locals 0

    .line 257
    new-array p1, p2, [B

    .line 258
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public setAesKey(I[B)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/vivox/sdk/CryptoFunctions;->mAesKeys:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sha1([B)[B
    .locals 1

    const-string v0, "SHA-1"

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/vivox/sdk/CryptoFunctions;->hashFunction([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sha256([B)[B
    .locals 1

    const-string v0, "SHA-256"

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/vivox/sdk/CryptoFunctions;->hashFunction([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sha256Hmac([B[B)[B
    .locals 3

    const-string v0, "HmacSHA256"

    .line 74
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 75
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 76
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 77
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 82
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    :catch_1
    move-exception p1

    .line 79
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
