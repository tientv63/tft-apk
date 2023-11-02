.class Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RiotSystemMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->registerNetworkCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

.field final synthetic val$connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    iput-object p2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string p1, "RIOTLOG RSMS"

    const-string v0, "Network Connection Available"

    .line 378
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mIsConnected:Z

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 390
    iget-object p2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 391
    iget-object p2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object p2

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p2, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mIsMetered:Z

    .line 392
    iget-object p2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object p2

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    iput-boolean v0, p2, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mHasInternet:Z

    .line 393
    iget-object p2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result p1

    iput p1, p2, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mEstimatedBandwidthKbps:I

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 395
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mIsConnected:Z

    .line 396
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, p2

    iget-object p2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object p2

    iget-boolean p2, p2, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mHasInternet:Z

    .line 397
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object p2

    iget-boolean p2, p2, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mIsMetered:Z

    .line 398
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    const/4 p2, 0x3

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object v1

    iget v1, v1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mEstimatedBandwidthKbps:I

    .line 399
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    const-string p2, "Network Capabilities Changed: connected %b, internet %b, metered %b, estimatedBandwidthKbps %d"

    .line 395
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RIOTLOG RSMS"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmHandler(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 402
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 403
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mHasInternet:Z

    const-string v1, "hasInternet"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 404
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mIsMetered:Z

    const-string v1, "isMetered"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mIsConnected:Z

    const-string v1, "isConnected"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object v0

    iget v0, v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mEstimatedBandwidthKbps:I

    const-string v1, "estimatedBandwidthKbps"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 409
    iget-object p2, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmHandler(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const-string p1, "RIOTLOG RSMS"

    const-string v0, "Network Connection Lost"

    .line 384
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$2;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastNetworkStatus(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mIsConnected:Z

    return-void
.end method
