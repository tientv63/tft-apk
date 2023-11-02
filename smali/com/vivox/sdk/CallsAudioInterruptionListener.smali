.class public Lcom/vivox/sdk/CallsAudioInterruptionListener;
.super Ljava/lang/Object;
.source "CallsAudioInterruptionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;,
        Lcom/vivox/sdk/CallsAudioInterruptionListener$CheckAudioAndApplyChangesRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallsAudioIListener"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioStatus:Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;

.field private mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

.field private mHandlePhoneCallAudioInterruptionExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;

    invoke-direct {v0}, Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;-><init>()V

    iput-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioStatus:Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mHandlePhoneCallAudioInterruptionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    iput-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    .line 25
    iput-object p1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/vivox/sdk/CallsAudioInterruptionListener;Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->registerAudioInterruptionListenerInternal(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivox/sdk/CallsAudioInterruptionListener;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->unregisterAudioInterruptionListenerInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/vivox/sdk/CallsAudioInterruptionListener;)Z
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->isInPhoneCall()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/vivox/sdk/CallsAudioInterruptionListener;)Z
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->areAudioSettingsChanged()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/vivox/sdk/CallsAudioInterruptionListener;)Landroid/media/AudioManager;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method private areAudioSettingsChanged()Z
    .locals 7

    .line 107
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdk;->vxa_get_current_render_route()Lcom/vivox/sdk/jni/VxaRenderRoute;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    .line 110
    iget-object v3, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/vivox/sdk/BluetoothScoManager;->isBluetoothSCOAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 111
    :goto_0
    iget-object v6, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioStatus:Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;

    iget v6, v6, Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;->mIntendedAudioMode:I

    if-ne v6, v1, :cond_2

    iget-object v1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioStatus:Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;

    iget-boolean v1, v1, Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;->mIntendedSpeakerphoneState:Z

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/vivox/sdk/jni/VxaRenderRoute;->BluetoothSCO:Lcom/vivox/sdk/jni/VxaRenderRoute;

    if-ne v0, v1, :cond_1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    :goto_1
    return v4
.end method

.method private isInPhoneCall()Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private registerAudioInterruptionListenerInternal(Landroid/content/Context;)V
    .locals 8

    const-string v0, "CallsAudioIListener"

    if-nez p1, :cond_0

    const-string p1, "Context is not initialized (Context is null)"

    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_1

    const-string p1, "Audio manager is not initialized (Audio Manager is null)"

    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mHandlePhoneCallAudioInterruptionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_2

    return-void

    .line 66
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mHandlePhoneCallAudioInterruptionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    :try_start_0
    new-instance v2, Lcom/vivox/sdk/CallsAudioInterruptionListener$CheckAudioAndApplyChangesRunnable;

    invoke-direct {v2, p0}, Lcom/vivox/sdk/CallsAudioInterruptionListener$CheckAudioAndApplyChangesRunnable;-><init>(Lcom/vivox/sdk/CallsAudioInterruptionListener;)V

    .line 69
    iget-object v1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mHandlePhoneCallAudioInterruptionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mHandlePhoneCallAudioInterruptionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v1, "Unable to schedule a task to handle audio interruption recovery."

    .line 72
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unregisterAudioInterruptionListenerInternal()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mHandlePhoneCallAudioInterruptionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mHandlePhoneCallAudioInterruptionExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public registerAudioInterruptionListener(Landroid/content/Context;)V
    .locals 2

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    new-instance v1, Lcom/vivox/sdk/CallsAudioInterruptionListener$1;

    invoke-direct {v1, p0, p1}, Lcom/vivox/sdk/CallsAudioInterruptionListener$1;-><init>(Lcom/vivox/sdk/CallsAudioInterruptionListener;Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setBluetoothScoManager(Lcom/vivox/sdk/BluetoothScoManager;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mBluetoothScoManager:Lcom/vivox/sdk/BluetoothScoManager;

    return-void
.end method

.method public setIntendedAudioMode(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioStatus:Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;

    iput p1, v0, Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;->mIntendedAudioMode:I

    return-void
.end method

.method public setIntendedSpeakerphoneState(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener;->mAudioStatus:Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;

    iput-boolean p1, v0, Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;->mIntendedSpeakerphoneState:Z

    return-void
.end method

.method public unregisterAudioInterruptionListener(Landroid/content/Context;)V
    .locals 1

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 45
    new-instance p1, Lcom/vivox/sdk/CallsAudioInterruptionListener$2;

    invoke-direct {p1, p0}, Lcom/vivox/sdk/CallsAudioInterruptionListener$2;-><init>(Lcom/vivox/sdk/CallsAudioInterruptionListener;)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
