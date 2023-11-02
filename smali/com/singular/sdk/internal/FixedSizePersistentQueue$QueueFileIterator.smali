.class final Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;
.super Ljava/lang/Object;
.source "FixedSizePersistentQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/FixedSizePersistentQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueFileIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/singular/sdk/internal/FixedSizePersistentQueue;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/FixedSizePersistentQueue;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "[B>;)V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;->this$0:Lcom/singular/sdk/internal/FixedSizePersistentQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 159
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 161
    invoke-static {}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v2

    const-string v3, "Error in next()"

    invoke-virtual {v2, v3, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public remove()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
