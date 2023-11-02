.class Lcom/riotgames/account/rso/android/FacebookLogin$1;
.super Ljava/lang/Object;
.source "FacebookLogin.java"

# interfaces
.implements Lcom/facebook/FacebookSdk$InitializeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/FacebookLogin;->login(Lcom/riotgames/account/rso/android/SocialLoginActivity;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;

.field final synthetic val$facebookPermissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/SocialLoginActivity;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/riotgames/account/rso/android/FacebookLogin$1;->val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    iput-object p2, p0, Lcom/riotgames/account/rso/android/FacebookLogin$1;->val$facebookPermissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/facebook/FacebookSdk;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/riotgames/account/rso/android/FacebookLogin;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/riotgames/account/rso/android/FacebookLogin;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/riotgames/account/rso/android/FacebookLogin;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/riotgames/account/rso/android/FacebookLogin;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 37
    iget-object v0, p0, Lcom/riotgames/account/rso/android/FacebookLogin$1;->val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    iget-object v1, p0, Lcom/riotgames/account/rso/android/FacebookLogin$1;->val$facebookPermissions:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/account/rso/android/FacebookLogin;->completeLogin(Lcom/riotgames/account/rso/android/SocialLoginActivity;[Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/riotgames/account/rso/android/FacebookLogin$1;->val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    const-string v1, "Facebook SDK not configured correctly, did not find Facebook app id"

    invoke-virtual {v0, v1}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onError(Ljava/lang/String;)V

    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/riotgames/account/rso/android/FacebookLogin$1;->val$activity:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    const-string v1, "Facebook SDK did not initialize"

    invoke-virtual {v0, v1}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
