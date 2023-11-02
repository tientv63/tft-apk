.class public final Lcom/singular/sdk/internal/FixedSizePersistentQueue;
.super Ljava/lang/Object;
.source "FixedSizePersistentQueue.java"

# interfaces
.implements Lcom/singular/sdk/internal/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;,
        Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;
    }
.end annotation


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field private final MAX_SIZE:I

.field private final bytes:Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;

.field private final queueFile:Lcom/singular/sdk/internal/QueueFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FixedSizePersistentQueue"

    .line 34
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void
.end method

.method constructor <init>(Lcom/singular/sdk/internal/QueueFile;I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;

    invoke-direct {v0}, Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->bytes:Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;

    .line 57
    iput-object p1, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->queueFile:Lcom/singular/sdk/internal/QueueFile;

    .line 58
    iput p2, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->MAX_SIZE:I

    return-void
.end method

.method static synthetic access$000()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 32
    sget-object v0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;I)Lcom/singular/sdk/internal/FixedSizePersistentQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 50
    sget-object p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "FYI - file %s already exists, will reuse."

    invoke-virtual {p0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 53
    :cond_0
    new-instance p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;

    new-instance p1, Lcom/singular/sdk/internal/QueueFile$Builder;

    invoke-direct {p1, v0}, Lcom/singular/sdk/internal/QueueFile$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Lcom/singular/sdk/internal/QueueFile$Builder;->build()Lcom/singular/sdk/internal/QueueFile;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;-><init>(Lcom/singular/sdk/internal/QueueFile;I)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_0
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->queueFile:Lcom/singular/sdk/internal/QueueFile;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/QueueFile;->size()I

    move-result v0

    iget v1, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->MAX_SIZE:I

    if-lt v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->queueFile:Lcom/singular/sdk/internal/QueueFile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/QueueFile;->remove(I)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->bytes:Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;->reset()V

    .line 83
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->bytes:Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 85
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 88
    iget-object p1, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->queueFile:Lcom/singular/sdk/internal/QueueFile;

    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->bytes:Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;->getArray()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->bytes:Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;

    invoke-virtual {v2}, Lcom/singular/sdk/internal/FixedSizePersistentQueue$DirectByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/singular/sdk/internal/QueueFile;->add([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->queueFile:Lcom/singular/sdk/internal/QueueFile;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/QueueFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;

    iget-object v1, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->queueFile:Lcom/singular/sdk/internal/QueueFile;

    invoke-virtual {v1}, Lcom/singular/sdk/internal/QueueFile;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/singular/sdk/internal/FixedSizePersistentQueue$QueueFileIterator;-><init>(Lcom/singular/sdk/internal/FixedSizePersistentQueue;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public declared-synchronized peek()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->queueFile:Lcom/singular/sdk/internal/QueueFile;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/QueueFile;->peek()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 93
    monitor-exit p0

    return-object v0

    .line 94
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized peek(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    invoke-virtual {p0}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 116
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized remove(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->queueFile:Lcom/singular/sdk/internal/QueueFile;

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/QueueFile;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/FixedSizePersistentQueue;->queueFile:Lcom/singular/sdk/internal/QueueFile;

    invoke-virtual {v0}, Lcom/singular/sdk/internal/QueueFile;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
