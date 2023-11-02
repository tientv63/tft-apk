.class public final Lio/sentry/android/core/ActivityLifecycleIntegration;
.super Ljava/lang/Object;
.source "ActivityLifecycleIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final APP_START_COLD:Ljava/lang/String; = "app.start.cold"

.field static final APP_START_WARM:Ljava/lang/String; = "app.start.warm"

.field private static final TRACE_ORIGIN:Ljava/lang/String; = "auto.ui.activity"

.field static final TTFD_OP:Ljava/lang/String; = "ui.load.full_display"

.field static final TTFD_TIMEOUT_MILLIS:J = 0x7530L

.field static final TTID_OP:Ljava/lang/String; = "ui.load.initial_display"

.field static final UI_LOAD_OP:Ljava/lang/String; = "ui.load"


# instance fields
.field private final activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ITransaction;",
            ">;"
        }
    .end annotation
.end field

.field private final activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

.field private appStartSpan:Lio/sentry/ISpan;

.field private final application:Landroid/app/Application;

.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private firstActivityCreated:Z

.field private final foregroundImportance:Z

.field private fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

.field private hub:Lio/sentry/IHub;

.field private isAllActivityCallbacksAvailable:Z

.field private lastPausedTime:Lio/sentry/SentryDate;

.field private final mainHandler:Landroid/os/Handler;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private performanceEnabled:Z

.field private timeToFullDisplaySpanEnabled:Z

.field private ttfdAutoCloseFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final ttfdSpanMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field

.field private final ttidSpanMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    .line 67
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    .line 71
    iput-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 76
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    .line 77
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    .line 78
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->mainHandler:Landroid/os/Handler;

    .line 80
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    .line 84
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    const-string v0, "Application is required"

    .line 93
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    const-string v0, "BuildInfoProvider is required"

    .line 95
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/BuildInfoProvider;

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const-string v0, "ActivityFramesTracker is required"

    .line 97
    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/sentry/android/core/ActivityFramesTracker;

    iput-object p3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 99
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p2

    const/16 p3, 0x1d

    if-lt p2, p3, :cond_0

    const/4 p2, 0x1

    .line 100
    iput-boolean p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    .line 105
    :cond_0
    invoke-static {p1}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->foregroundImportance:Z

    return-void
.end method

.method private addBreadcrumb(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "navigation"

    .line 151
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v1, "state"

    .line 152
    invoke-virtual {v0, v1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "screen"

    invoke-virtual {v0, v1, p2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "ui.lifecycle"

    .line 154
    invoke-virtual {v0, p2}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 155
    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p2}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 157
    new-instance p2, Lio/sentry/Hint;

    invoke-direct {p2}, Lio/sentry/Hint;-><init>()V

    const-string v1, "android:activity"

    .line 158
    invoke-virtual {p2, v1, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    invoke-interface {p1, v0, p2}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    :cond_0
    return-void
.end method

.method private cancelTtfdAutoClose()V
    .locals 2

    .line 536
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 537
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private finishAppStartSpan()V
    .locals 2

    .line 659
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/AppStartState;->getAppStartEndTime()Lio/sentry/SentryDate;

    move-result-object v0

    .line 660
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 661
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    :cond_0
    return-void
.end method

.method private finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 578
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 581
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getExceededTtfdDesc(Lio/sentry/ISpan;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ISpan;->setDescription(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 583
    invoke-interface {p2}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 585
    :cond_2
    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object p2

    .line 586
    :goto_1
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 507
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-interface {p1}, Lio/sentry/ISpan;->finish()V

    :cond_0
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V
    .locals 1

    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V

    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;Lio/sentry/SpanStatus;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 520
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p3

    goto :goto_0

    :cond_1
    sget-object p3, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 525
    :goto_0
    invoke-interface {p1, p3, p2}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    :cond_2
    return-void
.end method

.method private finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 530
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-interface {p1, p2}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V

    :cond_0
    return-void
.end method

.method private finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 344
    invoke-interface {p1}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 349
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 350
    invoke-direct {p0, p3, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 351
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    .line 353
    invoke-interface {p1}, Lio/sentry/ITransaction;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p2

    if-nez p2, :cond_1

    .line 356
    sget-object p2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 358
    :cond_1
    invoke-interface {p1, p2}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;)V

    .line 359
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz p2, :cond_2

    .line 362
    new-instance p3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    invoke-interface {p2, p3}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    :cond_2
    return-void
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAppStartDesc(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "Cold Start"

    return-object p1

    :cond_0
    const-string p1, "Warm Start"

    return-object p1
.end method

.method private getAppStartOp(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "app.start.cold"

    return-object p1

    :cond_0
    const-string p1, "app.start.warm"

    return-object p1
.end method

.method private getExceededTtfdDesc(Lio/sentry/ISpan;)Ljava/lang/String;
    .locals 3

    .line 636
    invoke-interface {p1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, " - Deadline Exceeded"

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/sentry/ISpan;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTtfdDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " full display"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTtidDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " initial display"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isPerformanceEnabled(Lio/sentry/android/core/SentryAndroidOptions;)Z
    .locals 1

    .line 134
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isRunningTransactionOrTrace(Landroid/app/Activity;)Z
    .locals 1

    .line 327
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$clearScope$4(Lio/sentry/ITransaction;Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 0

    if-ne p2, p0, :cond_0

    .line 321
    invoke-virtual {p1}, Lio/sentry/Scope;->clearTransaction()V

    :cond_0
    return-void
.end method

.method private onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 6

    .line 543
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 544
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 545
    invoke-interface {p2}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v1

    .line 546
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 548
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    const-string v5, "time_to_initial_display"

    .line 547
    invoke-interface {p2, v5, v3, v4}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    if-eqz p1, :cond_0

    .line 550
    invoke-interface {p1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    invoke-interface {p1, v0}, Lio/sentry/ISpan;->updateEndDate(Lio/sentry/SentryDate;)Z

    .line 554
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget-object v1, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    const-string v2, "time_to_full_display"

    .line 553
    invoke-interface {p2, v2, p1, v1}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 556
    :cond_0
    invoke-direct {p0, p2, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    goto :goto_0

    .line 558
    :cond_1
    invoke-direct {p0, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;)V

    :goto_0
    return-void
.end method

.method private onFullFrameDrawn(Lio/sentry/ISpan;)V
    .locals 4

    .line 563
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 565
    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v1

    .line 566
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 568
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lio/sentry/MeasurementUnit$Duration;->MILLISECOND:Lio/sentry/MeasurementUnit$Duration;

    const-string v3, "time_to_full_display"

    .line 567
    invoke-interface {p1, v3, v1, v2}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    .line 569
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SentryDate;)V

    goto :goto_0

    .line 571
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;)V

    .line 573
    :goto_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    return-void
.end method

.method private setColdStart(Landroid/os/Bundle;)V
    .locals 1

    .line 620
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v0, :cond_1

    .line 623
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lio/sentry/android/core/AppStartState;->setColdStart(Z)V

    :cond_1
    return-void
.end method

.method private setSpanOrigin(Lio/sentry/ISpan;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 293
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    const-string v0, "auto.ui.activity"

    invoke-virtual {p1, v0}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startTracing(Landroid/app/Activity;)V
    .locals 9

    .line 179
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 180
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->isRunningTransactionOrTrace(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 181
    iget-boolean v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-nez v1, :cond_0

    .line 182
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    invoke-static {p1}, Lio/sentry/util/TracingUtils;->startNewTrace(Lio/sentry/IHub;)V

    goto/16 :goto_3

    :cond_0
    if-eqz v1, :cond_6

    .line 186
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopPreviousTransactions()V

    .line 188
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 191
    iget-boolean v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->foregroundImportance:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/AppStartState;->getAppStartTime()Lio/sentry/SentryDate;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 192
    :goto_0
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/android/core/AppStartState;->isColdStart()Ljava/lang/Boolean;

    move-result-object v3

    .line 194
    new-instance v4, Lio/sentry/TransactionOptions;

    invoke-direct {v4}, Lio/sentry/TransactionOptions;-><init>()V

    .line 195
    iget-object v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 196
    iget-object v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/sentry/TransactionOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 197
    invoke-virtual {v4, v6}, Lio/sentry/TransactionOptions;->setTrimEnd(Z)V

    .line 199
    :cond_2
    invoke-virtual {v4, v6}, Lio/sentry/TransactionOptions;->setWaitForChildren(Z)V

    .line 200
    new-instance v5, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda5;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lio/sentry/TransactionOptions;->setTransactionFinishedCallback(Lio/sentry/TransactionFinishedCallback;)V

    .line 221
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move-object v0, v2

    goto :goto_1

    .line 226
    :cond_3
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    .line 228
    :goto_1
    invoke-virtual {v4, v0}, Lio/sentry/TransactionOptions;->setStartTimestamp(Lio/sentry/SentryDate;)V

    .line 231
    iget-object v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    new-instance v6, Lio/sentry/TransactionContext;

    sget-object v7, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    const-string v8, "ui.load"

    invoke-direct {v6, v1, v7, v8}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V

    .line 232
    invoke-interface {v5, v6, v4}, Lio/sentry/IHub;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v4

    .line 235
    invoke-direct {p0, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    .line 238
    iget-boolean v5, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    if-nez v5, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 242
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartOp(Z)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getAppStartDesc(Z)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    .line 241
    invoke-interface {v4, v5, v3, v2, v6}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    .line 246
    invoke-direct {p0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    .line 250
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan()V

    .line 254
    :cond_4
    invoke-direct {p0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getTtidDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    const-string v5, "ui.load.initial_display"

    .line 253
    invoke-interface {v4, v5, v2, v0, v3}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v2

    .line 255
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-direct {p0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    .line 258
    iget-boolean v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v3, :cond_5

    .line 261
    invoke-direct {p0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->getTtfdDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    const-string v5, "ui.load.full_display"

    .line 260
    invoke-interface {v4, v5, v1, v0, v3}, Lio/sentry/ITransaction;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;

    move-result-object v0

    .line 262
    invoke-direct {p0, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setSpanOrigin(Lio/sentry/ISpan;)V

    .line 264
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 267
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v1

    new-instance v3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, v0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda6;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    const-wide/16 v5, 0x7530

    .line 268
    invoke-interface {v1, v3, v5, v6}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdAutoCloseFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 271
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 272
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to call the executor. Time to full display span will not be finished automatically. Did you call Sentry.close()?"

    .line 273
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    :cond_5
    :goto_2
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    new-instance v1, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v4}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda7;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V

    invoke-interface {v0, v1}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 286
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-void
.end method

.method private stopPreviousTransactions()V
    .locals 5

    .line 170
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ITransaction;

    .line 172
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/ISpan;

    .line 173
    iget-object v4, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 174
    invoke-direct {p0, v2, v3, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private stopTracing(Landroid/app/Activity;Z)V
    .locals 1

    .line 331
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 332
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ITransaction;

    const/4 p2, 0x0

    .line 333
    invoke-direct {p0, p1, p2, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishTransaction(Lio/sentry/ITransaction;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    :cond_0
    return-void
.end method


# virtual methods
.method applyScope(Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 1

    .line 299
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/Scope;Lio/sentry/ITransaction;)V

    invoke-virtual {p1, v0}, Lio/sentry/Scope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method clearScope(Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 1

    .line 318
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;-><init>(Lio/sentry/ITransaction;Lio/sentry/Scope;)V

    invoke-virtual {p1, v0}, Lio/sentry/Scope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 141
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ActivityLifecycleIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    invoke-virtual {v0}, Lio/sentry/android/core/ActivityFramesTracker;->stop()V

    return-void
.end method

.method getActivitiesWithOngoingTransactions()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ITransaction;",
            ">;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method getActivityFramesTracker()Lio/sentry/android/core/ActivityFramesTracker;
    .locals 1

    .line 598
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    return-object v0
.end method

.method getAppStartSpan()Lio/sentry/ISpan;
    .locals 1

    .line 604
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    return-object v0
.end method

.method getTtfdSpanMap()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method getTtidSpanMap()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method synthetic lambda$applyScope$3$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/Scope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 2

    if-nez p3, :cond_0

    .line 304
    invoke-virtual {p1, p2}, Lio/sentry/Scope;->setTransaction(Lio/sentry/ITransaction;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_1

    .line 307
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 311
    invoke-interface {p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 308
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$finishTransaction$5$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ITransaction;Lio/sentry/Scope;)V
    .locals 0

    .line 364
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->clearScope(Lio/sentry/Scope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method synthetic lambda$onActivityCreated$6$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;)V
    .locals 0

    .line 381
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFullFrameDrawn(Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$onActivityResumed$7$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$onActivityResumed$8$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 424
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->onFirstFrameDrawn(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$startTracing$0$io-sentry-android-core-ActivityLifecycleIntegration(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/ITransaction;)V
    .locals 2

    .line 202
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 204
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    .line 205
    invoke-interface {p3}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p3

    .line 204
    invoke-virtual {p2, p1, p3}, Lio/sentry/android/core/ActivityFramesTracker;->setMetrics(Landroid/app/Activity;Lio/sentry/protocol/SentryId;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_1

    .line 209
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Unable to track activity frames as the Activity %s has been destroyed."

    .line 210
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$startTracing$1$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method

.method synthetic lambda$startTracing$2$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ITransaction;Lio/sentry/Scope;)V
    .locals 0

    .line 283
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->applyScope(Lio/sentry/Scope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method public declared-synchronized onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    .line 373
    :try_start_0
    invoke-direct {p0, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->setColdStart(Landroid/os/Bundle;)V

    const-string p2, "created"

    .line 374
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->addBreadcrumb(Landroid/app/Activity;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->startTracing(Landroid/app/Activity;)V

    .line 376
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    const/4 p2, 0x1

    .line 378
    iput-boolean p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->firstActivityCreated:Z

    .line 380
    iget-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    if-eqz p2, :cond_0

    .line 381
    new-instance v0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;)V

    invoke-virtual {p2, v0}, Lio/sentry/FullyDisplayedReporter;->registerFullyDrawnListener(Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    monitor-enter p0

    .line 473
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "destroyed"

    .line 474
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->addBreadcrumb(Landroid/app/Activity;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    sget-object v1, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-direct {p0, v0, v1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 481
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    .line 482
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 483
    sget-object v2, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-direct {p0, v0, v2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishSpan(Lio/sentry/ISpan;Lio/sentry/SpanStatus;)V

    .line 486
    invoke-direct {p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishExceededTtfdSpan(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    .line 487
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->cancelTtfdAutoClose()V

    const/4 v0, 0x1

    .line 491
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->stopTracing(Landroid/app/Activity;Z)V

    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->appStartSpan:Lio/sentry/ISpan;

    .line 495
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activitiesWithOngoingTransactions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 450
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-nez v0, :cond_0

    .line 452
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    goto :goto_0

    .line 454
    :cond_0
    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    :cond_1
    :goto_0
    const-string v0, "paused"

    .line 457
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->addBreadcrumb(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 0

    .line 438
    iget-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->isAllActivityCallbacksAvailable:Z

    if-eqz p1, :cond_1

    .line 439
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    if-nez p1, :cond_0

    .line 440
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    goto :goto_0

    .line 442
    :cond_0
    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->lastPausedTime:Lio/sentry/SentryDate;

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    monitor-enter p0

    .line 402
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_2

    .line 404
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/AppStartState;->getAppStartTime()Lio/sentry/SentryDate;

    move-result-object v0

    .line 405
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/AppStartState;->getAppStartEndTime()Lio/sentry/SentryDate;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 410
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/AppStartState;->setAppStartEnd()V

    .line 412
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->finishAppStartSpan()V

    .line 414
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttidSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    .line 415
    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->ttfdSpanMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    const v2, 0x1020002

    .line 416
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 417
    iget-object v3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    if-eqz v2, :cond_1

    .line 419
    new-instance v3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v2, v3, v0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/view/View;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    const-string v0, "resumed"

    .line 427
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->addBreadcrumb(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p2, "saveInstanceState"

    .line 468
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/ActivityLifecycleIntegration;->addBreadcrumb(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    .line 387
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->activityFramesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/ActivityFramesTracker;->addActivity(Landroid/app/Activity;)V

    :cond_0
    const-string v0, "started"

    .line 396
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->addBreadcrumb(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "stopped"

    .line 462
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->addBreadcrumb(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 3

    .line 112
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 111
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string p2, "Hub is required"

    .line 115
    invoke-static {p1, p2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->hub:Lio/sentry/IHub;

    .line 117
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 118
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 122
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ActivityLifecycleIntegration enabled: %s"

    .line 119
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->isPerformanceEnabled(Lio/sentry/android/core/SentryAndroidOptions;)Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->performanceEnabled:Z

    .line 125
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 126
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result p1

    iput-boolean p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->timeToFullDisplaySpanEnabled:Z

    .line 128
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->application:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 129
    iget-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "ActivityLifecycleIntegration installed."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->addIntegrationToSdkVersion()V

    return-void
.end method
