.class Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;
.super Ljava/lang/Object;
.source "RiotSystemMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryInfo"
.end annotation


# instance fields
.field public mIsCharging:Z

.field public mIsLow:Z

.field public mLevel:I

.field public mScale:I

.field public mTemperature:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mIsCharging:Z

    .line 106
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mIsLow:Z

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mLevel:I

    .line 109
    iput v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mScale:I

    .line 110
    iput v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mTemperature:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;-><init>()V

    return-void
.end method
