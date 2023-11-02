.class Lio/sentry/android/core/AndroidTransactionProfiler$1;
.super Ljava/lang/Object;
.source "AndroidTransactionProfiler.java"

# interfaces
.implements Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/AndroidTransactionProfiler;->onFirstTransactionStarted(Lio/sentry/ITransaction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final frozenFrameThresholdNanos:J

.field lastRefreshRate:F

.field final nanosInSecond:J

.field final synthetic this$0:Lio/sentry/android/core/AndroidTransactionProfiler;


# direct methods
.method constructor <init>(Lio/sentry/android/core/AndroidTransactionProfiler;)V
    .locals 2

    .line 194
    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->this$0:Lio/sentry/android/core/AndroidTransactionProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->nanosInSecond:J

    .line 196
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->frozenFrameThresholdNanos:J

    const/4 p1, 0x0

    .line 197
    iput p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->lastRefreshRate:F

    return-void
.end method


# virtual methods
.method public onFrameMetricCollected(JJF)V
    .locals 3

    .line 207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    add-long/2addr p1, v0

    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->this$0:Lio/sentry/android/core/AndroidTransactionProfiler;

    .line 209
    invoke-static {v0}, Lio/sentry/android/core/AndroidTransactionProfiler;->access$000(Lio/sentry/android/core/AndroidTransactionProfiler;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    long-to-float v0, p3

    .line 219
    iget-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->nanosInSecond:J

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p5, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p5, v1

    float-to-int p5, p5

    int-to-float p5, p5

    div-float/2addr p5, v1

    .line 221
    iget-wide v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->frozenFrameThresholdNanos:J

    cmp-long v1, p3, v1

    if-lez v1, :cond_2

    .line 222
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->this$0:Lio/sentry/android/core/AndroidTransactionProfiler;

    invoke-static {v0}, Lio/sentry/android/core/AndroidTransactionProfiler;->access$100(Lio/sentry/android/core/AndroidTransactionProfiler;)Ljava/util/ArrayDeque;

    move-result-object v0

    new-instance v1, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 223
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v1, v2, p3}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->this$0:Lio/sentry/android/core/AndroidTransactionProfiler;

    invoke-static {v0}, Lio/sentry/android/core/AndroidTransactionProfiler;->access$200(Lio/sentry/android/core/AndroidTransactionProfiler;)Ljava/util/ArrayDeque;

    move-result-object v0

    new-instance v1, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 226
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {v1, v2, p3}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 228
    :cond_3
    :goto_1
    iget p3, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->lastRefreshRate:F

    cmpl-float p3, p5, p3

    if-eqz p3, :cond_4

    .line 229
    iput p5, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->lastRefreshRate:F

    .line 230
    iget-object p3, p0, Lio/sentry/android/core/AndroidTransactionProfiler$1;->this$0:Lio/sentry/android/core/AndroidTransactionProfiler;

    invoke-static {p3}, Lio/sentry/android/core/AndroidTransactionProfiler;->access$300(Lio/sentry/android/core/AndroidTransactionProfiler;)Ljava/util/ArrayDeque;

    move-result-object p3

    new-instance p4, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 231
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p4, p1, p2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;)V

    .line 230
    invoke-virtual {p3, p4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
