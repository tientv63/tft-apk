.class public Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;
.super Landroid/app/Service;
.source "RiotSystemMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorMessageType;,
        Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;,
        Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;,
        Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;,
        Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RIOTLOG RSMS"


# instance fields
.field mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCallbackEnabled:Z

.field private mBinder:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;

.field private mDebugMemoryPollingDelay:I

.field private mHandler:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

.field private mLastBatteryInfo:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

.field private mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

.field private mLastMemoryRecord:Landroid/app/ActivityManager$MemoryInfo;

.field private mLastNetworkStatus:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

.field private mLooper:Landroid/os/Looper;

.field private mMemoryTrimCallbackEnabled:Z

.field mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCallbackEnabled:Z

.field private mSimpleMemoryPollingDelay:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;
    .locals 0

    iget-object p0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mHandler:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastBatteryInfo(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;
    .locals 0

    iget-object p0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastBatteryInfo:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 0

    iget-object p0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastMemoryRecord:Landroid/app/ActivityManager$MemoryInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;
    .locals 0

    iget-object p0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastNetworkStatus:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastDebugMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;Landroid/os/Debug$MemoryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastMemoryRecord:Landroid/app/ActivityManager$MemoryInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleDebugMemorySnapshot(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->scheduleDebugMemorySnapshot()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleSimpleMemorySnapshot(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->scheduleSimpleMemorySnapshot()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendDebugMemorySnapshot(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->sendDebugMemorySnapshot()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mMemoryTrimCallbackEnabled:Z

    .line 66
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mNetworkCallbackEnabled:Z

    .line 67
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBatteryCallbackEnabled:Z

    .line 68
    iput v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mSimpleMemoryPollingDelay:I

    .line 69
    iput v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mDebugMemoryPollingDelay:I

    return-void
.end method

.method public static native nativeOnBatteryChanged(ZZIII)V
.end method

.method public static native nativeOnDebugMemorySnapshot(JJJJJJJJJ)V
.end method

.method public static native nativeOnLowMemory()V
.end method

.method public static native nativeOnMemorySnapshot(JJJZ)V
.end method

.method public static native nativeOnNetworkChanged(ZZZI)V
.end method

.method public static native nativeOnTrimMemory(I)V
.end method

.method private registerBatteryBroadcastReceiver()V
    .locals 3

    .line 339
    iget-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBatteryCallbackEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    new-instance v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;-><init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo-IA;)V

    iput-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastBatteryInfo:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

    .line 344
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    new-instance v1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;

    invoke-direct {v1, p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;-><init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V

    iput-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 363
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerNetworkCallbacks()V
    .locals 3

    .line 367
    iget-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mNetworkCallbackEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "connectivity"

    .line 371
    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 372
    new-instance v1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;-><init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus-IA;)V

    iput-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastNetworkStatus:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    .line 374
    new-instance v1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;

    invoke-direct {v1, p0, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;-><init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;Landroid/net/ConnectivityManager;)V

    iput-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 413
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private scheduleDebugMemorySnapshot()V
    .locals 2

    .line 436
    iget v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mDebugMemoryPollingDelay:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 440
    invoke-direct {p0, v1, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->scheduleMemorySnapshot(II)V

    return-void
.end method

.method private scheduleMemorySnapshot(II)V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mHandler:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    invoke-virtual {v0, p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 455
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mHandler:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private scheduleSimpleMemorySnapshot()V
    .locals 2

    .line 445
    iget v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mSimpleMemoryPollingDelay:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 449
    invoke-direct {p0, v1, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->scheduleMemorySnapshot(II)V

    return-void
.end method

.method private sendDebugMemorySnapshot()V
    .locals 37

    move-object/from16 v0, p0

    .line 198
    iget-object v1, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    const-string v2, "summary.java-heap"

    invoke-virtual {v1, v2}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    move-wide v5, v1

    .line 199
    iget-object v7, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.native-heap"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    mul-long v23, v7, v3

    move-wide/from16 v7, v23

    .line 200
    iget-object v9, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    const-string v10, "summary.code"

    invoke-virtual {v9, v10}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    mul-long v25, v9, v3

    move-wide/from16 v9, v25

    .line 201
    iget-object v11, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    const-string v12, "summary.stack"

    invoke-virtual {v11, v12}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    mul-long v27, v11, v3

    move-wide/from16 v11, v27

    .line 202
    iget-object v13, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    const-string v14, "summary.graphics"

    invoke-virtual {v13, v14}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    int-to-long v13, v13

    mul-long v29, v13, v3

    move-wide/from16 v13, v29

    .line 203
    iget-object v15, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    const-string v3, "summary.private-other"

    invoke-virtual {v15, v3}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v21, 0x400

    mul-long v3, v3, v21

    move-wide v15, v3

    move-wide/from16 v31, v5

    .line 204
    iget-object v5, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    const-string v6, "summary.system"

    invoke-virtual {v5, v6}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    mul-long v5, v5, v21

    move-wide/from16 v17, v5

    move-wide/from16 v33, v7

    .line 205
    iget-object v7, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    const-string v8, "summary.total-pss"

    invoke-virtual {v7, v8}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    mul-long v7, v7, v21

    move-wide/from16 v19, v7

    move-wide/from16 v35, v9

    .line 206
    iget-object v9, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastDebugMemoryRecord:Landroid/os/Debug$MemoryInfo;

    const-string v10, "summary.total-swap"

    invoke-virtual {v9, v10}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    mul-long v9, v9, v21

    move-wide/from16 v21, v9

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 209
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 210
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "onDebugMemorySnapshot: jHeap %d, nHeap %d, codeMem %d, stackMem %d, gfxMem %d, privateOtherMem %d, sysMem %d, pssMem %d, swapMem %d"

    .line 208
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIOTLOG RSMS"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v5, v31

    move-wide/from16 v7, v33

    move-wide/from16 v9, v35

    .line 211
    invoke-static/range {v5 .. v22}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->nativeOnDebugMemorySnapshot(JJJJJJJJJ)V

    return-void
.end method

.method private unregisterBatteryBroadcastReceiver()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private unregisterNetworkCallbacks()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "connectivity"

    .line 421
    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 422
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 222
    iget p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mSimpleMemoryPollingDelay:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 223
    invoke-direct {p0, v0, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->scheduleMemorySnapshot(II)V

    .line 226
    :cond_0
    iget p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mDebugMemoryPollingDelay:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 227
    invoke-direct {p0, p1, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->scheduleMemorySnapshot(II)V

    .line 230
    :cond_1
    iget-boolean p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBatteryCallbackEnabled:Z

    if-eqz p1, :cond_2

    .line 231
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->registerBatteryBroadcastReceiver()V

    .line 234
    :cond_2
    iget-boolean p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mNetworkCallbackEnabled:Z

    if-eqz p1, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->registerNetworkCallbacks()V

    .line 239
    :cond_3
    new-instance p1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;

    invoke-direct {p1, p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;-><init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBinder:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 255
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/16 v2, 0x80

    .line 260
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v2

    .line 259
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 265
    :goto_0
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "memory.simple.delay"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mSimpleMemoryPollingDelay:I

    .line 266
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "memory.debug.delay"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mDebugMemoryPollingDelay:I

    .line 267
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "memory.warning.enabled"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mMemoryTrimCallbackEnabled:Z

    .line 268
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "network.enabled"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mNetworkCallbackEnabled:Z

    .line 269
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "battery.enabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBatteryCallbackEnabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Service metadata not found: %1$s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIOTLOG RSMS"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_1
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "RiotSystemMonitorThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 280
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 283
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLooper:Landroid/os/Looper;

    .line 284
    new-instance v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;-><init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mHandler:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    .line 286
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 292
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLooper:Landroid/os/Looper;

    .line 295
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mHandler:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    .line 297
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "RIOTLOG RSMS"

    const-string v1, "onLowMemory"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mLastMemoryRecord:Landroid/app/ActivityManager$MemoryInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, v0, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->scheduleMemorySnapshot(II)V

    .line 322
    iget-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mMemoryTrimCallbackEnabled:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->nativeOnLowMemory()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 302
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onTrimMemory level %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIOTLOG RSMS"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, v2, v2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->scheduleMemorySnapshot(II)V

    .line 307
    iget-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mMemoryTrimCallbackEnabled:Z

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->nativeOnTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->unregisterNetworkCallbacks()V

    .line 246
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->unregisterBatteryBroadcastReceiver()V

    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->mBinder:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;

    const/4 p1, 0x0

    return p1
.end method

.method public requestMemorySnapshot(I)V
    .locals 1

    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, v0, p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->scheduleMemorySnapshot(II)V

    return-void
.end method
