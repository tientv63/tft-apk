.class Lcom/riotgames/platformui/webview/WebViewActivity$6;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;->updateDisplayCancel(Z)V
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

    .line 382
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$6;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 384
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    .line 386
    iget-object p2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$6;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 386
    :goto_0
    invoke-static {p2, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$902(Lcom/riotgames/platformui/webview/WebViewActivity;Z)Z

    return v1
.end method
