.class public Lcom/riotgames/primegaming/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field private static final PTR:Ljava/lang/String; = "ptr"

.field private static final SCOPES:[Lcom/amazon/identity/auth/device/api/authorization/Scope;

.field private static final TAG:Ljava/lang/String; = "com.riotgames.primegaming.LoginActivity"


# instance fields
.field private mPtr:Ljava/lang/Long;

.field private requestContext:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/identity/auth/device/api/authorization/Scope;

    .line 31
    invoke-static {}, Lcom/amazon/identity/auth/device/api/authorization/ProfileScope;->userId()Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "prime:benefit_status"

    .line 32
    invoke-static {v1}, Lcom/amazon/identity/auth/device/api/authorization/ScopeFactory;->scopeNamed(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/authorization/Scope;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/riotgames/primegaming/LoginActivity;->SCOPES:[Lcom/amazon/identity/auth/device/api/authorization/Scope;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/riotgames/primegaming/LoginActivity;->mPtr:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$000()[Lcom/amazon/identity/auth/device/api/authorization/Scope;
    .locals 1

    .line 23
    sget-object v0, Lcom/riotgames/primegaming/LoginActivity;->SCOPES:[Lcom/amazon/identity/auth/device/api/authorization/Scope;

    return-object v0
.end method

.method static synthetic access$100(Lcom/riotgames/primegaming/LoginActivity;)Ljava/lang/Long;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/riotgames/primegaming/LoginActivity;->mPtr:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/riotgames/primegaming/LoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static launch(JLandroid/content/Context;)V
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/primegaming/LoginActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "ptr"

    .line 41
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 42
    sget-object p0, Lcom/riotgames/primegaming/LoginActivity;->TAG:Ljava/lang/String;

    const-string p1, "Launching LoginActivity - Login"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private login()V
    .locals 4

    .line 61
    :try_start_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->create(Landroid/app/Activity;)Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    move-result-object v0

    iput-object v0, p0, Lcom/riotgames/primegaming/LoginActivity;->requestContext:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    .line 62
    new-instance v1, Lcom/riotgames/primegaming/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/riotgames/primegaming/LoginActivity$1;-><init>(Lcom/riotgames/primegaming/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->registerListener(Lcom/amazon/identity/auth/device/interactive/InteractiveListener;)V

    .line 104
    new-instance v0, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;

    iget-object v1, p0, Lcom/riotgames/primegaming/LoginActivity;->requestContext:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;-><init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V

    sget-object v1, Lcom/riotgames/primegaming/LoginActivity;->SCOPES:[Lcom/amazon/identity/auth/device/api/authorization/Scope;

    .line 106
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->addScopes([Lcom/amazon/identity/auth/device/api/authorization/Scope;)Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest$Builder;->build()Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/authorization/AuthorizationManager;->authorize(Lcom/amazon/identity/auth/device/api/authorization/AuthorizeRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lcom/riotgames/primegaming/LoginActivity;->TAG:Ljava/lang/String;

    const-string v2, "Exception during LoginActivity.login()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iget-object v0, p0, Lcom/riotgames/primegaming/LoginActivity;->mPtr:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/riotgames/primegaming/LoginActivity;->onLoginError(JIII)V

    :goto_0
    return-void
.end method

.method static native onLoginError(JIII)V
.end method

.method static native onLoginSuccess(JLjava/lang/String;)V
.end method

.method private persistState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/riotgames/primegaming/LoginActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "ptr"

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/riotgames/primegaming/LoginActivity;->mPtr:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object v0, Lcom/riotgames/primegaming/LoginActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/riotgames/primegaming/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/primegaming/LoginActivity;->persistState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lcom/riotgames/primegaming/LoginActivity;->persistState(Landroid/os/Bundle;)V

    .line 56
    :goto_0
    invoke-direct {p0}, Lcom/riotgames/primegaming/LoginActivity;->login()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 125
    sget-object p1, Lcom/riotgames/primegaming/LoginActivity;->TAG:Ljava/lang/String;

    const-string v0, "onNewIntent"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    sget-object v0, Lcom/riotgames/primegaming/LoginActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/riotgames/primegaming/LoginActivity;->requestContext:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    sget-object v0, Lcom/riotgames/primegaming/LoginActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/riotgames/primegaming/LoginActivity;->mPtr:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "ptr"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
