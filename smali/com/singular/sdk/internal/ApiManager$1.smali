.class Lcom/singular/sdk/internal/ApiManager$1;
.super Ljava/lang/Object;
.source "ApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ApiManager;->tryMigrateEventsFromOldSQLiteQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/ApiManager;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ApiManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiManager$1;->this$0:Lcom/singular/sdk/internal/ApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 79
    :try_start_0
    new-instance v0, Lcom/singular/sdk/internal/OfflineEventsMigrator;

    iget-object v1, p0, Lcom/singular/sdk/internal/ApiManager$1;->this$0:Lcom/singular/sdk/internal/ApiManager;

    iget-object v1, v1, Lcom/singular/sdk/internal/ApiManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/singular/sdk/internal/OfflineEventsMigrator;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v0}, Lcom/singular/sdk/internal/OfflineEventsMigrator;->migrate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 84
    invoke-static {}, Lcom/singular/sdk/internal/ApiManager;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    const-string v2, "migrateEventsFromOldSQLiteQueue: Exception"

    invoke-virtual {v1, v2, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    invoke-static {}, Lcom/singular/sdk/internal/ApiManager;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    const-string v2, "migrateEventsFromOldSQLiteQueue: RuntimeException"

    invoke-virtual {v1, v2, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
