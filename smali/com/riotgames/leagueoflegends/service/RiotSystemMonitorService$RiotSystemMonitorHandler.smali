.class final Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;
.super Landroid/os/Handler;
.source "RiotSystemMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RiotSystemMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;


# direct methods
.method public constructor <init>(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;Landroid/os/Looper;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    .line 122
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private sendMemorySnapshot()V
    .locals 8

    .line 174
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    iget-boolean v7, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static/range {v1 .. v7}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->nativeOnMemorySnapshot(JJJZ)V

    return-void
.end method

.method private takeDebugMemorySnapshot()V
    .locals 2

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmHandler(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "RIOTLOG RSMS"

    const-string v1, "Memory snapshot attempted on invalid thread. Stopping memory checks"

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 188
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 189
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 190
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v1, v0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fputmLastDebugMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;Landroid/os/Debug$MemoryInfo;)V

    return-void
.end method

.method private takeMemorySnapshot()V
    .locals 5

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmHandler(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "RIOTLOG RSMS"

    if-eq v0, v1, :cond_0

    const-string v0, "Memory snapshot attempted on invalid thread. Stopping memory checks"

    .line 159
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 164
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 166
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v0, v1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fputmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;Landroid/app/ActivityManager$MemoryInfo;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 168
    iget-object v3, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v3}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 169
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v3}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v3}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 170
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {v3}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$fgetmLastMemoryRecord(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "onMemorySnapshot: low %b, threshold %d, availMem %d, totalMem %d"

    .line 168
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isCharging"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 148
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isLow"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 149
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "level"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 150
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "scale"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 151
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v4, "temperature"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 152
    invoke-static {v0, v1, v2, v3, p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->nativeOnBatteryChanged(ZZIII)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isConnected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hasInternet"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 142
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isMetered"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 143
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "estimatedBandwidthKbps"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 144
    invoke-static {v0, v1, v2, p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->nativeOnNetworkChanged(ZZZI)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->takeDebugMemorySnapshot()V

    .line 136
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$msendDebugMemorySnapshot(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V

    .line 137
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$mscheduleDebugMemorySnapshot(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V

    goto :goto_0

    .line 130
    :cond_3
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->takeMemorySnapshot()V

    .line 131
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->sendMemorySnapshot()V

    .line 132
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorHandler;->this$0:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-static {p1}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;->-$$Nest$mscheduleSimpleMemorySnapshot(Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V

    :goto_0
    return-void
.end method
