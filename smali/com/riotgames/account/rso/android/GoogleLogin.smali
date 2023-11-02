.class Lcom/riotgames/account/rso/android/GoogleLogin;
.super Ljava/lang/Object;
.source "GoogleLogin.java"


# static fields
.field private static RC_SIGN_IN:I = 0x64

.field public static SIGN_IN_CURRENTLY_IN_PROGRESS:I = 0x30d6


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClient(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
    .locals 5

    .line 16
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object p1

    .line 20
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 21
    new-instance v4, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v4, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-array v3, v1, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p0

    return-object p0
.end method

.method static logout(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lcom/riotgames/account/rso/android/GoogleLogin;->getClient(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->revokeAccess()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static onResult(Lcom/riotgames/account/rso/android/SocialLoginActivity;IILandroid/content/Intent;)V
    .locals 1

    .line 39
    sget p2, Lcom/riotgames/account/rso/android/GoogleLogin;->RC_SIGN_IN:I

    if-eq p1, p2, :cond_0

    return-void

    .line 43
    :cond_0
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    const-string p2, "Received null from GoogleSignInApi.getSignInResultFromIntent"

    .line 45
    invoke-virtual {p0, p2, p1}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onError(Ljava/lang/String;I)V

    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p3

    const/16 v0, 0x30d5

    if-ne p3, v0, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onLogin(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onError(Ljava/lang/String;I)V

    return-void

    .line 50
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->onCancel()V

    return-void
.end method

.method static start(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p0, p1, p2}, Lcom/riotgames/account/rso/android/GoogleLogin;->getClient(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    sget p2, Lcom/riotgames/account/rso/android/GoogleLogin;->RC_SIGN_IN:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
