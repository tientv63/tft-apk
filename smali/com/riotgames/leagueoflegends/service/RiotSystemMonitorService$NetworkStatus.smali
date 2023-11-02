.class Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;
.super Ljava/lang/Object;
.source "RiotSystemMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkStatus"
.end annotation


# instance fields
.field public mEstimatedBandwidthKbps:I

.field public mHasInternet:Z

.field public mIsConnected:Z

.field public mIsMetered:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mIsConnected:Z

    .line 98
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mHasInternet:Z

    .line 99
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mIsMetered:Z

    const/4 v0, -0x1

    .line 101
    iput v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;->mEstimatedBandwidthKbps:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$NetworkStatus;-><init>()V

    return-void
.end method
