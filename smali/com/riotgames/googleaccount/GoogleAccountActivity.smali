.class public Lcom/riotgames/googleaccount/GoogleAccountActivity;
.super Landroid/app/Activity;
.source "GoogleAccountActivity.java"


# static fields
.field private static final KEY_GOOGLE_OAUTH_ID:Ljava/lang/String; = "googleOAuthId"

.field private static final KEY_RETRY_LOGIN:Ljava/lang/String; = "retryLogin"

.field private static final KEY_SCOPES:Ljava/lang/String; = "scopes"

.field private static final KEY_UUID:Ljava/lang/String; = "uuid"

.field private static RC_SIGN_IN:I = 0x64

.field private static final TAG:Ljava/lang/String; = "com.riotgames.googleaccount.GoogleAccountActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getClient(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 5

    .line 50
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 54
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 55
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v4, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-array v3, v1, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p0

    return-object p0
.end method

.method static launch(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/googleaccount/GoogleAccountActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "uuid"

    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "retryLogin"

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "scopes"

    .line 39
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "googleOAuthId"

    .line 40
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static logout(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p0, p1, p2}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getClient(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->revokeAccess()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static native nativeOnCancel(Ljava/lang/String;)V
.end method

.method static native nativeOnError(Ljava/lang/String;I)V
.end method

.method static native nativeOnLaunch(Ljava/lang/String;Lcom/riotgames/googleaccount/GoogleAccountActivity;)V
.end method

.method static native nativeOnLogin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private onCancel()V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 105
    invoke-static {v0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->nativeOnCancel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lcom/riotgames/googleaccount/GoogleAccountActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error finding onCancel handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->finish()V

    return-void
.end method

.method private onLogin(Ljava/lang/String;)V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 92
    invoke-static {v0, p1}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->nativeOnLogin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    sget-object v0, Lcom/riotgames/googleaccount/GoogleAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "Error finding onLogin handler"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->finish()V

    return-void
.end method

.method private start()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scopes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "googleOAuthId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {p0, v1, v0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getClient(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    sget v1, Lcom/riotgames/googleaccount/GoogleAccountActivity;->RC_SIGN_IN:I

    invoke-virtual {p0, v0, v1}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .line 180
    new-instance v0, Lcom/riotgames/googleaccount/GoogleAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity$1;-><init>(Lcom/riotgames/googleaccount/GoogleAccountActivity;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 130
    sget p2, Lcom/riotgames/googleaccount/GoogleAccountActivity;->RC_SIGN_IN:I

    if-eq p1, p2, :cond_0

    return-void

    .line 134
    :cond_0
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    if-nez p1, :cond_1

    .line 136
    sget-object p1, Lcom/riotgames/googleaccount/GoogleAccountActivity;->TAG:Ljava/lang/String;

    const-string p2, "Received null from GoogleSignInApi.getSignInResultFromIntent"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 137
    invoke-virtual {p0, p1}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->onError(I)V

    return-void

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 141
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p3

    const/16 v0, 0x30d5

    if-ne p3, v0, :cond_2

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 147
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 149
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->onLogin(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "retryLogin"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    const/16 p3, 0x30d6

    if-ne p1, p3, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->start()V

    return-void

    .line 163
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->onError(I)V

    return-void

    .line 142
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->onCancel()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->finish()V

    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->start()V

    .line 72
    invoke-static {p1, p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->nativeOnLaunch(Ljava/lang/String;Lcom/riotgames/googleaccount/GoogleAccountActivity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 168
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->onCancel()V

    .line 176
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 118
    invoke-static {v0, p1}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->nativeOnError(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    sget-object v0, Lcom/riotgames/googleaccount/GoogleAccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "Error finding onError handler"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->finish()V

    return-void
.end method
