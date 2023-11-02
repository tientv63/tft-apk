.class public Lcom/riotgames/facebookaccount/FacebookAccountActivity;
.super Landroid/app/Activity;
.source "FacebookAccountActivity.java"


# static fields
.field private static final KEY_SCOPES:Ljava/lang/String; = "scopes"

.field private static final KEY_UUID:Ljava/lang/String; = "uuid"

.field private static final TAG:Ljava/lang/String; = "com.riotgames.facebookaccount.FacebookAccountActivity"


# instance fields
.field private mCallbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->onLaunchSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/riotgames/facebookaccount/FacebookAccountActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->onLoginSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->onLoginCancel()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->onLoginError()V

    return-void
.end method

.method private isLoggedIn()Z
    .locals 1

    .line 110
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static launch(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "uuid"

    .line 44
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "scopes"

    .line 45
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static native nativeOnLaunchError(Ljava/lang/String;)V
.end method

.method static native nativeOnLaunchSuccess(Ljava/lang/String;Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V
.end method

.method static native nativeOnLoginCancel(Ljava/lang/String;)V
.end method

.method static native nativeOnLoginError(Ljava/lang/String;)V
.end method

.method static native nativeOnLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private onLaunchError()V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->nativeOnLaunchError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    sget-object v1, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error finding onLaunchError handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->finish()V

    return-void
.end method

.method private onLaunchSuccess()V
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    .line 74
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/riotgames/facebookaccount/FacebookAccountActivity$2;

    invoke-direct {v3, p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity$2;-><init>(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 93
    invoke-direct {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 94
    invoke-static {v2}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 95
    invoke-virtual {v1}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "scopes"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 102
    :try_start_0
    invoke-static {v0, p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->nativeOnLaunchSuccess(Ljava/lang/String;Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    sget-object v1, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error finding nativeOnLaunchSuccess handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private onLoginCancel()V
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->nativeOnLoginCancel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    sget-object v1, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error finding nativeOnCancel handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->finish()V

    return-void
.end method

.method private onLoginError()V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->nativeOnLoginError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error finding nativeOnLoginError handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->finish()V

    return-void
.end method

.method private onLoginSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 133
    invoke-static {v0, p1, p2}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->nativeOnLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    sget-object p2, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->TAG:Ljava/lang/String;

    const-string v0, "Error finding nativeOnLoginSuccess handler"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->finish()V

    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .line 189
    new-instance v0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$3;

    invoke-direct {v0, p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity$3;-><init>(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    iget-object v0, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->mCallbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 56
    :try_start_0
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->setAutoInitEnabled(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity$1;-><init>(Lcom/riotgames/facebookaccount/FacebookAccountActivity;Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V

    invoke-static {p1, v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    sget-object v0, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "Failed to initialize Facebook SDK:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    invoke-direct {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->onLaunchError()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->onLoginCancel()V

    .line 185
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
