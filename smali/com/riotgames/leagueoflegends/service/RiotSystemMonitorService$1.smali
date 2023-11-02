.class Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "RiotSystemMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->registerBatteryBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.os.action.DISCHARGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "android.os.action.CHARGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastBatteryInfo(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mIsCharging:Z

    goto :goto_0

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastBatteryInfo(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

    move-result-object p1

    iput-boolean v1, p1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mIsCharging:Z

    .line 353
    :goto_0
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastBatteryInfo(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

    move-result-object p1

    const-string v0, "level"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mLevel:I

    .line 354
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastBatteryInfo(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

    move-result-object p1

    const/16 v0, 0x64

    const-string v2, "scale"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mScale:I

    .line 355
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastBatteryInfo(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

    move-result-object p1

    const/4 v0, -0x1

    const-string v2, "temperature"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mTemperature:I

    .line 357
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_2

    .line 358
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$1;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastBatteryInfo(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;

    move-result-object p1

    const-string v0, "battery_low"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$BatteryInfo;->mIsLow:Z

    :cond_2
    return-void
.end method
