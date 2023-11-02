.class public Lcom/vivox/sdk/jni/IHttpUrl;
.super Ljava/lang/Object;
.source "IHttpUrl.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->new_IHttpUrl()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vivox/sdk/jni/IHttpUrl;-><init>(JZ)V

    .line 56
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/vivox/sdk/jni/androidsdkJNI;->IHttpUrl_director_connect(Lcom/vivox/sdk/jni/IHttpUrl;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/vivox/sdk/jni/IHttpUrl;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 30
    :try_start_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 31
    iget-boolean v4, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/vivox/sdk/jni/androidsdkJNI;->delete_IHttpUrl(J)V

    .line 35
    :cond_0
    iput-wide v2, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J
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

.method protected finalize()V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/IHttpUrl;->delete()V

    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCMemOwn:Z

    .line 41
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/IHttpUrl;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCMemOwn:Z

    .line 46
    iget-wide v1, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IHttpUrl_change_ownership(Lcom/vivox/sdk/jni/IHttpUrl;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCMemOwn:Z

    .line 51
    iget-wide v1, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IHttpUrl_change_ownership(Lcom/vivox/sdk/jni/IHttpUrl;JZ)V

    return-void
.end method

.method public urlDecode([B)[B
    .locals 2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IHttpUrl;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->IHttpUrl_urlDecode(JLcom/vivox/sdk/jni/IHttpUrl;[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->IHttpUrl_urlDecodeSwigExplicitIHttpUrl(JLcom/vivox/sdk/jni/IHttpUrl;[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public urlEncode([B)[B
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IHttpUrl;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->IHttpUrl_urlEncode(JLcom/vivox/sdk/jni/IHttpUrl;[B)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IHttpUrl;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->IHttpUrl_urlEncodeSwigExplicitIHttpUrl(JLcom/vivox/sdk/jni/IHttpUrl;[B)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method
