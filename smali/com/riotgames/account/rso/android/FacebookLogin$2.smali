.class Lcom/riotgames/account/rso/android/FacebookLogin$2;
.super Ljava/lang/Object;
.source "FacebookLogin.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/FacebookLogin;->completeLogin(Lcom/riotgames/account/rso/android/SocialLoginActivity;[Ljava/lang/String;)V
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
.field final synthetic val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/SocialLoginActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/riotgames/account/rso/android/FacebookLogin$2;->val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/riotgames/account/rso/android/FacebookLogin$2;->val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    invoke-virtual {v0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onCancel()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/riotgames/account/rso/android/FacebookLogin$2;->val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/riotgames/account/rso/android/FacebookLogin$2;->val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onLogin(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/FacebookLogin$2;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
