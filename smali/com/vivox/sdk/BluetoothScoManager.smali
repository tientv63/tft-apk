.class Lcom/vivox/sdk/BluetoothScoManager;
.super Ljava/lang/Object;
.source "BluetoothScoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/BluetoothScoManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothScoManager"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mContext:Landroid/content/Context;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 144
    iput-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 145
    iput-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 28
    iput-object p1, p0, Lcom/vivox/sdk/BluetoothScoManager;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/vivox/sdk/BluetoothScoManager;->initializeBluetoothServiceListener()V

    return-void
.end method

.method static synthetic access$002(Lcom/vivox/sdk/BluetoothScoManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/vivox/sdk/BluetoothScoManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method private getBluetoothPermissionString()Ljava/lang/String;
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    return-object v0

    :cond_0
    const-string v0, "android.permission.BLUETOOTH"

    return-object v0
.end method

.method private initializeBluetoothServiceListener()V
    .locals 4

    .line 33
    new-instance v0, Lcom/vivox/sdk/BluetoothScoManager$1;

    invoke-direct {v0, p0}, Lcom/vivox/sdk/BluetoothScoManager$1;-><init>(Lcom/vivox/sdk/BluetoothScoManager;)V

    iput-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 50
    iget-object v1, p0, Lcom/vivox/sdk/BluetoothScoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vivox/sdk/BluetoothScoManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method


# virtual methods
.method public isAnyBluetoothDeviceConnectedToSco()Z
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/vivox/sdk/BluetoothScoManager;->getBluetoothPermissionString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 69
    iget-object v3, p0, Lcom/vivox/sdk/BluetoothScoManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothScoManager"

    const-string v3, "getConnectedDevices and isAudioConnected need BLUETOOTH_CONNECT permissions"

    .line 76
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public isBluetoothSCOAudioConnected()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 55
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/vivox/sdk/BluetoothScoManager;->isAnyBluetoothDeviceConnectedToSco()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startBluetoothSco()Lcom/vivox/sdk/BluetoothScoManager$State;
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/vivox/sdk/BluetoothScoManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 92
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    const-string v2, "BluetoothScoManager"

    if-nez v1, :cond_0

    const-string v0, "The platform does not support use of Bluetooth Sco"

    .line 93
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/vivox/sdk/BluetoothScoManager$State;->FAILED_TO_START:Lcom/vivox/sdk/BluetoothScoManager$State;

    return-object v0

    :cond_0
    const-string v1, "Starting Bluetooth SCO."

    .line 97
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 101
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 102
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    const-wide/16 v3, 0x12c

    .line 104
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to sleep the thread in handleBluetoothConnectionChange."

    .line 106
    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/vivox/sdk/BluetoothScoManager;->isBluetoothSCOAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Bluetooth SCO started."

    .line 110
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v0, Lcom/vivox/sdk/BluetoothScoManager$State;->STARTED:Lcom/vivox/sdk/BluetoothScoManager$State;

    return-object v0

    :cond_2
    const/4 v3, 0x3

    if-le v1, v3, :cond_1

    const-string v0, "Bluetooth SCO failed to start."

    .line 115
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v0, Lcom/vivox/sdk/BluetoothScoManager$State;->FAILED_TO_START:Lcom/vivox/sdk/BluetoothScoManager$State;

    return-object v0
.end method

.method public stopBluetoothSco()V
    .locals 6

    const-string v0, "BluetoothScoManager"

    .line 120
    iget-object v1, p0, Lcom/vivox/sdk/BluetoothScoManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 125
    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 126
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    const-wide/16 v4, 0x12c

    .line 128
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Failed to sleep the thread in handleBluetoothConnectionChange."

    .line 130
    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :goto_0
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/vivox/sdk/BluetoothScoManager;->isAnyBluetoothDeviceConnectedToSco()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v1, "Bluetooth SCO stopped."

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    const-string v1, "Bluetooth SCO failed to stop."

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
