.class public final Lio/sentry/android/core/AppStartState;
.super Ljava/lang/Object;
.source "AppStartState.java"


# static fields
.field private static final MAX_APP_START_MILLIS:I = 0xea60

.field private static instance:Lio/sentry/android/core/AppStartState;


# instance fields
.field private appStartEndMillis:Ljava/lang/Long;

.field private appStartMillis:Ljava/lang/Long;

.field private appStartTime:Lio/sentry/SentryDate;

.field private coldStart:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lio/sentry/android/core/AppStartState;

    invoke-direct {v0}, Lio/sentry/android/core/AppStartState;-><init>()V

    sput-object v0, Lio/sentry/android/core/AppStartState;->instance:Lio/sentry/android/core/AppStartState;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lio/sentry/android/core/AppStartState;->coldStart:Ljava/lang/Boolean;

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/AppStartState;
    .locals 1

    .line 34
    sget-object v0, Lio/sentry/android/core/AppStartState;->instance:Lio/sentry/android/core/AppStartState;

    return-object v0
.end method


# virtual methods
.method public getAppStartEndTime()Lio/sentry/SentryDate;
    .locals 4

    .line 91
    invoke-virtual {p0}, Lio/sentry/android/core/AppStartState;->getAppStartTime()Lio/sentry/SentryDate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lio/sentry/android/core/AppStartState;->getAppStartInterval()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v2

    .line 96
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 97
    new-instance v0, Lio/sentry/SentryLongDate;

    invoke-direct {v0, v2, v3}, Lio/sentry/SentryLongDate;-><init>(J)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getAppStartInterval()Ljava/lang/Long;
    .locals 6

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartMillis:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartEndMillis:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lio/sentry/android/core/AppStartState;->coldStart:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 67
    monitor-exit p0

    return-object v1

    .line 70
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 54
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppStartMillis()Ljava/lang/Long;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getAppStartTime()Lio/sentry/SentryDate;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartTime:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public isColdStart()Ljava/lang/Boolean;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/sentry/android/core/AppStartState;->coldStart:Ljava/lang/Boolean;

    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 125
    :try_start_0
    iput-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartTime:Lio/sentry/SentryDate;

    .line 126
    iput-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartMillis:Ljava/lang/Long;

    .line 127
    iput-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartEndMillis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resetInstance()V
    .locals 1

    .line 39
    new-instance v0, Lio/sentry/android/core/AppStartState;

    invoke-direct {v0}, Lio/sentry/android/core/AppStartState;-><init>()V

    sput-object v0, Lio/sentry/android/core/AppStartState;->instance:Lio/sentry/android/core/AppStartState;

    return-void
.end method

.method declared-synchronized setAppStartEnd()V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/AppStartState;->setAppStartEnd(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setAppStartEnd(J)V
    .locals 0

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/AppStartState;->appStartEndMillis:Ljava/lang/Long;

    return-void
.end method

.method public declared-synchronized setAppStartMillis(J)V
    .locals 0

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/AppStartState;->appStartMillis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setAppStartTime(JLio/sentry/SentryDate;)V
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartTime:Lio/sentry/SentryDate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/AppStartState;->appStartMillis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 112
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    :try_start_1
    iput-object p3, p0, Lio/sentry/android/core/AppStartState;->appStartTime:Lio/sentry/SentryDate;

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/AppStartState;->appStartMillis:Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setColdStart(Z)V
    .locals 1

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AppStartState;->coldStart:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/AppStartState;->coldStart:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
