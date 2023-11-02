.class public Lcom/riotgames/account/rso/android/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"


# static fields
.field static final BROWSER_INTENT:Ljava/lang/String; = "browserIntent"

.field static final BROWSER_LAUNCHED:Ljava/lang/String; = "browserLaunched"

.field static final PTR:Ljava/lang/String; = "ptr"


# instance fields
.field private mBrowserIntent:Landroid/content/Intent;

.field private mBrowserLaunched:Z

.field private mPtr:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mBrowserLaunched:Z

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mPtr:Ljava/lang/Long;

    return-void
.end method

.method public static createResponseIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/account/rso/android/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x24000000

    .line 36
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static launch(JLandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/account/rso/android/BrowserActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    invoke-static {p2, p3}, Lcom/riotgames/account/rso/android/NativeBrowser;->createBrowserIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v1, "browserIntent"

    .line 27
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "ptr"

    .line 28
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Launching BrowserActivity with package="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrowserActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static native onCancel(J)V
.end method

.method static native onError(JLjava/lang/String;)V
.end method

.method static native onRedirect(JLjava/lang/String;)V
.end method

.method private persistState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/BrowserActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "browserIntent"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mBrowserIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "browserLaunched"

    .line 102
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mBrowserLaunched:Z

    const-string v0, "ptr"

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mPtr:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/BrowserActivity;->persistState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/BrowserActivity;->persistState(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/BrowserActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 68
    iget-boolean v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mBrowserLaunched:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mBrowserIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mBrowserLaunched:Z

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "BrowserActivity"

    if-eqz v0, :cond_1

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mPtr:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 78
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/riotgames/account/rso/android/BrowserActivity;->onRedirect(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error finding onRedirect handler"

    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mPtr:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/riotgames/account/rso/android/BrowserActivity;->onCancel(J)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "Error finding onCancel handler"

    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/BrowserActivity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 53
    iget-boolean v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mBrowserLaunched:Z

    const-string v1, "browserLaunched"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    iget-object v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mBrowserIntent:Landroid/content/Intent;

    const-string v1, "browserIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    iget-object v0, p0, Lcom/riotgames/account/rso/android/BrowserActivity;->mPtr:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "ptr"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
