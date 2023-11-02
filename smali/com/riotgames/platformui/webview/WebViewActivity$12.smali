.class Lcom/riotgames/platformui/webview/WebViewActivity$12;
.super Landroidx/webkit/WebViewClientCompat;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;->getWebViewClientCompat()Landroid/webkit/WebViewClient;
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

    .line 623
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$12;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    iput-object p2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroidx/webkit/WebViewClientCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 637
    invoke-super {p0, p1, p2}, Landroidx/webkit/WebViewClientCompat;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 641
    iget-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$12;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/riotgames/platformui/webview/WebViewActivity;->setLoadingIndicator(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroidx/webkit/WebResourceErrorCompat;)V
    .locals 5

    .line 651
    invoke-virtual {p3}, Landroidx/webkit/WebResourceErrorCompat;->getErrorCode()I

    move-result v0

    .line 652
    invoke-virtual {p3}, Landroidx/webkit/WebResourceErrorCompat;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    iget-object v3, p0, Lcom/riotgames/platformui/webview/WebViewActivity$12;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v3, v2}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1500(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    move-result-object v3

    sget-object v4, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    if-ne v3, v4, :cond_0

    return-void

    .line 657
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/webkit/WebViewClientCompat;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroidx/webkit/WebResourceErrorCompat;)V

    .line 658
    iget-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$12;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {p1, v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1600(Lcom/riotgames/platformui/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 663
    iget-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$12;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->NavigationError:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    invoke-static {p1, p2, p3}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1700(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 8

    .line 626
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const-string v2, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    .line 629
    invoke-static {v2}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    invoke-static {p2}, Landroidx/webkit/WebResourceRequestCompat;->isRedirect(Landroid/webkit/WebResourceRequest;)Z

    move-result v1

    .line 632
    :cond_0
    iget-object v2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$12;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/riotgames/platformui/webview/WebViewActivity$12;->val$activity:Landroid/app/Activity;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/riotgames/platformui/webview/WebViewActivity;->handleUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
