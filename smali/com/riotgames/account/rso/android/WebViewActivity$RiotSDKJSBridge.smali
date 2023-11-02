.class Lcom/riotgames/account/rso/android/WebViewActivity$RiotSDKJSBridge;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RiotSDKJSBridge"
.end annotation


# instance fields
.field private activity:Lcom/riotgames/account/rso/android/WebViewActivity;

.field private ptr:J

.field final synthetic this$0:Lcom/riotgames/account/rso/android/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/WebViewActivity;Lcom/riotgames/account/rso/android/WebViewActivity;J)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$RiotSDKJSBridge;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$RiotSDKJSBridge;->activity:Lcom/riotgames/account/rso/android/WebViewActivity;

    .line 173
    iput-wide p3, p0, Lcom/riotgames/account/rso/android/WebViewActivity$RiotSDKJSBridge;->ptr:J

    return-void
.end method


# virtual methods
.method public sendMessage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 179
    iget-wide v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$RiotSDKJSBridge;->ptr:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 181
    :try_start_0
    invoke-static {v0, v1, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->onJavaScriptMessage(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$RiotSDKJSBridge;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    const-string v0, "Error finding onJavaScriptMessage handler"

    invoke-static {p1, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$100(Lcom/riotgames/account/rso/android/WebViewActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
