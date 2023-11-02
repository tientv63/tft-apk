.class Lcom/riotgames/facebookaccount/FacebookAccountActivity$2;
.super Ljava/lang/Object;
.source "FacebookAccountActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/facebookaccount/FacebookAccountActivity;->onLaunchSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$2;->this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$2;->this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-static {v0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->access$200(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    .line 88
    invoke-static {}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to log in with Facebook:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object p1, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$2;->this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-static {p1}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->access$400(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$2;->this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->access$100(Lcom/riotgames/facebookaccount/FacebookAccountActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/riotgames/facebookaccount/FacebookAccountActivity$2;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
