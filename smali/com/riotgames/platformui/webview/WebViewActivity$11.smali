.class Lcom/riotgames/platformui/webview/WebViewActivity$11;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;->getNonCompatWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/webview/WebViewActivity;Landroid/app/Activity;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    iput-object p2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 577
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 581
    iget-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/riotgames/platformui/webview/WebViewActivity;->setLoadingIndicator(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v0, p4}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1500(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    move-result-object v0

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    if-ne v0, v1, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {p1, p2, p3, p4}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1600(Lcom/riotgames/platformui/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    .line 601
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    .line 602
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    iget-object v3, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v3, v2}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1500(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    move-result-object v3

    sget-object v4, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    if-ne v3, v4, :cond_0

    return-void

    .line 607
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 608
    iget-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {p1, v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1600(Lcom/riotgames/platformui/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 613
    iget-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->NavigationError:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    invoke-static {p1, p2, p3}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1700(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 8

    .line 569
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 570
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result v1

    .line 572
    iget-object v2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->val$activity:Landroid/app/Activity;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/riotgames/platformui/webview/WebViewActivity;->handleUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .line 563
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/riotgames/platformui/webview/WebViewActivity$11;->val$activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v4

    invoke-virtual/range {v0 .. v5}, Lcom/riotgames/platformui/webview/WebViewActivity;->handleUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
