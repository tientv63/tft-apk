.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RiotNativeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->registerNetworkCalls()V
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

    .line 538
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$4;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 541
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$4;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeNetworkConnected()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 546
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$4;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeNetworkDisconnected()V

    return-void
.end method
