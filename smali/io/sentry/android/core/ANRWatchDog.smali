.class final Lio/sentry/android/core/ANRWatchDog;
.super Ljava/lang/Thread;
.source "ANRWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ANRWatchDog$ANRListener;
    }
.end annotation


# instance fields
.field private final anrListener:Lio/sentry/android/core/ANRWatchDog$ANRListener;

.field private final context:Landroid/content/Context;

.field private volatile lastKnownActiveUiTimestampMs:J

.field private final logger:Lio/sentry/ILogger;

.field private pollingIntervalMs:J

.field private final reportInDebug:Z

.field private final reported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ticker:Ljava/lang/Runnable;

.field private final timeProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final timeoutIntervalMillis:J

.field private final uiHandler:Lio/sentry/android/core/MainLooperHandler;


# direct methods
.method constructor <init>(JZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Landroid/content/Context;)V
    .locals 11

    .line 49
    new-instance v1, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda1;-><init>()V

    new-instance v9, Lio/sentry/android/core/MainLooperHandler;

    invoke-direct {v9}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    const-wide/16 v4, 0x1f4

    move-object v0, p0

    move-wide v2, p1

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/sentry/android/core/ANRWatchDog;-><init>(Lio/sentry/transport/ICurrentDateProvider;JJZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Lio/sentry/android/core/MainLooperHandler;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/transport/ICurrentDateProvider;JJZLio/sentry/android/core/ANRWatchDog$ANRListener;Lio/sentry/ILogger;Lio/sentry/android/core/MainLooperHandler;Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "|ANR-WatchDog|"

    .line 71
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lio/sentry/android/core/ANRWatchDog;->lastKnownActiveUiTimestampMs:J

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    iput-object p1, p0, Lio/sentry/android/core/ANRWatchDog;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 74
    iput-wide p2, p0, Lio/sentry/android/core/ANRWatchDog;->timeoutIntervalMillis:J

    .line 75
    iput-wide p4, p0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    .line 76
    iput-boolean p6, p0, Lio/sentry/android/core/ANRWatchDog;->reportInDebug:Z

    .line 77
    iput-object p7, p0, Lio/sentry/android/core/ANRWatchDog;->anrListener:Lio/sentry/android/core/ANRWatchDog$ANRListener;

    .line 78
    iput-object p8, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    .line 79
    iput-object p9, p0, Lio/sentry/android/core/ANRWatchDog;->uiHandler:Lio/sentry/android/core/MainLooperHandler;

    .line 80
    iput-object p10, p0, Lio/sentry/android/core/ANRWatchDog;->context:Landroid/content/Context;

    .line 81
    new-instance p4, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1}, Lio/sentry/android/core/ANRWatchDog$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/ANRWatchDog;Lio/sentry/transport/ICurrentDateProvider;)V

    iput-object p4, p0, Lio/sentry/android/core/ANRWatchDog;->ticker:Ljava/lang/Runnable;

    .line 87
    iget-wide p4, p0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    const-wide/16 p6, 0x2

    mul-long/2addr p4, p6

    cmp-long p1, p2, p4

    if-ltz p1, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-wide p3, p0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    mul-long/2addr p3, p6

    .line 91
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "ANRWatchDog: timeoutIntervalMillis has to be at least %d ms"

    .line 89
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isProcessNotResponding()Z
    .locals 6

    .line 147
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 153
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 155
    iget-object v3, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error getting ActivityManager#getProcessesInErrorState."

    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v2, :cond_1

    .line 159
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 160
    iget v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method static synthetic lambda$new$0()J
    .locals 2

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method synthetic lambda$new$1$io-sentry-android-core-ANRWatchDog(Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 2

    .line 83
    invoke-interface {p1}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/ANRWatchDog;->lastKnownActiveUiTimestampMs:J

    .line 84
    iget-object p1, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 98
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->ticker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/core/ANRWatchDog;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->uiHandler:Lio/sentry/android/core/MainLooperHandler;

    iget-object v1, p0, Lio/sentry/android/core/ANRWatchDog;->ticker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/MainLooperHandler;->post(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    :try_start_0
    iget-wide v2, p0, Lio/sentry/android/core/ANRWatchDog;->pollingIntervalMs:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iget-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 120
    invoke-interface {v2}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lio/sentry/android/core/ANRWatchDog;->lastKnownActiveUiTimestampMs:J

    sub-long/2addr v2, v4

    .line 123
    iget-wide v4, p0, Lio/sentry/android/core/ANRWatchDog;->timeoutIntervalMillis:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 124
    iget-boolean v2, p0, Lio/sentry/android/core/ANRWatchDog;->reportInDebug:Z

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "An ANR was detected but ignored because the debugger is connected."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-direct {p0}, Lio/sentry/android/core/ANRWatchDog;->isProcessNotResponding()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->reported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application Not Responding for at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/sentry/android/core/ANRWatchDog;->timeoutIntervalMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Lio/sentry/android/core/ApplicationNotResponding;

    iget-object v2, p0, Lio/sentry/android/core/ANRWatchDog;->uiHandler:Lio/sentry/android/core/MainLooperHandler;

    .line 137
    invoke-virtual {v2}, Lio/sentry/android/core/MainLooperHandler;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 138
    iget-object v0, p0, Lio/sentry/android/core/ANRWatchDog;->anrListener:Lio/sentry/android/core/ANRWatchDog$ANRListener;

    invoke-interface {v0, v1}, Lio/sentry/android/core/ANRWatchDog$ANRListener;->onAppNotResponding(Lio/sentry/android/core/ApplicationNotResponding;)V

    goto :goto_0

    :catch_0
    move-exception v2

    .line 107
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    iget-object v3, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Interrupted: %s"

    invoke-interface {v3, v4, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 109
    :catch_1
    iget-object v3, p0, Lio/sentry/android/core/ANRWatchDog;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Failed to interrupt due to SecurityException: %s"

    .line 109
    invoke-interface {v3, v4, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
