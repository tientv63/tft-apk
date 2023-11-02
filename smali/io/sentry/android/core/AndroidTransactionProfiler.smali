.class final Lio/sentry/android/core/AndroidTransactionProfiler;
.super Ljava/lang/Object;
.source "AndroidTransactionProfiler.java"

# interfaces
.implements Lio/sentry/ITransactionProfiler;


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x2dc6c0

.field private static final PROFILING_TIMEOUT_MILLIS:I = 0x7530


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

.field private currentTransaction:Lio/sentry/ITransaction;

.field private final frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private frameMetricsCollectorId:Ljava/lang/String;

.field private final frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private final hub:Lio/sentry/IHub;

.field private intervalUs:I

.field private isInitialized:Z

.field private final measurementsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private profileStartCpuMillis:J

.field private scheduledFinish:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final screenFrameRateMeasurements:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private final slowFrameRenderMeasurements:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/sentry/profilemeasurements/ProfileMeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private volatile timedOutProfilingData:Lio/sentry/ProfilingTraceData;

.field private traceFile:Ljava/io/File;

.field private traceFilesDir:Ljava/io/File;

.field private transactionStartNanos:J

.field private transactionsCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 6

    .line 93
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 88
    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/IHub;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/IHub;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->traceFile:Ljava/io/File;

    .line 59
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->traceFilesDir:Ljava/io/File;

    .line 60
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    .line 61
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->timedOutProfilingData:Lio/sentry/ProfilingTraceData;

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionStartNanos:J

    .line 67
    iput-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isInitialized:Z

    .line 69
    iput v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    .line 73
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    .line 75
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    .line 77
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->measurementsMap:Ljava/util/Map;

    .line 81
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentTransaction:Lio/sentry/ITransaction;

    const-string v0, "The application context is required"

    .line 102
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->context:Landroid/content/Context;

    const-string p1, "SentryAndroidOptions is required"

    .line 103
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string p1, "Hub is required"

    .line 104
    invoke-static {p5, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->hub:Lio/sentry/IHub;

    const-string p1, "SentryFrameMetricsCollector is required"

    .line 106
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    const-string p1, "The BuildInfoProvider is required."

    .line 108
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/AndroidTransactionProfiler;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionStartNanos:J

    return-wide v0
.end method

.method static synthetic access$100(Lio/sentry/android/core/AndroidTransactionProfiler;)Ljava/util/ArrayDeque;
    .locals 0

    .line 42
    iget-object p0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic access$200(Lio/sentry/android/core/AndroidTransactionProfiler;)Ljava/util/ArrayDeque;
    .locals 0

    .line 42
    iget-object p0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic access$300(Lio/sentry/android/core/AndroidTransactionProfiler;)Ljava/util/ArrayDeque;
    .locals 0

    .line 42
    iget-object p0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private getMemInfo()Landroid/app/ActivityManager$MemoryInfo;
    .locals 5

    const-string v0, "Error getting MemoryInfo."

    const/4 v1, 0x0

    .line 530
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 531
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz v2, :cond_0

    .line 533
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-object v3

    .line 536
    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v2

    .line 539
    iget-object v3, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v3, v4, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private init()V
    .locals 5

    .line 113
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->isInitialized:Z

    .line 117
    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isProfilingEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 119
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Profiling is disabled in options."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 123
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 124
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    .line 125
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 130
    :cond_2
    iget-object v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilingTracesHz()I

    move-result v2

    if-gtz v2, :cond_3

    .line 132
    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 133
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "Disabling profiling because trace rate is set to %d"

    .line 134
    invoke-interface {v1, v4, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 140
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    long-to-int v0, v3

    div-int/2addr v0, v2

    iput v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->intervalUs:I

    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->traceFilesDir:Ljava/io/File;

    return-void
.end method

.method static synthetic lambda$onTransactionFinish$1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 431
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private onFirstTransactionStarted(Lio/sentry/ITransaction;)Z
    .locals 4

    .line 185
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->traceFilesDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".trace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->traceFile:Ljava/io/File;

    .line 187
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->measurementsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 189
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 190
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 192
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    new-instance v1, Lio/sentry/android/core/AndroidTransactionProfiler$1;

    invoke-direct {v1, p0}, Lio/sentry/android/core/AndroidTransactionProfiler$1;-><init>(Lio/sentry/android/core/AndroidTransactionProfiler;)V

    .line 193
    invoke-virtual {v0, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->startCollection(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->frameMetricsCollectorId:Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentTransaction:Lio/sentry/ITransaction;

    .line 240
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 242
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/AndroidTransactionProfiler;Lio/sentry/ITransaction;)V

    const-wide/16 v2, 0x7530

    .line 243
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->scheduledFinish:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 248
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to call the executor. Profiling will not be automatically finished. Did you call Sentry.close()?"

    .line 249
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionStartNanos:J

    .line 256
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    .line 258
    new-instance v0, Lio/sentry/ProfilingTransactionData;

    iget-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionStartNanos:J

    .line 259
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/sentry/ProfilingTransactionData;-><init>(Lio/sentry/ITransaction;Ljava/lang/Long;Ljava/lang/Long;)V

    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    .line 268
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->traceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const v1, 0x2dc6c0

    iget v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->intervalUs:I

    invoke-static {v0, v1, v2}, Landroid/os/Debug;->startMethodTracingSampling(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0, p1, v1}, Lio/sentry/android/core/AndroidTransactionProfiler;->onTransactionFinish(Lio/sentry/ITransaction;Ljava/util/List;)Lio/sentry/ProfilingTraceData;

    .line 272
    iget-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Unable to start a profile: "

    invoke-interface {p1, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized onTransactionFinish(Lio/sentry/ITransaction;ZLjava/util/List;)Lio/sentry/ProfilingTraceData;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            "Z",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;)",
            "Lio/sentry/ProfilingTraceData;"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    monitor-exit p0

    return-object v3

    .line 295
    :cond_0
    :try_start_1
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->timedOutProfilingData:Lio/sentry/ProfilingTraceData;

    .line 298
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_f

    .line 299
    invoke-virtual {v2}, Lio/sentry/ProfilingTransactionData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 329
    :cond_1
    iget v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    if-lez v0, :cond_2

    sub-int/2addr v0, v5

    .line 330
    iput v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    .line 333
    :cond_2
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 334
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "Transaction %s (%s) finished."

    new-array v4, v4, [Ljava/lang/Object;

    .line 338
    invoke-interface/range {p1 .. p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    .line 339
    invoke-interface/range {p1 .. p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 335
    invoke-interface {v0, v2, v7, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 343
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    if-eqz v0, :cond_3

    .line 345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionStartNanos:J

    .line 346
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 347
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    .line 348
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 344
    invoke-virtual {v0, v2, v4, v5, v6}, Lio/sentry/ProfilingTransactionData;->notifyFinish(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    :cond_3
    monitor-exit p0

    return-object v3

    .line 357
    :cond_4
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 359
    :try_start_3
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v7, "Error while stopping profiling: "

    invoke-interface {v0, v4, v7, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    :goto_0
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->frameMetricsCollectorId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopCollection(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 364
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v9

    .line 365
    iget-wide v11, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionStartNanos:J

    sub-long v11, v7, v11

    .line 367
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    if-eqz v0, :cond_5

    .line 370
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_5
    iput-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentProfilingTransactionData:Lio/sentry/ProfilingTransactionData;

    .line 374
    iput v6, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    .line 375
    iput-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->currentTransaction:Lio/sentry/ITransaction;

    .line 377
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_6

    .line 378
    invoke-interface {v0, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 379
    iput-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    .line 382
    :cond_6
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->traceFile:Ljava/io/File;

    if-nez v0, :cond_7

    .line 383
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Trace file does not exists"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 384
    monitor-exit p0

    return-object v3

    :cond_7
    :try_start_4
    const-string v0, "0"

    .line 388
    invoke-direct/range {p0 .. p0}, Lio/sentry/android/core/AndroidTransactionProfiler;->getMemInfo()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 390
    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object/from16 v25, v0

    .line 392
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 396
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/ProfilingTransactionData;

    .line 398
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v13, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionStartNanos:J

    .line 399
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 400
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-wide/from16 v16, v7

    iget-wide v6, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->profileStartCpuMillis:J

    .line 401
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 397
    invoke-virtual {v3, v4, v5, v13, v6}, Lio/sentry/ProfilingTransactionData;->notifyFinish(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    move-wide/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_1

    .line 404
    :cond_9
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 405
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->measurementsMap:Ljava/util/Map;

    const-string v3, "slow_frame_renders"

    new-instance v4, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v5, "nanosecond"

    iget-object v6, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->slowFrameRenderMeasurements:Ljava/util/ArrayDeque;

    invoke-direct {v4, v5, v6}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_a
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 410
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->measurementsMap:Ljava/util/Map;

    const-string v3, "frozen_frame_renders"

    new-instance v4, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v5, "nanosecond"

    iget-object v6, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->frozenFrameRenderMeasurements:Ljava/util/ArrayDeque;

    invoke-direct {v4, v5, v6}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_b
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 416
    iget-object v2, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->measurementsMap:Ljava/util/Map;

    const-string v3, "screen_frame_rates"

    new-instance v4, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v5, "hz"

    iget-object v6, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->screenFrameRateMeasurements:Ljava/util/ArrayDeque;

    invoke-direct {v4, v5, v6}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move-object/from16 v2, p3

    .line 420
    invoke-direct {v1, v2}, Lio/sentry/android/core/AndroidTransactionProfiler;->putPerformanceCollectionDataInMeasurements(Ljava/util/List;)V

    .line 424
    new-instance v2, Lio/sentry/ProfilingTraceData;

    iget-object v14, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->traceFile:Ljava/io/File;

    .line 428
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    iget-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 429
    invoke-virtual {v3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v18

    if-eqz v0, :cond_d

    .line 430
    array-length v3, v0

    if-lez v3, :cond_d

    const/4 v3, 0x0

    aget-object v0, v0, v3

    goto :goto_2

    :cond_d
    const-string v0, ""

    :goto_2
    move-object/from16 v19, v0

    new-instance v20, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda0;

    invoke-direct/range {v20 .. v20}, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda0;-><init>()V

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 432
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getManufacturer()Ljava/lang/String;

    move-result-object v21

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 433
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getModel()Ljava/lang/String;

    move-result-object v22

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 434
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getVersionRelease()Ljava/lang/String;

    move-result-object v23

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 435
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->isEmulator()Ljava/lang/Boolean;

    move-result-object v24

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 437
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v26

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 438
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getRelease()Ljava/lang/String;

    move-result-object v27

    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 439
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v28

    if-eqz p2, :cond_e

    const-string v0, "timeout"

    goto :goto_3

    :cond_e
    const-string v0, "normal"

    :goto_3
    move-object/from16 v29, v0

    .line 442
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->measurementsMap:Ljava/util/Map;

    move-object v13, v2

    move-object/from16 v16, p1

    move-object/from16 v30, v0

    invoke-direct/range {v13 .. v30}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Ljava/util/List;Lio/sentry/ITransaction;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 424
    monitor-exit p0

    return-object v2

    :cond_f
    :goto_4
    if-eqz v0, :cond_11

    .line 303
    :try_start_5
    invoke-virtual {v0}, Lio/sentry/ProfilingTraceData;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 304
    iput-object v3, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->timedOutProfilingData:Lio/sentry/ProfilingTraceData;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 305
    monitor-exit p0

    return-object v0

    .line 308
    :cond_10
    :try_start_6
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 309
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v6, "A timed out profiling data exists, but the finishing transaction %s (%s) is not part of it"

    new-array v4, v4, [Ljava/lang/Object;

    .line 313
    invoke-interface/range {p1 .. p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 314
    invoke-interface/range {p1 .. p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 310
    invoke-interface {v0, v2, v6, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 315
    monitor-exit p0

    return-object v3

    .line 319
    :cond_11
    :try_start_7
    iget-object v0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 320
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v6, "Transaction %s (%s) finished, but was not currently being profiled. Skipping"

    new-array v4, v4, [Ljava/lang/Object;

    .line 324
    invoke-interface/range {p1 .. p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 325
    invoke-interface/range {p1 .. p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 321
    invoke-interface {v0, v2, v6, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 326
    monitor-exit p0

    return-object v3

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private putPerformanceCollectionDataInMeasurements(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;)V"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 460
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionStartNanos:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    if-eqz p1, :cond_7

    .line 464
    new-instance v2, Ljava/util/ArrayDeque;

    .line 465
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 466
    new-instance v3, Ljava/util/ArrayDeque;

    .line 467
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 468
    new-instance v4, Ljava/util/ArrayDeque;

    .line 469
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/sentry/PerformanceCollectionData;

    .line 471
    invoke-virtual {v5}, Lio/sentry/PerformanceCollectionData;->getCpuData()Lio/sentry/CpuCollectionData;

    move-result-object v6

    .line 472
    invoke-virtual {v5}, Lio/sentry/PerformanceCollectionData;->getMemoryData()Lio/sentry/MemoryCollectionData;

    move-result-object v5

    if-eqz v6, :cond_2

    .line 474
    new-instance v7, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 476
    invoke-virtual {v6}, Lio/sentry/CpuCollectionData;->getTimestampMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    add-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 477
    invoke-virtual {v6}, Lio/sentry/CpuCollectionData;->getCpuUsagePercentage()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 474
    invoke-virtual {v4, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v6, -0x1

    if-eqz v5, :cond_3

    .line 479
    invoke-virtual {v5}, Lio/sentry/MemoryCollectionData;->getUsedHeapMemory()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_3

    .line 480
    new-instance v8, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 482
    invoke-virtual {v5}, Lio/sentry/MemoryCollectionData;->getTimestampMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    add-long/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 483
    invoke-virtual {v5}, Lio/sentry/MemoryCollectionData;->getUsedHeapMemory()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 480
    invoke-virtual {v2, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v5, :cond_1

    .line 485
    invoke-virtual {v5}, Lio/sentry/MemoryCollectionData;->getUsedNativeMemory()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-lez v6, :cond_1

    .line 486
    new-instance v6, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 488
    invoke-virtual {v5}, Lio/sentry/MemoryCollectionData;->getTimestampMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 489
    invoke-virtual {v5}, Lio/sentry/MemoryCollectionData;->getUsedNativeMemory()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 486
    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 492
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 493
    iget-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->measurementsMap:Ljava/util/Map;

    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    const-string v1, "percent"

    invoke-direct {v0, v1, v4}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v1, "cpu_usage"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    const-string v0, "byte"

    if-nez p1, :cond_6

    .line 498
    iget-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->measurementsMap:Ljava/util/Map;

    new-instance v1, Lio/sentry/profilemeasurements/ProfileMeasurement;

    invoke-direct {v1, v0, v2}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v2, "memory_footprint"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 503
    iget-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->measurementsMap:Ljava/util/Map;

    new-instance v1, Lio/sentry/profilemeasurements/ProfileMeasurement;

    invoke-direct {v1, v0, v3}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    const-string v0, "memory_native_footprint"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 513
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 514
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 515
    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->scheduledFinish:Ljava/util/concurrent/Future;

    .line 518
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentTransaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_1

    .line 519
    invoke-direct {p0, v0, v2, v1}, Lio/sentry/android/core/AndroidTransactionProfiler;->onTransactionFinish(Lio/sentry/ITransaction;ZLjava/util/List;)Lio/sentry/ProfilingTraceData;

    :cond_1
    return-void
.end method

.method getCurrentTransaction()Lio/sentry/ITransaction;
    .locals 1

    .line 547
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->currentTransaction:Lio/sentry/ITransaction;

    return-object v0
.end method

.method synthetic lambda$onFirstTransactionStarted$0$io-sentry-android-core-AndroidTransactionProfiler(Lio/sentry/ITransaction;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, p1, v0, v1}, Lio/sentry/android/core/AndroidTransactionProfiler;->onTransactionFinish(Lio/sentry/ITransaction;ZLjava/util/List;)Lio/sentry/ProfilingTraceData;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->timedOutProfilingData:Lio/sentry/ProfilingTraceData;

    return-void
.end method

.method public declared-synchronized onTransactionFinish(Lio/sentry/ITransaction;Ljava/util/List;)Lio/sentry/ProfilingTraceData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;)",
            "Lio/sentry/ProfilingTraceData;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 282
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lio/sentry/android/core/AndroidTransactionProfiler;->onTransactionFinish(Lio/sentry/ITransaction;ZLjava/util/List;)Lio/sentry/ProfilingTraceData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTransactionStart(Lio/sentry/ITransaction;)V
    .locals 7

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 150
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lio/sentry/android/core/AndroidTransactionProfiler;->init()V

    .line 154
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->traceFilesDir:Ljava/io/File;

    if-eqz v0, :cond_4

    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->intervalUs:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_2

    .line 161
    invoke-direct {p0, p1}, Lio/sentry/android/core/AndroidTransactionProfiler;->onFirstTransactionStarted(Lio/sentry/ITransaction;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 163
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Transaction %s (%s) started and being profiled."

    new-array v3, v3, [Ljava/lang/Object;

    .line 167
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 168
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 164
    invoke-interface {v0, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    .line 171
    iput v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->transactionsCounter:I

    .line 172
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 173
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "A transaction is already being profiled. Transaction %s (%s) will be ignored."

    new-array v3, v3, [Ljava/lang/Object;

    .line 177
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 178
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 174
    invoke-interface {v0, v4, v5, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
