.class public Lcom/riotgames/account/rso/android/SocialLoginActivity;
.super Landroid/app/Activity;
.source "SocialLoginActivity.java"


# static fields
.field private static final INVALID_PTR:I = -0x1

.field private static final LOGIN_PARAMS:Ljava/lang/String; = "login-parameters"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.riotgames.account.rso.android"

.field private static final PLATFORM_FACEBOOK_AUTH:I = 0x2

.field private static final PLATFORM_GOOGLE_AUTH:I = 0x1

.field private static final PTR:Ljava/lang/String; = "ptr"


# instance fields
.field private retryGoogleLogin:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/riotgames/account/rso/android/SocialLoginActivity;->retryGoogleLogin:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPointerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.riotgames.account.rso.android.ptr"

    return-object v0
.end method

.method static login(JLcom/riotgames/account/rso/android/SocialLoginParameters;Landroid/content/Context;)V
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/account/rso/android/SocialLoginActivity;

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "login-parameters"

    .line 129
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static logout(Lcom/riotgames/account/rso/android/SocialLoginParameters;Landroid/content/Context;)V
    .locals 2

    .line 134
    iget v0, p0, Lcom/riotgames/account/rso/android/SocialLoginParameters;->platform:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lcom/riotgames/account/rso/android/FacebookLogin;->logout()V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/riotgames/account/rso/android/SocialLoginParameters;->googleTokenOAuthId:Ljava/lang/String;

    iget-object p0, p0, Lcom/riotgames/account/rso/android/SocialLoginParameters;->scopes:[Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/riotgames/account/rso/android/GoogleLogin;->logout(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static native onCancel(J)V
.end method

.method static native onError(JLjava/lang/String;I)V
.end method

.method static native onLaunch(JLcom/riotgames/account/rso/android/SocialLoginActivity;)V
.end method

.method static native onLogin(JLjava/lang/String;)V
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .line 168
    new-instance v0, Lcom/riotgames/account/rso/android/SocialLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity$1;-><init>(Lcom/riotgames/account/rso/android/SocialLoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "login-parameters"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/riotgames/account/rso/android/SocialLoginParameters;

    .line 146
    iget v0, v0, Lcom/riotgames/account/rso/android/SocialLoginParameters;->platform:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/riotgames/account/rso/android/FacebookLogin;->onResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/riotgames/account/rso/android/GoogleLogin;->onResult(Lcom/riotgames/account/rso/android/SocialLoginActivity;IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 6

    .line 60
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 65
    :try_start_0
    invoke-static {v4, v5}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onCancel(J)V

    .line 66
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SocialLoginActivity"

    const-string v2, "Error finding onCancel handler"

    .line 68
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/riotgames/account/rso/android/SocialLoginActivity;->retryGoogleLogin:Z

    .line 27
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 28
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "login-parameters"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/riotgames/account/rso/android/SocialLoginParameters;

    .line 38
    iget v0, p1, Lcom/riotgames/account/rso/android/SocialLoginParameters;->platform:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->finish()V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p1, Lcom/riotgames/account/rso/android/SocialLoginParameters;->scopes:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/riotgames/account/rso/android/FacebookLogin;->login(Lcom/riotgames/account/rso/android/SocialLoginActivity;[Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    iput-boolean v1, p0, Lcom/riotgames/account/rso/android/SocialLoginActivity;->retryGoogleLogin:Z

    .line 41
    iget-object v0, p1, Lcom/riotgames/account/rso/android/SocialLoginParameters;->googleTokenOAuthId:Ljava/lang/String;

    iget-object p1, p1, Lcom/riotgames/account/rso/android/SocialLoginParameters;->scopes:[Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/riotgames/account/rso/android/GoogleLogin;->start(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    :goto_0
    :try_start_0
    invoke-static {v3, v4, p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onLaunch(JLcom/riotgames/account/rso/android/SocialLoginActivity;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "SocialLoginActivity"

    const-string v1, "Error finding onLaunch handler"

    .line 54
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .line 157
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 160
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onCancel()V

    .line 163
    :cond_0
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onError(Ljava/lang/String;I)V

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 7

    .line 96
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 101
    iget-boolean v1, p0, Lcom/riotgames/account/rso/android/SocialLoginActivity;->retryGoogleLogin:Z

    const-string v6, "SocialLoginActivity"

    if-eqz v1, :cond_0

    sget v1, Lcom/riotgames/account/rso/android/GoogleLogin;->SIGN_IN_CURRENTLY_IN_PROGRESS:I

    if-ne p2, v1, :cond_0

    const-string p1, "Attempting to retry google signin after SIGN_IN_CURRENTLY_IN_PROGRESS"

    .line 102
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/riotgames/account/rso/android/SocialLoginActivity;->retryGoogleLogin:Z

    const-string p1, "login-parameters"

    .line 104
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/riotgames/account/rso/android/SocialLoginParameters;

    .line 105
    iget-object p2, p1, Lcom/riotgames/account/rso/android/SocialLoginParameters;->googleTokenOAuthId:Ljava/lang/String;

    iget-object p1, p1, Lcom/riotgames/account/rso/android/SocialLoginParameters;->scopes:[Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lcom/riotgames/account/rso/android/GoogleLogin;->start(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 111
    :try_start_0
    invoke-static {v4, v5, p1, p2}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onError(JLjava/lang/String;I)V

    .line 112
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error finding onError handler"

    .line 114
    invoke-static {v6, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->finish()V

    return-void
.end method

.method public onLogin(Ljava/lang/String;)V
    .locals 6

    .line 76
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    invoke-static {v4, v5, p1}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onLogin(JLjava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getPointerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SocialLoginActivity"

    const-string v1, "Error finding onLogin handler"

    .line 84
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->finish()V

    return-void
.end method
