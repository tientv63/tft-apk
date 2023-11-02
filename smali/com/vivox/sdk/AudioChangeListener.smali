.class public Lcom/vivox/sdk/AudioChangeListener;
.super Ljava/lang/Object;
.source "AudioChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/AudioChangeListener$AudioChangeListenerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Vivox AudioChangeListnr"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

.field mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

.field private mContext:Landroid/content/Context;

.field private mVxaAudioChangeBroadcastReceiver:Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;

.field private mVxaAudioDeviceCallback:Lcom/vivox/sdk/VxaAudioDeviceCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioChangeBroadcastReceiver:Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;

    .line 61
    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioDeviceCallback:Lcom/vivox/sdk/VxaAudioDeviceCallback;

    .line 62
    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    .line 66
    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivox/sdk/AudioChangeListener$1;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/vivox/sdk/AudioChangeListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivox/sdk/AudioChangeListener;
    .locals 1

    .line 283
    invoke-static {}, Lcom/vivox/sdk/AudioChangeListener$AudioChangeListenerHolder;->access$100()Lcom/vivox/sdk/AudioChangeListener;

    move-result-object v0

    return-object v0
.end method

.method private getVxaRenderRoute(Landroid/media/AudioDeviceInfo;)Lcom/vivox/sdk/jni/VxaRenderRoute;
    .locals 2

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    .line 248
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AudioDeviceInfo type value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vivox AudioChangeListnr"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_0
    sget-object p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->USB:Lcom/vivox/sdk/jni/VxaRenderRoute;

    return-object p1

    .line 266
    :cond_1
    sget-object p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->HDMI:Lcom/vivox/sdk/jni/VxaRenderRoute;

    return-object p1

    .line 257
    :cond_2
    sget-object p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->BluetoothA2DP:Lcom/vivox/sdk/jni/VxaRenderRoute;

    return-object p1

    .line 254
    :cond_3
    sget-object p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->BluetoothSCO:Lcom/vivox/sdk/jni/VxaRenderRoute;

    return-object p1

    .line 251
    :cond_4
    sget-object p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->Wired:Lcom/vivox/sdk/jni/VxaRenderRoute;

    return-object p1

    .line 259
    :cond_5
    sget-object p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->Speakerphone:Lcom/vivox/sdk/jni/VxaRenderRoute;

    return-object p1

    .line 268
    :cond_6
    sget-object p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->Earpiece:Lcom/vivox/sdk/jni/VxaRenderRoute;

    return-object p1

    .line 275
    :cond_7
    :goto_0
    sget-object p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->Unknown:Lcom/vivox/sdk/jni/VxaRenderRoute;

    return-object p1
.end method

.method private hasBluetoothPermission()Z
    .locals 2

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.BLUETOOTH"

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private isRouteBluetooth(Lcom/vivox/sdk/jni/VxaRenderRoute;)Z
    .locals 1

    .line 209
    sget-object v0, Lcom/vivox/sdk/jni/VxaRenderRoute;->BluetoothA2DP:Lcom/vivox/sdk/jni/VxaRenderRoute;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/vivox/sdk/jni/VxaRenderRoute;->BluetoothSCO:Lcom/vivox/sdk/jni/VxaRenderRoute;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private updateBluetoothState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/vivox/sdk/AudioChangeListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    if-nez p1, :cond_1

    .line 94
    new-instance p1, Lcom/vivox/sdk/BluetoothScoManager;

    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/vivox/sdk/BluetoothScoManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/vivox/sdk/AudioChangeListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    .line 95
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->setBluetoothScoManager(Lcom/vivox/sdk/BluetoothScoManager;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/vivox/sdk/AudioChangeListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/vivox/sdk/AudioChangeListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    .line 99
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->setBluetoothScoManager(Lcom/vivox/sdk/BluetoothScoManager;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method declared-synchronized checkAudioRouteAndApplyChanges()V
    .locals 7

    monitor-enter p0

    .line 214
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-direct {p0}, Lcom/vivox/sdk/AudioChangeListener;->hasBluetoothPermission()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/vivox/sdk/AudioChangeListener;->updateBluetoothState(Z)V

    .line 218
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_2

    .line 219
    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 220
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, v1, v4

    .line 221
    invoke-direct {p0, v5}, Lcom/vivox/sdk/AudioChangeListener;->getVxaRenderRoute(Landroid/media/AudioDeviceInfo;)Lcom/vivox/sdk/jni/VxaRenderRoute;

    move-result-object v5

    .line 222
    sget-object v6, Lcom/vivox/sdk/jni/VxaRenderRoute;->Unknown:Lcom/vivox/sdk/jni/VxaRenderRoute;

    if-eq v5, v6, :cond_1

    invoke-direct {p0, v5}, Lcom/vivox/sdk/AudioChangeListener;->isRouteBluetooth(Lcom/vivox/sdk/jni/VxaRenderRoute;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/vivox/sdk/AudioChangeListener;->hasBluetoothPermission()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 227
    :cond_2
    sget-object v1, Lcom/vivox/sdk/jni/VxaRenderRoute;->Speakerphone:Lcom/vivox/sdk/jni/VxaRenderRoute;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    sget-object v1, Lcom/vivox/sdk/jni/VxaRenderRoute;->Wired:Lcom/vivox/sdk/jni/VxaRenderRoute;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    sget-object v1, Lcom/vivox/sdk/jni/VxaRenderRoute;->BluetoothSCO:Lcom/vivox/sdk/jni/VxaRenderRoute;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_4
    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 235
    sget-object v1, Lcom/vivox/sdk/jni/VxaRenderRoute;->BluetoothA2DP:Lcom/vivox/sdk/jni/VxaRenderRoute;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/vivox/sdk/jni/androidsdk;->new_vxaRenderRouteArray(I)Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;

    move-result-object v1

    .line 240
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 241
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivox/sdk/jni/VxaRenderRoute;

    invoke-static {v1, v3, v2}, Lcom/vivox/sdk/jni/androidsdk;->vxaRenderRouteArray_setitem(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;ILcom/vivox/sdk/jni/VxaRenderRoute;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 243
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Lcom/vivox/sdk/jni/androidsdk;->vxa_notify_audio_route_changed(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectBluetoothSCO()Z
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/vivox/sdk/BluetoothScoManager;->startBluetoothSco()Lcom/vivox/sdk/BluetoothScoManager$State;

    move-result-object v0

    sget-object v2, Lcom/vivox/sdk/BluetoothScoManager$State;->STARTED:Lcom/vivox/sdk/BluetoothScoManager$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public disconnectBluetoothSCO()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/vivox/sdk/BluetoothScoManager;->stopBluetoothSco()V

    :cond_0
    return-void
.end method

.method public registerAudioInterruptionListener()V
    .locals 2

    .line 145
    invoke-static {}, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;->getInstance()Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    new-instance v0, Lcom/vivox/sdk/CallsAudioInterruptionListener;

    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    .line 151
    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v0, v1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->setBluetoothScoManager(Lcom/vivox/sdk/BluetoothScoManager;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->registerAudioInterruptionListener(Landroid/content/Context;)V

    return-void
.end method

.method public registerAudioRouteChangeListeners()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioChangeBroadcastReceiver:Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioDeviceCallback:Lcom/vivox/sdk/VxaAudioDeviceCallback;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 109
    new-instance v0, Lcom/vivox/sdk/VxaAudioDeviceCallback;

    invoke-direct {v0, p0}, Lcom/vivox/sdk/VxaAudioDeviceCallback;-><init>(Lcom/vivox/sdk/AudioChangeListener;)V

    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioDeviceCallback:Lcom/vivox/sdk/VxaAudioDeviceCallback;

    .line 110
    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;-><init>(Lcom/vivox/sdk/AudioChangeListener;)V

    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioChangeBroadcastReceiver:Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;

    .line 113
    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivox/sdk/AudioChangeListener$1CheckAudioRouteAndApplyChangesRunnable;

    invoke-direct {v1, p0}, Lcom/vivox/sdk/AudioChangeListener$1CheckAudioRouteAndApplyChangesRunnable;-><init>(Lcom/vivox/sdk/AudioChangeListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setAudioManagerMode(Lcom/vivox/sdk/jni/VxaAudioProcessingMode;)V
    .locals 1

    .line 183
    sget-object v0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->Normal:Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 185
    :cond_0
    sget-object v0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->Voice:Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0, p1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->setIntendedAudioMode(I)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    :cond_2
    return-void

    :cond_3
    const-string p1, "Vivox AudioChangeListnr"

    const-string v0, "Unknown VxaAudioProcessingMode enum value."

    .line 188
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 1

    .line 72
    iput-object p1, p0, Lcom/vivox/sdk/AudioChangeListener;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    .line 74
    invoke-direct {p0}, Lcom/vivox/sdk/AudioChangeListener;->hasBluetoothPermission()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    new-instance p1, Lcom/vivox/sdk/BluetoothScoManager;

    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/vivox/sdk/BluetoothScoManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/vivox/sdk/AudioChangeListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    :cond_0
    return-void
.end method

.method public setSpeakerphoneEnabled(Z)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->setIntendedSpeakerphoneState(Z)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_1
    return-void
.end method

.method public unregisterAudioInterruptionListener()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;->getInstance()Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->unregisterAudioInterruptionListener(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mCallsAudioInterruptionListener:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    return-void
.end method

.method public unregisterAudioRouteChangeListeners()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioChangeBroadcastReceiver:Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioDeviceCallback:Lcom/vivox/sdk/VxaAudioDeviceCallback;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioDeviceCallback:Lcom/vivox/sdk/VxaAudioDeviceCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 137
    iput-object v2, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioDeviceCallback:Lcom/vivox/sdk/VxaAudioDeviceCallback;

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioChangeBroadcastReceiver:Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    iput-object v2, p0, Lcom/vivox/sdk/AudioChangeListener;->mVxaAudioChangeBroadcastReceiver:Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;

    :goto_0
    return-void
.end method
