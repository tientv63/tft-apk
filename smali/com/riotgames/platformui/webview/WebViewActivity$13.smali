.class Lcom/riotgames/platformui/webview/WebViewActivity$13;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;->loadUrlInWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 699
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    iput-object p2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 702
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadUrl: "

    if-eqz v1, :cond_5

    const-string v3, "file"

    .line 704
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 706
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 708
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 709
    iget-object v4, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v4}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$400(Lcom/riotgames/platformui/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v4}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$400(Lcom/riotgames/platformui/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 713
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:///android_asset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v5}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$400(Lcom/riotgames/platformui/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_1

    .line 715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v3, :cond_2

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v0, :cond_3

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    :cond_3
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1400(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 710
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->val$url:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Error: bundleId required for local file %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->ResourceNotFound:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    invoke-static {v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1700(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    return-void

    .line 726
    :cond_5
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1400(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->val$view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$13;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
