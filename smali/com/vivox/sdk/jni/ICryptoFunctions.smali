.class public Lcom/vivox/sdk/jni/ICryptoFunctions;
.super Ljava/lang/Object;
.source "ICryptoFunctions.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->new_ICryptoFunctions()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vivox/sdk/jni/ICryptoFunctions;-><init>(JZ)V

    .line 56
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_director_connect(Lcom/vivox/sdk/jni/ICryptoFunctions;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/vivox/sdk/jni/ICryptoFunctions;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public base64Decode([B)[B
    .locals 2

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_base64Decode(JLcom/vivox/sdk/jni/ICryptoFunctions;[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_base64DecodeSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public base64Encode([B)[B
    .locals 2

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_base64Encode(JLcom/vivox/sdk/jni/ICryptoFunctions;[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_base64EncodeSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public createCrypt([BI)I
    .locals 2

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_createCrypt(JLcom/vivox/sdk/jni/ICryptoFunctions;[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_createCryptSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;[BI)I

    move-result p1

    :goto_0
    return p1
.end method

.method public decAes(I[B[B)[B
    .locals 8

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v2, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_decAes(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_decAesSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public decRsaPriv(I[B)[B
    .locals 2

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_decRsaPriv(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_decRsaPrivSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 30
    :try_start_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 31
    iget-boolean v4, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/vivox/sdk/jni/androidsdkJNI;->delete_ICryptoFunctions(J)V

    .line 35
    :cond_0
    iput-wide v2, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyCrypt(I)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_destroyCrypt(JLcom/vivox/sdk/jni/ICryptoFunctions;I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_destroyCryptSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;I)V

    :goto_0
    return-void
.end method

.method public encAes(I[B[B)[B
    .locals 8

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v2, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_encAes(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_encAesSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public encRsaPub(I[B)[B
    .locals 2

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_encRsaPub(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_encRsaPubSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected finalize()V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/ICryptoFunctions;->delete()V

    return-void
.end method

.method public md5Base64([B)[B
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_md5Base64(JLcom/vivox/sdk/jni/ICryptoFunctions;[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_md5Base64SwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public randBytes(II)[B
    .locals 2

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_randBytes(JLcom/vivox/sdk/jni/ICryptoFunctions;II)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_randBytesSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;II)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setAesKey(I[B)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_setAesKey(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_setAesKeySwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;I[B)V

    :goto_0
    return-void
.end method

.method public sha1Base64([B)[B
    .locals 2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_sha1Base64(JLcom/vivox/sdk/jni/ICryptoFunctions;[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_sha1Base64SwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public sha256Hmac([B[B)[B
    .locals 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/ICryptoFunctions;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_sha256Hmac(JLcom/vivox/sdk/jni/ICryptoFunctions;[B[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_sha256HmacSwigExplicitICryptoFunctions(JLcom/vivox/sdk/jni/ICryptoFunctions;[B[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCMemOwn:Z

    .line 41
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/ICryptoFunctions;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCMemOwn:Z

    .line 46
    iget-wide v1, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_change_ownership(Lcom/vivox/sdk/jni/ICryptoFunctions;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCMemOwn:Z

    .line 51
    iget-wide v1, p0, Lcom/vivox/sdk/jni/ICryptoFunctions;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->ICryptoFunctions_change_ownership(Lcom/vivox/sdk/jni/ICryptoFunctions;JZ)V

    return-void
.end method
