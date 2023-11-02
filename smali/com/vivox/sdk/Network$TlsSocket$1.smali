.class Lcom/vivox/sdk/Network$TlsSocket$1;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivox/sdk/Network$TlsSocket;->createReadThread(Ljava/io/InputStream;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivox/sdk/Network$TlsSocket;

.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/vivox/sdk/Network$TlsSocket;Ljava/io/InputStream;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket$1;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    iput-object p2, p0, Lcom/vivox/sdk/Network$TlsSocket$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket$1;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v1}, Lcom/vivox/sdk/Network$TlsSocket;->access$000(Lcom/vivox/sdk/Network$TlsSocket;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :catch_0
    :cond_0
    :goto_1
    if-gtz v1, :cond_1

    .line 191
    iget-object v2, p0, Lcom/vivox/sdk/Network$TlsSocket$1;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v2}, Lcom/vivox/sdk/Network$TlsSocket;->access$000(Lcom/vivox/sdk/Network$TlsSocket;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_1

    .line 195
    :try_start_1
    iget-object v2, p0, Lcom/vivox/sdk/Network$TlsSocket$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v2, 0x7d0

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 210
    :try_start_2
    invoke-static {v2}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/vivox/sdk/Network$TlsSocket$1;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v2}, Lcom/vivox/sdk/Network$TlsSocket;->access$000(Lcom/vivox/sdk/Network$TlsSocket;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 217
    :cond_2
    invoke-static {}, Lcom/vivox/sdk/Network;->getInstance()Lcom/vivox/sdk/Network;

    move-result-object v2

    iget-object v3, p0, Lcom/vivox/sdk/Network$TlsSocket$1;->this$0:Lcom/vivox/sdk/Network$TlsSocket;

    invoke-static {v3}, Lcom/vivox/sdk/Network$TlsSocket;->access$100(Lcom/vivox/sdk/Network$TlsSocket;)I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/vivox/sdk/Network;->onPacketReceived(I[BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 220
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
