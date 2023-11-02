.class public final Lio/sentry/android/core/internal/util/ConnectivityChecker;
.super Ljava/lang/Object;
.source "ConnectivityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConnectionStatus(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/sentry/ILogger;)Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;
    .locals 1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 66
    invoke-static {p0, v0}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 67
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "No permission (ACCESS_NETWORK_STATE) to check network status."

    invoke-interface {p2, p0, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    sget-object p0, Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;->NO_PERMISSION:Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;

    return-object p0

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 74
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p1, "NetworkInfo is null, there\'s no active network."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    sget-object p0, Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;->NOT_CONNECTED:Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;

    return-object p0

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;->CONNECTED:Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;

    goto :goto_0

    :cond_2
    sget-object p0, Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;->NOT_CONNECTED:Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 79
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Could not retrieve Connection Status"

    invoke-interface {p2, p1, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    sget-object p0, Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;->UNKNOWN:Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;

    return-object p0
.end method

.method public static getConnectionStatus(Landroid/content/Context;Lio/sentry/ILogger;)Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;
    .locals 1

    .line 41
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    sget-object p0, Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;->UNKNOWN:Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;

    return-object p0

    .line 45
    :cond_0
    invoke-static {p0, v0, p1}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->getConnectionStatus(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/sentry/ILogger;)Lio/sentry/android/core/internal/util/ConnectivityChecker$Status;

    move-result-object p0

    return-object p0
.end method

.method public static getConnectionType(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;
    .locals 4

    .line 97
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 101
    invoke-static {p0, v2}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_1

    .line 102
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "No permission (ACCESS_NETWORK_STATE) to check network status."

    invoke-interface {p1, p0, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 111
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p0

    const/16 p2, 0x17

    const/4 v3, 0x1

    if-lt p0, p2, :cond_4

    .line 113
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    if-nez p0, :cond_2

    .line 115
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "Network is null and cannot check network status"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 119
    :cond_2
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_3

    .line 121
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "NetworkCapabilities is null and cannot check network type"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_3
    const/4 p2, 0x3

    .line 124
    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    .line 127
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 130
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    move v3, v2

    move v2, p2

    goto :goto_1

    .line 140
    :cond_4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_5

    .line 143
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "NetworkInfo is null, there\'s no active network."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 148
    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_7

    const/16 p2, 0x9

    if-eq p0, p2, :cond_6

    move v0, v2

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_6
    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_7
    move v0, v3

    move v3, v2

    goto :goto_1

    :cond_8
    move v0, v2

    :goto_1
    if-eqz v2, :cond_9

    const-string p0, "ethernet"

    return-object p0

    :cond_9
    if-eqz v0, :cond_a

    const-string/jumbo p0, "wifi"

    return-object p0

    :cond_a
    if-eqz v3, :cond_b

    const-string p0, "cellular"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 185
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed to retrieve network info"

    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-object v1
.end method

.method public static getConnectionType(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;
    .locals 2

    .line 201
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x15

    if-ge p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x3

    .line 207
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "ethernet"

    return-object p0

    :cond_1
    const/4 p1, 0x1

    .line 210
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p0, "wifi"

    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 213
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "cellular"

    return-object p0

    :cond_3
    return-object v0
.end method

.method private static getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;
    .locals 3

    const-string v0, "connectivity"

    .line 223
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    .line 225
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ConnectivityManager is null and cannot check network status"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static registerNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 2

    .line 236
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ge p2, v1, :cond_0

    .line 237
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "NetworkCallbacks need Android N+."

    invoke-interface {p1, p0, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 240
    :cond_0
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 244
    invoke-static {p0, v1}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 245
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "No permission (ACCESS_NETWORK_STATE) to check network status."

    invoke-interface {p1, p0, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 249
    :cond_2
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 251
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p3, "registerDefaultNetworkCallback failed"

    invoke-interface {p1, p2, p3, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static unregisterNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .line 263
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p2

    const/16 v0, 0x15

    if-ge p2, v0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/ConnectivityChecker;->getConnectivityManager(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 271
    :cond_1
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 273
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p3, "unregisterNetworkCallback failed"

    invoke-interface {p1, p2, p3, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
