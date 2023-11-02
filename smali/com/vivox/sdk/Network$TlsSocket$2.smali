.class Lcom/vivox/sdk/Network$TlsSocket$2;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivox/sdk/Network$TlsSocket;->createWriteThread(Ljava/io/OutputStream;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivox/sdk/Network$TlsSocket;

.field final synthetic val$os:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/vivox/sdk/Network$TlsSocket;Ljava/io/OutputStream;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    iput-object p2, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->val$os:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 231
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v0}, Lcom/vivox/sdk/Network$TlsSocket;->access$000(Lcom/vivox/sdk/Network$TlsSocket;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 233
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v0}, Lcom/vivox/sdk/Network$TlsSocket;->access$200(Lcom/vivox/sdk/Network$TlsSocket;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 234
    :catch_0
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v1}, Lcom/vivox/sdk/Network$TlsSocket;->access$000(Lcom/vivox/sdk/Network$TlsSocket;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v1}, Lcom/vivox/sdk/Network$TlsSocket;->access$200(Lcom/vivox/sdk/Network$TlsSocket;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 236
    :try_start_2
    iget-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v1}, Lcom/vivox/sdk/Network$TlsSocket;->access$200(Lcom/vivox/sdk/Network$TlsSocket;)Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 240
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v1}, Lcom/vivox/sdk/Network$TlsSocket;->access$000(Lcom/vivox/sdk/Network$TlsSocket;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    monitor-exit v0

    goto :goto_4

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v1}, Lcom/vivox/sdk/Network$TlsSocket;->access$200(Lcom/vivox/sdk/Network$TlsSocket;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 244
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 247
    :try_start_4
    array-length v0, v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    .line 257
    :cond_3
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->val$os:Ljava/io/OutputStream;

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 258
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->val$os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 261
    :catch_1
    :try_start_6
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v0}, Lcom/vivox/sdk/Network$TlsSocket;->access$000(Lcom/vivox/sdk/Network$TlsSocket;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 249
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket$2;->val$os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v1

    .line 244
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    .line 270
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method
