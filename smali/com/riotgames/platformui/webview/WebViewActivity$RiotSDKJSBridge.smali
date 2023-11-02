.class Lcom/riotgames/platformui/webview/WebViewActivity$RiotSDKJSBridge;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RiotSDKJSBridge"
.end annotation


# instance fields
.field private activity:Lcom/riotgames/platformui/webview/WebViewActivity;

.field final synthetic this$0:Lcom/riotgames/platformui/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/webview/WebViewActivity;Lcom/riotgames/platformui/webview/WebViewActivity;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity$RiotSDKJSBridge;->this$0:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/riotgames/platformui/webview/WebViewActivity$RiotSDKJSBridge;->activity:Lcom/riotgames/platformui/webview/WebViewActivity;

    return-void
.end method


# virtual methods
.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity$RiotSDKJSBridge;->activity:Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-static {v0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->access$100(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)V

    return-void
.end method
