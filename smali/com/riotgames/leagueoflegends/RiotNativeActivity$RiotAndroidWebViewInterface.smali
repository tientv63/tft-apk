.class public Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RiotAndroidWebViewInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Landroid/content/Context;)V
    .locals 0

    .line 1242
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1243
    iput-object p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public sendMessage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1249
    sget-object v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {v0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeOnReceivedWebViewMessage(Ljava/lang/String;)V

    return-void
.end method
