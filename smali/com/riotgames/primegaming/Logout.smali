.class public Lcom/riotgames/primegaming/Logout;
.super Ljava/lang/Object;
.source "Logout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.riotgames.primegaming.Logout"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/riotgames/primegaming/Logout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static logout(JLandroid/content/Context;)V
    .locals 2

    .line 31
    :try_start_0
    sget-object v0, Lcom/riotgames/primegaming/Logout;->TAG:Ljava/lang/String;

    const-string v1, "logout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lcom/riotgames/primegaming/Logout$1;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/primegaming/Logout$1;-><init>(J)V

    invoke-static {p2, v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->signOut(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 46
    sget-object v0, Lcom/riotgames/primegaming/Logout;->TAG:Ljava/lang/String;

    const-string v1, "Exception during Logout.logout()"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, p1, p2, v0, v0}, Lcom/riotgames/primegaming/Logout;->onLogoutError(JIII)V

    :goto_0
    return-void
.end method

.method static native onLogoutError(JIII)V
.end method

.method static native onLogoutSuccess(J)V
.end method
