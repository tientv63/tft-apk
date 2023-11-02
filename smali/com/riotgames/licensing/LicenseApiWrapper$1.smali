.class Lcom/riotgames/licensing/LicenseApiWrapper$1;
.super Ljava/lang/Object;
.source "LicenseApiWrapper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/licensing/LicenseApiWrapper;->checkLicense(Landroid/content/Context;Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$resultHandler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/riotgames/licensing/LicenseApiWrapper$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/riotgames/licensing/LicenseApiWrapper$1;->val$resultHandler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/riotgames/licensing/LicenseApiWrapper$1;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/riotgames/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/riotgames/licensing/LicenseApiWrapper$1;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/riotgames/licensing/LicenseApiWrapper$1;->val$resultHandler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    invoke-direct {v0, v1, v2}, Lcom/riotgames/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;)V

    .line 56
    invoke-virtual {v0}, Lcom/riotgames/licensing/LicenseChecker;->checkAccess()V

    .line 57
    iget-object v0, p0, Lcom/riotgames/licensing/LicenseApiWrapper$1;->val$resultHandler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/riotgames/licensing/LicenseApiWrapper$1;->val$resultHandler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 59
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/riotgames/licensing/LicenseApiWrapper$1;->val$resultHandler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    iget-object v2, v2, Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;->map:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
