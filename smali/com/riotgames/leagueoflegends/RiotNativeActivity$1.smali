.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$1;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;
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

    .line 384
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$1;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 391
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 393
    :try_start_0
    check-cast p2, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;

    .line 394
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$1;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {p2}, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorBinder;->getService()Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$fputmRiotSystemMonitorService(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RIOTLOG"

    const-string p2, "RiotSystemMonitorService connection failed, service may be running from a separate or dead process."

    .line 397
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 404
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$1;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->-$$Nest$fputmRiotSystemMonitorService(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V

    return-void
.end method
