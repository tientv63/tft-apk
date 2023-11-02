.class public final Lio/sentry/android/core/ActivityFramesTracker;
.super Ljava/lang/Object;
.source "ActivityFramesTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    }
.end annotation


# instance fields
.field private final activityMeasurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/protocol/SentryId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameCountAtStartSnapshots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

.field private final handler:Lio/sentry/android/core/MainLooperHandler;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 54
    new-instance v0, Lio/sentry/android/core/MainLooperHandler;

    invoke-direct {v0}, Lio/sentry/android/core/MainLooperHandler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityFramesTracker;-><init>(Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MainLooperHandler;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MainLooperHandler;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameCountAtStartSnapshots:Ljava/util/Map;

    .line 43
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    const-string v1, "androidx.core.app.FrameMetricsAggregator"

    invoke-virtual {p1, v1, v0}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    new-instance p1, Landroidx/core/app/FrameMetricsAggregator;

    invoke-direct {p1}, Landroidx/core/app/FrameMetricsAggregator;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    .line 48
    :cond_0
    iput-object p2, p0, Lio/sentry/android/core/ActivityFramesTracker;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 49
    iput-object p3, p0, Lio/sentry/android/core/ActivityFramesTracker;->handler:Lio/sentry/android/core/MainLooperHandler;

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MainLooperHandler;Landroidx/core/app/FrameMetricsAggregator;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/ActivityFramesTracker;-><init>(Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/MainLooperHandler;)V

    .line 65
    iput-object p4, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    return-void
.end method

.method private calculateCurrentFrameCounts()Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    .locals 9

    .line 91
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 95
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    if-nez v0, :cond_1

    return-object v1

    .line 99
    :cond_1
    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->getMetrics()[Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 105
    array-length v3, v0

    if-lez v3, :cond_5

    .line 106
    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    move v3, v2

    move v4, v3

    move v5, v4

    .line 108
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 109
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 110
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    add-int/2addr v3, v7

    const/16 v8, 0x2bc

    if-le v6, v8, :cond_2

    add-int/2addr v5, v7

    goto :goto_1

    :cond_2
    const/16 v8, 0x10

    if-le v6, v8, :cond_3

    add-int/2addr v4, v7

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    move v4, v2

    move v5, v4

    .line 124
    :goto_2
    new-instance v0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    invoke-direct {v0, v2, v4, v5, v1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;-><init>(IIILio/sentry/android/core/ActivityFramesTracker$1;)V

    return-object v0
.end method

.method private diffFrameCountsAtEnd(Landroid/app/Activity;)Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
    .locals 5

    .line 170
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameCountAtStartSnapshots:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityFramesTracker;->calculateCurrentFrameCounts()Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 180
    :cond_1
    invoke-static {v1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v2

    invoke-static {p1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 181
    invoke-static {v1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v3

    invoke-static {p1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 182
    invoke-static {v1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v1

    invoke-static {p1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result p1

    sub-int/2addr v1, p1

    .line 184
    new-instance p1, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    invoke-direct {p1, v2, v3, v1, v0}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;-><init>(IIILio/sentry/android/core/ActivityFramesTracker$1;)V

    return-object p1
.end method

.method private runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .line 211
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->handler:Lio/sentry/android/core/MainLooperHandler;

    new-instance v1, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/ActivityFramesTracker;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/sentry/android/core/MainLooperHandler;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    if-eqz p2, :cond_1

    .line 227
    iget-object p1, p0, Lio/sentry/android/core/ActivityFramesTracker;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, p2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private snapshotFrameCountsAtStart(Landroid/app/Activity;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Lio/sentry/android/core/ActivityFramesTracker;->calculateCurrentFrameCounts()Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameCountAtStartSnapshots:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addActivity(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 76
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    new-instance v0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/ActivityFramesTracker;Landroid/app/Activity;)V

    const-string v1, "FrameMetricsAggregator.add"

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/ActivityFramesTracker;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityFramesTracker;->snapshotFrameCountsAtStart(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isFrameMetricsAggregatorAvailable()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableFramesTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$addActivity$0$io-sentry-android-core-ActivityFramesTracker(Landroid/app/Activity;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0, p1}, Landroidx/core/app/FrameMetricsAggregator;->add(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$runSafelyOnUiThread$3$io-sentry-android-core-ActivityFramesTracker(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3

    .line 217
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    if-eqz p2, :cond_0

    .line 220
    iget-object p1, p0, Lio/sentry/android/core/ActivityFramesTracker;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, p2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$setMetrics$1$io-sentry-android-core-ActivityFramesTracker(Landroid/app/Activity;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0, p1}, Landroidx/core/app/FrameMetricsAggregator;->remove(Landroid/app/Activity;)[Landroid/util/SparseIntArray;

    return-void
.end method

.method synthetic lambda$stop$2$io-sentry-android-core-ActivityFramesTracker()V
    .locals 1

    .line 203
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->stop()[Landroid/util/SparseIntArray;

    return-void
.end method

.method public declared-synchronized setMetrics(Landroid/app/Activity;Lio/sentry/protocol/SentryId;)V
    .locals 4

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 131
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    new-instance v0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/ActivityFramesTracker;Landroid/app/Activity;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/ActivityFramesTracker;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityFramesTracker;->diffFrameCountsAtEnd(Landroid/app/Activity;)Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 149
    invoke-static {p1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-static {p1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-static {p1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Lio/sentry/protocol/MeasurementValue;

    .line 156
    invoke-static {p1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "none"

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 157
    new-instance v1, Lio/sentry/protocol/MeasurementValue;

    .line 158
    invoke-static {p1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "none"

    invoke-direct {v1, v2, v3}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 159
    new-instance v2, Lio/sentry/protocol/MeasurementValue;

    .line 160
    invoke-static {p1}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "none"

    invoke-direct {v2, p1, v3}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 161
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "frames_total"

    .line 162
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "frames_slow"

    .line 163
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "frames_frozen"

    .line 164
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 152
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/ActivityFramesTracker;)V

    const-string v1, "FrameMetricsAggregator.stop"

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/ActivityFramesTracker;->runSafelyOnUiThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->frameMetricsAggregator:Landroidx/core/app/FrameMetricsAggregator;

    invoke-virtual {v0}, Landroidx/core/app/FrameMetricsAggregator;->reset()[Landroid/util/SparseIntArray;

    .line 206
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized takeMetrics(Lio/sentry/protocol/SentryId;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/SentryId;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->isFrameMetricsAggregatorAvailable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 191
    monitor-exit p0

    return-object p1

    .line 194
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    .line 195
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 196
    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker;->activityMeasurements:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
