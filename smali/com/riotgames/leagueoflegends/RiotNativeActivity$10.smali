.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->loadAndDisplayURLInWebView(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field final synthetic val$nativeJSInterfaceEnabled:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1255
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput-boolean p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->val$nativeJSInterfaceEnabled:Z

    iput-object p3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1258
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-boolean v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->val$nativeJSInterfaceEnabled:Z

    invoke-static {v0, v1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$mcreateWebView(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Z)V

    .line 1259
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v0, "RIOTLOG"

    const-string v1, "Tried to load and display a URL without a WebView"

    .line 1261
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$mcreateWebViewPopupWindow(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    .line 1266
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$mshowWebViewPopupWindow(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    return-void
.end method
