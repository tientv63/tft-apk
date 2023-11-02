.class public Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;
.super Landroid/os/Binder;
.source "RiotSystemMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RiotSystemMonitorBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;


# direct methods
.method public constructor <init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    return-object v0
.end method
