.class Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastReceivers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/BroadcastReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkChange"
.end annotation


# instance fields
.field private final singular:Lcom/singular/sdk/internal/SingularInstance;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;->singular:Lcom/singular/sdk/internal/SingularInstance;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 40
    invoke-static {}, Lcom/singular/sdk/internal/BroadcastReceivers;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "onReceive() action=%s "

    invoke-virtual {v0, p2, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 41
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;->singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularInstance;->getApiManager()Lcom/singular/sdk/internal/ApiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/singular/sdk/internal/ApiManager;->wakeUp()V

    :cond_0
    return-void
.end method
