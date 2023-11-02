.class Lcom/riotgames/platformui/webview/WebViewActivity$4;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;->closePage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$self:Lcom/riotgames/platformui/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/webview/WebViewActivity;Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    iput-object p2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->val$self:Lcom/riotgames/platformui/webview/WebViewActivity;

    iput-object p3, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->val$pageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->val$self:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$200(Lcom/riotgames/platformui/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->val$pageId:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->val$self:Lcom/riotgames/platformui/webview/WebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$202(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->val$self:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$302(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pageId"

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "bundleId"

    .line 284
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "launchUrl"

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "displayCancel"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->setLoadingIndicator(Ljava/lang/Boolean;)V

    .line 288
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$4;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$700(Lcom/riotgames/platformui/webview/WebViewActivity;)V

    return-void
.end method
