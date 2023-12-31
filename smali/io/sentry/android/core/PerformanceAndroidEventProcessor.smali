.class final Lio/sentry/android/core/PerformanceAndroidEventProcessor;
.super Ljava/lang/Object;
.source "PerformanceAndroidEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;


# instance fields
.field private final activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private sentStartMeasurement:Z


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->sentStartMeasurement:Z

    const-string v0, "SentryAndroidOptions is required"

    .line 33
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string p1, "ActivityFramesTracker is required"

    .line 35
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/ActivityFramesTracker;

    iput-object p1, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    return-void
.end method

.method private hasAppStartSpan(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentrySpan;",
            ">;)Z"
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentrySpan;

    .line 104
    invoke-virtual {v0}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app.start.cold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {v0}, Lio/sentry/protocol/SentrySpan;->getOp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app.start.warm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    return-object p1
.end method

.method public declared-synchronized process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 3

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object p2, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 60
    monitor-exit p0

    return-object p1

    .line 65
    :cond_0
    :try_start_1
    iget-boolean p2, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->sentStartMeasurement:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getSpans()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->hasAppStartSpan(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 66
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/android/core/AppStartState;->getAppStartInterval()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 69
    new-instance v0, Lio/sentry/protocol/MeasurementValue;

    .line 71
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p2, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    sget-object v1, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    invoke-virtual {v1}, Lio/sentry/MeasurementUnit$Duration;->apiName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/android/core/AppStartState;->isColdStart()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "app_start_cold"

    goto :goto_0

    :cond_1
    const-string p2, "app_start_warm"

    .line 78
    :goto_0
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->sentStartMeasurement:Z

    .line 83
    :cond_2
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p2

    .line 84
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ui.load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 93
    invoke-virtual {v0, p2}, Lio/sentry/android/core/ActivityFramesTracker;->takeMetrics(Lio/sentry/protocol/SentryId;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 95
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
