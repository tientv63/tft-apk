.class Lcom/riotgames/account/rso/android/FacebookLogin;
.super Ljava/lang/Object;
.source "FacebookLogin.java"


# static fields
.field private static callbackManager:Lcom/facebook/CallbackManager;

.field private static facebookAppId:Ljava/lang/String;

.field private static initialized:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    sput-object v0, Lcom/riotgames/account/rso/android/FacebookLogin;->callbackManager:Lcom/facebook/CallbackManager;

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/riotgames/account/rso/android/FacebookLogin;->initialized:Ljava/lang/Boolean;

    const-string v0, ""

    .line 23
    sput-object v0, Lcom/riotgames/account/rso/android/FacebookLogin;->facebookAppId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/riotgames/account/rso/android/FacebookLogin;->facebookAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    sput-object p0, Lcom/riotgames/account/rso/android/FacebookLogin;->facebookAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 19
    sput-object p0, Lcom/riotgames/account/rso/android/FacebookLogin;->initialized:Ljava/lang/Boolean;

    return-object p0
.end method

.method static completeLogin(Lcom/riotgames/account/rso/android/SocialLoginActivity;[Ljava/lang/String;)V
    .locals 3

    .line 58
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/riotgames/account/rso/android/FacebookLogin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/riotgames/account/rso/android/FacebookLogin$2;

    invoke-direct {v2, p0}, Lcom/riotgames/account/rso/android/FacebookLogin$2;-><init>(Lcom/riotgames/account/rso/android/SocialLoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 77
    invoke-static {}, Lcom/riotgames/account/rso/android/FacebookLogin;->logout()V

    .line 79
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method static getAppId()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/riotgames/account/rso/android/FacebookLogin;->facebookAppId:Ljava/lang/String;

    return-object v0
.end method

.method static login(Lcom/riotgames/account/rso/android/SocialLoginActivity;[Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/riotgames/account/rso/android/FacebookLogin;->initialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/riotgames/account/rso/android/FacebookLogin$1;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/account/rso/android/FacebookLogin$1;-><init>(Lcom/riotgames/account/rso/android/SocialLoginActivity;[Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 45
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setAutoInitEnabled(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p0, p1}, Lcom/riotgames/account/rso/android/FacebookLogin;->completeLogin(Lcom/riotgames/account/rso/android/SocialLoginActivity;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static logout()V
    .locals 1

    .line 83
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method

.method static onResult(IILandroid/content/Intent;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/riotgames/account/rso/android/FacebookLogin;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 88
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p0

    sget-object p1, Lcom/riotgames/account/rso/android/FacebookLogin;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginManager;->unregisterCallback(Lcom/facebook/CallbackManager;)V

    return-void
.end method
