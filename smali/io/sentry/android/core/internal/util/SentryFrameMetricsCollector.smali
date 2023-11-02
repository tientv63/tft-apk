.class public final Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
.super Ljava/lang/Object;
.source "SentryFrameMetricsCollector.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;,
        Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;
    }
.end annotation


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private choreographer:Landroid/view/Choreographer;

.field private choreographerLastFrameTimeField:Ljava/lang/reflect/Field;

.field private currentWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private frameMetricsAvailableListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private handler:Landroid/os/Handler;

.field private isAvailable:Z

.field private lastFrameEndNanos:J

.field private lastFrameStartNanos:J

.field private final listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/SentryOptions;

.field private final trackedWindows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private final windowFrameMetricsManager:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 1

    .line 54
    new-instance v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$1;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$1;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/SentryOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackedWindows:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameStartNanos:J

    .line 47
    iput-wide v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    const-string v0, "The context is required"

    .line 64
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SentryOptions is required"

    .line 65
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->options:Lio/sentry/SentryOptions;

    const-string v0, "BuildInfoProvider is required"

    .line 67
    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const-string v0, "WindowFrameMetricsManager is required"

    .line 69
    invoke-static {p4, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    iput-object p4, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->windowFrameMetricsManager:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    .line 72
    instance-of p4, p1, Landroid/app/Application;

    if-nez p4, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p4

    const/16 v0, 0x18

    if-ge p4, v0, :cond_1

    return-void

    :cond_1
    const/4 p4, 0x1

    .line 79
    iput-boolean p4, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "io.sentry.android.core.internal.util.SentryFrameMetricsCollector"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 86
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handler:Landroid/os/Handler;

    .line 91
    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 97
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :try_start_0
    const-class p1, Landroid/view/Choreographer;

    const-string v0, "mLastFrameTimeNanos"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographerLastFrameTimeField:Ljava/lang/reflect/Field;

    .line 101
    invoke-virtual {p1, p4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object p4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Unable to get the frame timestamp from the choreographer: "

    .line 105
    invoke-interface {p2, p4, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :goto_0
    new-instance p1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/android/core/BuildInfoProvider;)V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->frameMetricsAvailableListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    return-void
.end method

.method private getFrameCpuDuration(Landroid/view/FrameMetrics;)J
    .locals 4

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 169
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x2

    .line 170
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x3

    .line 171
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x4

    .line 172
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x5

    .line 173
    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getFrameStartTimestamp(Landroid/view/FrameMetrics;)J
    .locals 2

    .line 143
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v0, 0xa

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v0

    return-wide v0

    .line 149
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographer:Landroid/view/Choreographer;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographerLastFrameTimeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 152
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static synthetic lambda$new$0(Lio/sentry/SentryOptions;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Error during frames measurements."

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private setCurrentWindow(Landroid/view/Window;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    .line 251
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackCurrentWindow()V

    return-void
.end method

.method private stopTrackingWindow(Landroid/view/Window;)V
    .locals 4

    .line 231
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackedWindows:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 234
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->windowFrameMetricsManager:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->frameMetricsAvailableListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    invoke-interface {v0, p1, v1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;->removeOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->options:Lio/sentry/SentryOptions;

    .line 238
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to remove frameMetricsAvailableListener"

    .line 239
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackedWindows:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private trackCurrentWindow()V
    .locals 4

    .line 256
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 257
    iget-boolean v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 261
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackedWindows:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v1

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackedWindows:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->windowFrameMetricsManager:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->frameMetricsAvailableListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    iget-object v3, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->handler:Landroid/os/Handler;

    invoke-interface {v1, v0, v2, v3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;->addOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method synthetic lambda$new$1$io-sentry-android-core-internal-util-SentryFrameMetricsCollector()V
    .locals 1

    .line 97
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->choreographer:Landroid/view/Choreographer;

    return-void
.end method

.method synthetic lambda$new$2$io-sentry-android-core-internal-util-SentryFrameMetricsCollector(Lio/sentry/android/core/BuildInfoProvider;Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 10

    .line 109
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 111
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 p4, 0x1e

    if-lt p1, p4, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    .line 115
    :goto_0
    invoke-direct {p0, p3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->getFrameCpuDuration(Landroid/view/FrameMetrics;)J

    move-result-wide v8

    .line 116
    invoke-direct {p0, p3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->getFrameStartTimestamp(Landroid/view/FrameMetrics;)J

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmp-long p4, p2, v2

    if-gez p4, :cond_1

    sub-long p2, v0, v8

    .line 122
    :cond_1
    iget-wide v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 124
    iget-wide v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameStartNanos:J

    cmp-long p4, p2, v0

    if-nez p4, :cond_2

    return-void

    .line 127
    :cond_2
    iput-wide p2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameStartNanos:J

    add-long/2addr p2, v8

    .line 128
    iput-wide p2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    .line 130
    iget-object p2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;

    .line 131
    iget-wide v3, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lastFrameEndNanos:J

    move-wide v5, v8

    move v7, p1

    invoke-interface/range {v2 .. v7}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;->onFrameMetricCollected(JJF)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 183
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->setCurrentWindow(Landroid/view/Window;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopTrackingWindow(Landroid/view/Window;)V

    .line 195
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public startCollection(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;)Ljava/lang/String;
    .locals 2

    .line 207
    iget-boolean v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 210
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->trackCurrentWindow()V

    return-object v0
.end method

.method public stopCollection(Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->currentWindow:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 224
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->listenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopTrackingWindow(Landroid/view/Window;)V

    :cond_3
    return-void
.end method
