.class Lcom/riotgames/platformui/webview/WebViewActivity$5;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;->closeActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/webview/WebViewActivity;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$5;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$5;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$802(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$5;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-virtual {v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->finish()V

    return-void
.end method
