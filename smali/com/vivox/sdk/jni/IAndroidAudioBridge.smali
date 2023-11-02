.class public Lcom/vivox/sdk/jni/IAndroidAudioBridge;
.super Ljava/lang/Object;
.source "IAndroidAudioBridge.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->new_IAndroidAudioBridge()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vivox/sdk/jni/IAndroidAudioBridge;-><init>(JZ)V

    .line 56
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_director_connect(Lcom/vivox/sdk/jni/IAndroidAudioBridge;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/vivox/sdk/jni/IAndroidAudioBridge;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public connectBluetoothSco()Z
    .locals 2

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IAndroidAudioBridge;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_connectBluetoothSco(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_connectBluetoothScoSwigExplicitIAndroidAudioBridge(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 30
    :try_start_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 31
    iget-boolean v4, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/vivox/sdk/jni/androidsdkJNI;->delete_IAndroidAudioBridge(J)V

    .line 35
    :cond_0
    iput-wide v2, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J
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

.method public disconnectBluetoothSco()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IAndroidAudioBridge;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_disconnectBluetoothSco(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_disconnectBluetoothScoSwigExplicitIAndroidAudioBridge(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->delete()V

    return-void
.end method

.method public registerAudioInterruptionListener()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IAndroidAudioBridge;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_registerAudioInterruptionListener(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_registerAudioInterruptionListenerSwigExplicitIAndroidAudioBridge(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    :goto_0
    return-void
.end method

.method public registerAudioRouteChangeListeners()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IAndroidAudioBridge;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_registerAudioRouteChangeListeners(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_registerAudioRouteChangeListenersSwigExplicitIAndroidAudioBridge(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    :goto_0
    return-void
.end method

.method public setAudioProcessingMode(Lcom/vivox/sdk/jni/VxaAudioProcessingMode;)V
    .locals 2

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IAndroidAudioBridge;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-virtual {p1}, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_setAudioProcessingMode(JLcom/vivox/sdk/jni/IAndroidAudioBridge;I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-virtual {p1}, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_setAudioProcessingModeSwigExplicitIAndroidAudioBridge(JLcom/vivox/sdk/jni/IAndroidAudioBridge;I)V

    :goto_0
    return-void
.end method

.method public setSpeakerphoneEnabled(Z)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IAndroidAudioBridge;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_setSpeakerphoneEnabled(JLcom/vivox/sdk/jni/IAndroidAudioBridge;Z)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_setSpeakerphoneEnabledSwigExplicitIAndroidAudioBridge(JLcom/vivox/sdk/jni/IAndroidAudioBridge;Z)V

    :goto_0
    return-void
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCMemOwn:Z

    .line 41
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCMemOwn:Z

    .line 46
    iget-wide v1, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_change_ownership(Lcom/vivox/sdk/jni/IAndroidAudioBridge;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCMemOwn:Z

    .line 51
    iget-wide v1, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_change_ownership(Lcom/vivox/sdk/jni/IAndroidAudioBridge;JZ)V

    return-void
.end method

.method public unregisterAudioInterruptionListener()V
    .locals 2

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IAndroidAudioBridge;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_unregisterAudioInterruptionListener(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_unregisterAudioInterruptionListenerSwigExplicitIAndroidAudioBridge(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    :goto_0
    return-void
.end method

.method public unregisterAudioRouteChangeListeners()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/IAndroidAudioBridge;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_unregisterAudioRouteChangeListeners(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->IAndroidAudioBridge_unregisterAudioRouteChangeListenersSwigExplicitIAndroidAudioBridge(JLcom/vivox/sdk/jni/IAndroidAudioBridge;)V

    :goto_0
    return-void
.end method
