.class public Lcom/vivox/sdk/AndroidAudioBridge;
.super Lcom/vivox/sdk/jni/IAndroidAudioBridge;
.source "AndroidAudioBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/AndroidAudioBridge$AndroidAudioBridgeHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/vivox/sdk/jni/IAndroidAudioBridge;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivox/sdk/AndroidAudioBridge;
    .locals 1

    .line 62
    invoke-static {}, Lcom/vivox/sdk/AndroidAudioBridge$AndroidAudioBridgeHolder;->access$000()Lcom/vivox/sdk/AndroidAudioBridge;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connectBluetoothSco()Z
    .locals 1

    .line 49
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener;->getInstance()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivox/sdk/AudioChangeListener;->connectBluetoothSCO()Z

    move-result v0

    return v0
.end method

.method public disconnectBluetoothSco()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener;->getInstance()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivox/sdk/AudioChangeListener;->disconnectBluetoothSCO()V

    return-void
.end method

.method public registerAudioInterruptionListener()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener;->getInstance()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivox/sdk/AudioChangeListener;->registerAudioInterruptionListener()V

    return-void
.end method

.method public registerAudioRouteChangeListeners()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener;->getInstance()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivox/sdk/AudioChangeListener;->registerAudioRouteChangeListeners()V

    return-void
.end method

.method public setAudioProcessingMode(Lcom/vivox/sdk/jni/VxaAudioProcessingMode;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener;->getInstance()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/AudioChangeListener;->setAudioManagerMode(Lcom/vivox/sdk/jni/VxaAudioProcessingMode;)V

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 1

    .line 13
    iput-object p1, p0, Lcom/vivox/sdk/AndroidAudioBridge;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener;->getInstance()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/AudioChangeListener;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public setSpeakerphoneEnabled(Z)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener;->getInstance()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/AudioChangeListener;->setSpeakerphoneEnabled(Z)V

    return-void
.end method

.method public unregisterAudioInterruptionListener()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener;->getInstance()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivox/sdk/AudioChangeListener;->unregisterAudioInterruptionListener()V

    return-void
.end method

.method public unregisterAudioRouteChangeListeners()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener;->getInstance()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivox/sdk/AudioChangeListener;->unregisterAudioRouteChangeListeners()V

    return-void
.end method
