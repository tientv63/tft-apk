.class public final Lio/sentry/android/core/NetworkBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "NetworkBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;,
        Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
    }
.end annotation


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final logger:Lio/sentry/ILogger;

.field networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context is required"

    .line 41
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->context:Landroid/content/Context;

    const-string p1, "BuildInfoProvider is required"

    .line 43
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const-string p1, "ILogger is required"

    .line 44
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

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

    .line 88
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    iget-object v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v1, v2, v3, v0}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->unregisterNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 91
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "NetworkBreadcrumbsIntegration remove."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 6

    const-string v0, "Hub is required"

    .line 50
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 52
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 56
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 59
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "NetworkBreadcrumbsIntegration enabled: %s"

    .line 56
    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 64
    iget-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p2

    const/16 v0, 0x15

    if-ge p2, v0, :cond_1

    .line 65
    iput-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    .line 66
    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "NetworkBreadcrumbsIntegration requires Android 5+"

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 70
    :cond_1
    new-instance p2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {p2, p1, v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;-><init>(Lio/sentry/IHub;Lio/sentry/android/core/BuildInfoProvider;)V

    iput-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    .line 71
    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->context:Landroid/content/Context;

    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 72
    invoke-static {p1, v0, v2, p2}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->registerNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 77
    iput-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    .line 78
    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "NetworkBreadcrumbsIntegration not installed."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 81
    :cond_2
    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "NetworkBreadcrumbsIntegration installed."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->addIntegrationToSdkVersion()V

    :cond_3
    return-void
.end method
