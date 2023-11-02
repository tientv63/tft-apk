.class public Lcom/riotgames/platformui/nativebrowser/BrowserActivityRedirect;
.super Landroid/app/Activity;
.source "BrowserActivityRedirect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Lcom/riotgames/platformui/nativebrowser/BrowserActivityRedirect;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/riotgames/platformui/nativebrowser/BrowserActivity;->createResponseIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/nativebrowser/BrowserActivityRedirect;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Lcom/riotgames/platformui/nativebrowser/BrowserActivityRedirect;->finish()V

    return-void
.end method
