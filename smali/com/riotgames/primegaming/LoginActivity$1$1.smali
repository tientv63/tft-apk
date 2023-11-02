.class Lcom/riotgames/primegaming/LoginActivity$1$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/primegaming/LoginActivity$1;->onSuccess(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/api/Listener<",
        "Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;",
        "Lcom/amazon/identity/auth/device/AuthError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/riotgames/primegaming/LoginActivity$1;


# direct methods
.method constructor <init>(Lcom/riotgames/primegaming/LoginActivity$1;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/riotgames/primegaming/LoginActivity$1$1;->this$1:Lcom/riotgames/primegaming/LoginActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/riotgames/primegaming/LoginActivity$1$1;->this$1:Lcom/riotgames/primegaming/LoginActivity$1;

    iget-object v0, v0, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-static {v0}, Lcom/riotgames/primegaming/LoginActivity;->access$100(Lcom/riotgames/primegaming/LoginActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getCategory()Lcom/amazon/identity/auth/device/AuthError$ERROR_CATEGORY;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/AuthError$ERROR_CATEGORY;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getType()Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->value()I

    move-result p1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2, p1}, Lcom/riotgames/primegaming/LoginActivity;->onLoginError(JIII)V

    .line 79
    iget-object p1, p0, Lcom/riotgames/primegaming/LoginActivity$1$1;->this$1:Lcom/riotgames/primegaming/LoginActivity$1;

    iget-object p1, p1, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-virtual {p1}, Lcom/riotgames/primegaming/LoginActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {p0, p1}, Lcom/riotgames/primegaming/LoginActivity$1$1;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V
    .locals 3

    .line 68
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/riotgames/primegaming/LoginActivity$1$1;->this$1:Lcom/riotgames/primegaming/LoginActivity$1;

    iget-object v0, v0, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-static {v0}, Lcom/riotgames/primegaming/LoginActivity;->access$100(Lcom/riotgames/primegaming/LoginActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/riotgames/primegaming/LoginActivity;->onLoginSuccess(JLjava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/riotgames/primegaming/LoginActivity$1$1;->this$1:Lcom/riotgames/primegaming/LoginActivity$1;

    iget-object p1, p1, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-static {p1}, Lcom/riotgames/primegaming/LoginActivity;->access$100(Lcom/riotgames/primegaming/LoginActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lcom/riotgames/primegaming/LoginActivity;->onLoginError(JIII)V

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/riotgames/primegaming/LoginActivity$1$1;->this$1:Lcom/riotgames/primegaming/LoginActivity$1;

    iget-object p1, p1, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-virtual {p1}, Lcom/riotgames/primegaming/LoginActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;

    invoke-virtual {p0, p1}, Lcom/riotgames/primegaming/LoginActivity$1$1;->onSuccess(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V

    return-void
.end method
