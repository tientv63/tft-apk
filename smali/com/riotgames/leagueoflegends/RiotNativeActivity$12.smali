.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$12;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->displayWebViewInPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V
    .locals 0

    .line 1404
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$12;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1407
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$12;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string v0, "RIOTLOG"

    const-string v1, "displayWebViewInPopup called but no WebView has been created."

    .line 1408
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$12;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$mcreateWebViewPopupWindow(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    .line 1412
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$12;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$mshowWebViewPopupWindow(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    return-void
.end method
