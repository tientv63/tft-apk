.class public Lcom/riotgames/account/rso/android/BrowserActivityRedirect;
.super Landroid/app/Activity;
.source "BrowserActivityRedirect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.riotgames.account.rso.android.BrowserActivityRedirect"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/BrowserActivityRedirect;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/riotgames/platformui/nativebrowser/BrowserActivity;->isValidRedirect(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    sget-object p1, Lcom/riotgames/account/rso/android/BrowserActivityRedirect;->TAG:Ljava/lang/String;

    const-string v0, "Using platformui redirect handler"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/BrowserActivityRedirect;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/riotgames/platformui/nativebrowser/BrowserActivity;->createResponseIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/BrowserActivityRedirect;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lcom/riotgames/account/rso/android/BrowserActivityRedirect;->TAG:Ljava/lang/String;

    const-string v0, "Using rso-mobile-ui redirect handler"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/BrowserActivityRedirect;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/riotgames/account/rso/android/BrowserActivity;->createResponseIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/BrowserActivityRedirect;->startActivity(Landroid/content/Intent;)V

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/BrowserActivityRedirect;->finish()V

    return-void
.end method
