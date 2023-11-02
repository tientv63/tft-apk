.class public Lio/sentry/android/core/internal/util/Debouncer;
.super Ljava/lang/Object;
.source "Debouncer.java"


# instance fields
.field private lastExecutionTime:Ljava/lang/Long;

.field private final timeProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private final waitTimeMs:J


# direct methods
.method public constructor <init>(Lio/sentry/transport/ICurrentDateProvider;J)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/sentry/android/core/internal/util/Debouncer;->lastExecutionTime:Ljava/lang/Long;

    .line 17
    iput-object p1, p0, Lio/sentry/android/core/internal/util/Debouncer;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 18
    iput-wide p2, p0, Lio/sentry/android/core/internal/util/Debouncer;->waitTimeMs:J

    return-void
.end method


# virtual methods
.method public checkForDebounce()Z
    .locals 6

    .line 26
    iget-object v0, p0, Lio/sentry/android/core/internal/util/Debouncer;->timeProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-interface {v0}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 27
    iget-object v2, p0, Lio/sentry/android/core/internal/util/Debouncer;->lastExecutionTime:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lio/sentry/android/core/internal/util/Debouncer;->waitTimeMs:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 28
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/internal/util/Debouncer;->lastExecutionTime:Ljava/lang/Long;

    const/4 v0, 0x0

    return v0
.end method
