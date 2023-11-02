.class Lcom/riotgames/platformui/webview/WebViewActivity$9;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;->setNavigationBarDisplay(Z)V
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

    .line 469
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$9;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$9;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1102(Lcom/riotgames/platformui/webview/WebViewActivity;Z)Z

    .line 473
    iget-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$9;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1100(Lcom/riotgames/platformui/webview/WebViewActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$9;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1300(Lcom/riotgames/platformui/webview/WebViewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$9;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$1200(Lcom/riotgames/platformui/webview/WebViewActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
