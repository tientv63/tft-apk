.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$15;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->executeJavaScriptInWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field final synthetic val$javaScript:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1464
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$15;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput-object p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$15;->val$javaScript:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1467
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$15;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$15;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$15;->val$javaScript:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1473
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to run JavaScript without a WebView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$15;->val$javaScript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIOTLOG"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
