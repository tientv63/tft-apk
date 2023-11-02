.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->closeWebView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field final synthetic val$unexpectedTermination:Z


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1437
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput-boolean p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->val$unexpectedTermination:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "RIOTLOG"

    const-string v1, "Hiding and destroying WebView"

    .line 1440
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1444
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1446
    :cond_1
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1447
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-static {v1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$fgetmWebViewInterface(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1448
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "RiotNativeAndroid"

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1450
    :cond_2
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-static {v1, v2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$fputmWebViewInterface(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;)V

    .line 1451
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput-object v2, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 1454
    sget-object v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-boolean v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;->val$unexpectedTermination:Z

    invoke-virtual {v0, v1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeWebViewClosed(Z)V

    :cond_3
    return-void
.end method
