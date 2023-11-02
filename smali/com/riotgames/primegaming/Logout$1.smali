.class Lcom/riotgames/primegaming/Logout$1;
.super Ljava/lang/Object;
.source "Logout.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/primegaming/Logout;->logout(JLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/api/Listener<",
        "Ljava/lang/Void;",
        "Lcom/amazon/identity/auth/device/AuthError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ptr:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-wide p1, p0, Lcom/riotgames/primegaming/Logout$1;->val$ptr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .locals 4

    .line 41
    invoke-static {}, Lcom/riotgames/primegaming/Logout;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-wide v0, p0, Lcom/riotgames/primegaming/Logout$1;->val$ptr:J

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getCategory()Lcom/amazon/identity/auth/device/AuthError$ERROR_CATEGORY;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/AuthError$ERROR_CATEGORY;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getType()Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->value()I

    move-result p1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2, p1}, Lcom/riotgames/primegaming/Logout;->onLogoutError(JIII)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {p0, p1}, Lcom/riotgames/primegaming/Logout$1;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/riotgames/primegaming/Logout$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2

    .line 35
    invoke-static {}, Lcom/riotgames/primegaming/Logout;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-wide v0, p0, Lcom/riotgames/primegaming/Logout$1;->val$ptr:J

    invoke-static {v0, v1}, Lcom/riotgames/primegaming/Logout;->onLogoutSuccess(J)V

    return-void
.end method
