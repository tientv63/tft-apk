.class Lcom/riotgames/primegaming/LoginActivity$1;
.super Lcom/amazon/identity/auth/device/api/authorization/AuthorizeListener;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/primegaming/LoginActivity;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/primegaming/LoginActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/primegaming/LoginActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;)V
    .locals 3

    .line 98
    invoke-static {}, Lcom/riotgames/primegaming/LoginActivity;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthorizeListener > onCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-static {p1}, Lcom/riotgames/primegaming/LoginActivity;->access$100(Lcom/riotgames/primegaming/LoginActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lcom/riotgames/primegaming/LoginActivity;->onLoginError(JIII)V

    .line 100
    iget-object p1, p0, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-virtual {p1}, Lcom/riotgames/primegaming/LoginActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;

    invoke-virtual {p0, p1}, Lcom/riotgames/primegaming/LoginActivity$1;->onCancel(Lcom/amazon/identity/auth/device/api/authorization/AuthCancellation;)V

    return-void
.end method

.method public onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .locals 4

    .line 89
    invoke-static {}, Lcom/riotgames/primegaming/LoginActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthorizeListener > onError"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

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

    .line 91
    iget-object p1, p0, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-virtual {p1}, Lcom/riotgames/primegaming/LoginActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {p0, p1}, Lcom/riotgames/primegaming/LoginActivity$1;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public onSuccess(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/riotgames/primegaming/LoginActivity$1;->this$0:Lcom/riotgames/primegaming/LoginActivity;

    invoke-static {}, Lcom/riotgames/primegaming/LoginActivity;->access$000()[Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v0

    new-instance v1, Lcom/riotgames/primegaming/LoginActivity$1$1;

    invoke-direct {v1, p0}, Lcom/riotgames/primegaming/LoginActivity$1$1;-><init>(Lcom/riotgames/primegaming/LoginActivity$1;)V

    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->getToken(Landroid/content/Context;[Lcom/amazon/identity/auth/device/api/authorization/Scope;Lcom/amazon/identity/auth/device/api/Listener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;

    invoke-virtual {p0, p1}, Lcom/riotgames/primegaming/LoginActivity$1;->onSuccess(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeResult;)V

    return-void
.end method
