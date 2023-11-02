.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$13;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->onWebViewRenderProcessGone(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1419
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$13;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput-object p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$13;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1423
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$13;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$13;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$13;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    if-ne v0, v1, :cond_0

    .line 1424
    sget-object v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$mcloseWebView(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Z)V

    :cond_0
    return-void
.end method
