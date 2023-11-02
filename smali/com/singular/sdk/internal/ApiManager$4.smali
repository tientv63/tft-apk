.class Lcom/singular/sdk/internal/ApiManager$4;
.super Ljava/lang/Object;
.source "ApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ApiManager;
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

    .line 173
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiManager$4;->this$0:Lcom/singular/sdk/internal/ApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 176
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/singular/sdk/internal/ApiManager$4;->this$0:Lcom/singular/sdk/internal/ApiManager;

    iget-object v1, v1, Lcom/singular/sdk/internal/ApiManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "api-r.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/singular/sdk/internal/ApiManager;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "Migrate events from QueueFile = %s"

    invoke-virtual {v1, v6, v4}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-static {}, Lcom/singular/sdk/internal/ApiManager;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "QueueFile does not exist"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 187
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/singular/sdk/internal/ApiManager$4;->this$0:Lcom/singular/sdk/internal/ApiManager;

    iget-object v1, v1, Lcom/singular/sdk/internal/ApiManager;->context:Landroid/content/Context;

    const/16 v4, 0x2710

    invoke-static {v1, v2, v4}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->create(Landroid/content/Context;Ljava/lang/String;I)Lcom/singular/sdk/internal/FixedSizePersistentQueue;

    move-result-object v1

    if-nez v1, :cond_1

    .line 190
    invoke-static {}, Lcom/singular/sdk/internal/ApiManager;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "QueueFile failed to initialize"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    :cond_1
    move v2, v5

    .line 195
    :goto_0
    invoke-virtual {v1}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 196
    invoke-virtual {v1}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->peek()Ljava/lang/String;

    move-result-object v4

    .line 197
    iget-object v6, p0, Lcom/singular/sdk/internal/ApiManager$4;->this$0:Lcom/singular/sdk/internal/ApiManager;

    invoke-static {v6}, Lcom/singular/sdk/internal/ApiManager;->access$100(Lcom/singular/sdk/internal/ApiManager;)Lcom/singular/sdk/internal/Queue;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/singular/sdk/internal/Queue;->add(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {}, Lcom/singular/sdk/internal/ApiManager;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    const-string v4, "Migrated \'%d\' events"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v1, v4, v3}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    invoke-static {}, Lcom/singular/sdk/internal/ApiManager;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "QueueFile deleted"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 209
    invoke-static {}, Lcom/singular/sdk/internal/ApiManager;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    const-string v2, "loadFromFileQueue: Exception"

    invoke-virtual {v1, v2, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_0
    move-exception v0

    .line 207
    invoke-static {}, Lcom/singular/sdk/internal/ApiManager;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    const-string v2, "loadFromFileQueue: RuntimeException"

    invoke-virtual {v1, v2, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
