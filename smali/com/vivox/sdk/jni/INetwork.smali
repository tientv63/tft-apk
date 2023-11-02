.class public Lcom/vivox/sdk/jni/INetwork;
.super Ljava/lang/Object;
.source "INetwork.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->new_INetwork()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vivox/sdk/jni/INetwork;-><init>(JZ)V

    .line 56
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_director_connect(Lcom/vivox/sdk/jni/INetwork;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/vivox/sdk/jni/INetwork;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/vivox/sdk/jni/INetwork;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public createTlsSocket(ILjava/lang/String;JZ)I
    .locals 10

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v2, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-static/range {v2 .. v9}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_createTlsSocket(JLcom/vivox/sdk/jni/INetwork;ILjava/lang/String;JZ)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_createTlsSocketSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;ILjava/lang/String;JZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 30
    :try_start_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 31
    iget-boolean v4, p0, Lcom/vivox/sdk/jni/INetwork;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/vivox/sdk/jni/INetwork;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/vivox/sdk/jni/androidsdkJNI;->delete_INetwork(J)V

    .line 35
    :cond_0
    iput-wide v2, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J
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

.method public destroyTlsSocket(I)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_destroyTlsSocket(JLcom/vivox/sdk/jni/INetwork;I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_destroyTlsSocketSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;I)V

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/INetwork;->delete()V

    return-void
.end method

.method public flush(I)V
    .locals 2

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_flush(JLcom/vivox/sdk/jni/INetwork;I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_flushSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;I)V

    :goto_0
    return-void
.end method

.method public getApplicationUUID()[B
    .locals 2

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getApplicationUUID(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getApplicationUUIDSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCacheFolder()[B
    .locals 2

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getCacheFolder(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getCacheFolderSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCarrier()[B
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getCarrier(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getCarrierSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCountry()[B
    .locals 2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getCountry(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getCountrySwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIpAddress(I)[B
    .locals 2

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getIpAddress(JLcom/vivox/sdk/jni/INetwork;I)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getIpAddressSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;I)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNetworkType()[B
    .locals 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getNetworkType(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getNetworkTypeSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNumIpAddresses()I
    .locals 2

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getNumIpAddresses(JLcom/vivox/sdk/jni/INetwork;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_getNumIpAddressesSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public onPacketReceived(I[BI)V
    .locals 10

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v2, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_onPacketReceived(JLcom/vivox/sdk/jni/INetwork;I[BI)V

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    move-object v6, p0

    move v7, p1

    move-object v8, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_onPacketReceivedSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;I[BI)V

    :goto_0
    return-void
.end method

.method public refreshIpAddresses()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_refreshIpAddresses(JLcom/vivox/sdk/jni/INetwork;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_refreshIpAddressesSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;)V

    :goto_0
    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCMemOwn:Z

    .line 41
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/INetwork;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCMemOwn:Z

    .line 46
    iget-wide v1, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_change_ownership(Lcom/vivox/sdk/jni/INetwork;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCMemOwn:Z

    .line 51
    iget-wide v1, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_change_ownership(Lcom/vivox/sdk/jni/INetwork;JZ)V

    return-void
.end method

.method public upgradeToSsl(ILjava/lang/String;)I
    .locals 2

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_upgradeToSsl(JLcom/vivox/sdk/jni/INetwork;ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_upgradeToSslSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;ILjava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public writeData(I[B)I
    .locals 2

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/INetwork;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_writeData(JLcom/vivox/sdk/jni/INetwork;I[B)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/INetwork;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vivox/sdk/jni/androidsdkJNI;->INetwork_writeDataSwigExplicitINetwork(JLcom/vivox/sdk/jni/INetwork;I[B)I

    move-result p1

    :goto_0
    return p1
.end method
