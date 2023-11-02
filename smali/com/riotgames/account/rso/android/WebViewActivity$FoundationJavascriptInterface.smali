.class Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FoundationJavascriptInterface"
.end annotation


# instance fields
.field private activity:Lcom/riotgames/account/rso/android/WebViewActivity;

.field private ptr:J

.field final synthetic this$0:Lcom/riotgames/account/rso/android/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/WebViewActivity;Lcom/riotgames/account/rso/android/WebViewActivity;J)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;->activity:Lcom/riotgames/account/rso/android/WebViewActivity;

    .line 195
    iput-wide p3, p0, Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;->ptr:J

    return-void
.end method


# virtual methods
.method public closeWebView(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;->activity:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-virtual {v0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->Finish(Z)V

    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 219
    iget-wide v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;->ptr:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 221
    :try_start_0
    invoke-static {v0, v1, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->onDeprecatedJavaScriptMessage(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    const-string v0, "Error finding onDeprecatedJavaScriptMessage handler"

    invoke-static {p1, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$100(Lcom/riotgames/account/rso/android/WebViewActivity;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    invoke-static {}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$200()Z

    move-result p1

    return p1
.end method

.method public getResponses()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 210
    invoke-static {}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;->activity:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-static {v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$300(Lcom/riotgames/account/rso/android/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Do not use polling for API 19 and higher"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useFoundationLogin()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
