.class Lcom/riotgames/platformui/webview/WebViewActivity$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;->launchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

.field final synthetic val$bundleId:Ljava/lang/String;

.field final synthetic val$displayCancel:Z

.field final synthetic val$launchUrl:Ljava/lang/String;

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$self:Lcom/riotgames/platformui/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/webview/WebViewActivity;Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    iput-object p2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$self:Lcom/riotgames/platformui/webview/WebViewActivity;

    iput-object p3, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$pageId:Ljava/lang/String;

    iput-object p4, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$launchUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$bundleId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$displayCancel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$self:Lcom/riotgames/platformui/webview/WebViewActivity;

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$pageId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$202(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$self:Lcom/riotgames/platformui/webview/WebViewActivity;

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$launchUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$302(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$self:Lcom/riotgames/platformui/webview/WebViewActivity;

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$bundleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$402(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$self:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$pageId:Ljava/lang/String;

    const-string v2, "pageId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$bundleId:Ljava/lang/String;

    const-string v2, "bundleId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$launchUrl:Ljava/lang/String;

    const-string v2, "launchUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-boolean v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$displayCancel:Z

    const-string v2, "displayCancel"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    iget-boolean v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$displayCancel:Z

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$500(Lcom/riotgames/platformui/webview/WebViewActivity;Z)V

    .line 248
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$2;->val$launchUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$600(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)V

    return-void
.end method
