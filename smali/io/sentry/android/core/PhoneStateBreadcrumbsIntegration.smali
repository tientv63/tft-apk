.class public final Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "PhoneStateBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field listener:Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context is required"

    .line 28
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->listener:Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->listener:Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

    .line 75
    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PhoneStateBreadcrumbsIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 5

    const-string v0, "Hub is required"

    .line 34
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 36
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 41
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 45
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "enableSystemEventBreadcrumbs enabled: %s"

    .line 42
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 48
    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 52
    :try_start_0
    new-instance v0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

    invoke-direct {v0, p1}, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;-><init>(Lio/sentry/IHub;)V

    iput-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->listener:Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

    .line 53
    iget-object p1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 55
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "PhoneStateBreadcrumbsIntegration installed."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->addIntegrationToSdkVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 58
    iget-object p2, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 59
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "TelephonyManager is not available or ready to use."

    .line 60
    invoke-interface {p2, v0, p1, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "TelephonyManager is not available"

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
