.class Lcom/riotgames/account/rso/android/WebViewActivity$9;
.super Landroidx/webkit/WebViewClientCompat;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$locale:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    iput-object p2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->val$uri:Ljava/lang/String;

    iput-object p4, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->val$locale:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/webkit/WebViewClientCompat;-><init>()V

    return-void
.end method

.method private showErrorToast(Ljava/lang/String;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity$9;->showErrorToast(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 477
    invoke-super {p0, p1, p2}, Landroidx/webkit/WebViewClientCompat;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 481
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$600(Lcom/riotgames/account/rso/android/WebViewActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "http://localhost/"

    .line 486
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    .line 487
    invoke-static {v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$500(Lcom/riotgames/account/rso/android/WebViewActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->val$uri:Ljava/lang/String;

    invoke-static {v2, v3, p4, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->decidePolicyForNavigationAction(JLjava/lang/String;Ljava/lang/String;)Lcom/riotgames/account/rso/android/WebViewActivity$WebViewNavigationDecision;

    move-result-object v0

    sget-object v2, Lcom/riotgames/account/rso/android/WebViewActivity$WebViewNavigationDecision;->Deny:Lcom/riotgames/account/rso/android/WebViewActivity$WebViewNavigationDecision;

    if-ne v0, v2, :cond_0

    .line 488
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$600(Lcom/riotgames/account/rso/android/WebViewActivity;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const-string v0, "file:///error.html"

    .line 489
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p3, v2, v1

    const/4 v1, 0x2

    aput-object p4, v2, v1

    const-string v3, "Error: code=%d, description=%s, url=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$100(Lcom/riotgames/account/rso/android/WebViewActivity;Ljava/lang/String;)V

    .line 491
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/webkit/WebViewClientCompat;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/16 p1, -0xe

    if-eq p2, p1, :cond_1

    const/16 p1, -0xc

    if-eq p2, p1, :cond_1

    const/4 p1, -0x8

    if-eq p2, p1, :cond_1

    const/4 p1, -0x6

    if-eq p2, p1, :cond_1

    const/16 p1, -0xb

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 499
    :cond_1
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    iget-object p2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->val$locale:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/riotgames/account/rso/android/WebViewActivity;->loadErrorPage(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 506
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    iget-object p2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->val$locale:Ljava/lang/String;

    const/4 p3, 0x2

    invoke-virtual {p1, p3, p2}, Lcom/riotgames/account/rso/android/WebViewActivity;->loadErrorPage(ILjava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 3

    const-string v0, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    .line 463
    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {p2}, Landroidx/webkit/WebResourceRequestCompat;->isRedirect(Landroid/webkit/WebResourceRequest;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->val$activity:Landroid/app/Activity;

    .line 464
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->handleUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Boolean;Landroid/app/Activity;)Z

    move-result p1

    return p1

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->handleUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Boolean;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
