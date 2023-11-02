.class public final Lcom/vivox/sdk/CryptoFunctionsAdapter;
.super Lcom/vivox/sdk/jni/ICryptoFunctions;
.source "CryptoFunctionsAdapter.java"


# static fields
.field private static mInstance:Lcom/vivox/sdk/CryptoFunctionsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/vivox/sdk/CryptoFunctionsAdapter;

    invoke-direct {v0}, Lcom/vivox/sdk/CryptoFunctionsAdapter;-><init>()V

    sput-object v0, Lcom/vivox/sdk/CryptoFunctionsAdapter;->mInstance:Lcom/vivox/sdk/CryptoFunctionsAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/vivox/sdk/jni/ICryptoFunctions;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivox/sdk/CryptoFunctionsAdapter;
    .locals 1

    .line 9
    sget-object v0, Lcom/vivox/sdk/CryptoFunctionsAdapter;->mInstance:Lcom/vivox/sdk/CryptoFunctionsAdapter;

    return-object v0
.end method


# virtual methods
.method public base64Decode([B)[B
    .locals 1

    .line 37
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/CryptoFunctions;->base64Decode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public base64Encode([B)[B
    .locals 1

    .line 32
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/CryptoFunctions;->base64Encode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public createCrypt([BI)I
    .locals 1

    .line 67
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vivox/sdk/CryptoFunctions;->createCrypt([BI)I

    move-result p1

    return p1
.end method

.method public decAes(I[B[B)[B
    .locals 1

    .line 52
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivox/sdk/CryptoFunctions;->decAes(I[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public decRsaPriv(I[B)[B
    .locals 1

    .line 62
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vivox/sdk/CryptoFunctions;->decRsaPriv(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public destroyCrypt(I)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/CryptoFunctions;->destroyCrypt(I)V

    return-void
.end method

.method public encAes(I[B[B)[B
    .locals 1

    .line 47
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivox/sdk/CryptoFunctions;->encAes(I[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encRsaPub(I[B)[B
    .locals 1

    .line 57
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vivox/sdk/CryptoFunctions;->encRsaPub(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public md5Base64([B)[B
    .locals 2

    .line 17
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vivox/sdk/CryptoFunctions;->md5([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/CryptoFunctions;->base64Encode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public randBytes(II)[B
    .locals 1

    .line 77
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vivox/sdk/CryptoFunctions;->randBytes(II)[B

    move-result-object p1

    return-object p1
.end method

.method public setAesKey(I[B)V
    .locals 1

    .line 42
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vivox/sdk/CryptoFunctions;->setAesKey(I[B)V

    return-void
.end method

.method public sha1Base64([B)[B
    .locals 2

    .line 22
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vivox/sdk/CryptoFunctions;->sha1([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/CryptoFunctions;->base64Encode([B)[B

    move-result-object p1

    return-object p1
.end method

.method public sha256Hmac([B[B)[B
    .locals 1

    .line 27
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctions;->getInstance()Lcom/vivox/sdk/CryptoFunctions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vivox/sdk/CryptoFunctions;->sha256Hmac([B[B)[B

    move-result-object p1

    return-object p1
.end method
