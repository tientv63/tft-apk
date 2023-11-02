.class public final Lio/sentry/android/core/SentryPerformanceProvider;
.super Lio/sentry/android/core/EmptySecureContentProvider;
.source "SentryPerformanceProvider.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static appStartMillis:J

.field private static appStartTime:Lio/sentry/SentryDate;


# instance fields
.field private application:Landroid/app/Application;

.field private firstActivityCreated:Z

.field private firstActivityResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lio/sentry/android/core/AndroidDateUtils;->getCurrentSentryDateTime()Lio/sentry/SentryDate;

    move-result-object v0

    sput-object v0, Lio/sentry/android/core/SentryPerformanceProvider;->appStartTime:Lio/sentry/SentryDate;

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/SentryPerformanceProvider;->appStartMillis:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 36
    invoke-direct {p0}, Lio/sentry/android/core/EmptySecureContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->firstActivityCreated:Z

    .line 32
    iput-boolean v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->firstActivityResumed:Z

    .line 37
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object v0

    sget-wide v1, Lio/sentry/android/core/SentryPerformanceProvider;->appStartMillis:J

    sget-object v3, Lio/sentry/android/core/SentryPerformanceProvider;->appStartTime:Lio/sentry/SentryDate;

    invoke-virtual {v0, v1, v2, v3}, Lio/sentry/android/core/AppStartState;->setAppStartTime(JLio/sentry/SentryDate;)V

    return-void
.end method

.method static setAppStartTime(JLio/sentry/SentryDate;)V
    .locals 0

    .line 80
    sput-wide p0, Lio/sentry/android/core/SentryPerformanceProvider;->appStartMillis:J

    .line 81
    sput-object p2, Lio/sentry/android/core/SentryPerformanceProvider;->appStartTime:Lio/sentry/SentryDate;

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 64
    const-class v0, Lio/sentry/android/core/SentryPerformanceProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0, p1, p2}, Lio/sentry/android/core/EmptySecureContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An applicationId is required to fulfill the manifest placeholder."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 90
    iget-boolean p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->firstActivityCreated:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    if-nez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 94
    :goto_0
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/sentry/android/core/AppStartState;->setColdStart(Z)V

    .line 96
    iput-boolean p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->firstActivityCreated:Z

    :cond_1
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

    .line 105
    iget-boolean p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->firstActivityResumed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->firstActivityResumed:Z

    .line 108
    invoke-static {}, Lio/sentry/android/core/AppStartState;->getInstance()Lio/sentry/android/core/AppStartState;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/android/core/AppStartState;->setAppStartEnd()V

    .line 110
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->application:Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onCreate()Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Lio/sentry/android/core/SentryPerformanceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    :cond_1
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 54
    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->application:Landroid/app/Application;

    .line 55
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
