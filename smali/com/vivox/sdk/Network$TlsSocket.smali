.class final Lcom/vivox/sdk/Network$TlsSocket;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TlsSocket"
.end annotation


# instance fields
.field private final SocketRxTimeoutValue:I

.field private mIs:Ljava/io/InputStream;

.field private mOs:Ljava/io/OutputStream;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field

.field private mReadThread:Ljava/lang/Thread;

.field private final mSock:I

.field private mSocket:Ljava/net/Socket;

.field private mSslIs:Ljava/io/InputStream;

.field private mSslOs:Ljava/io/OutputStream;

.field private mSslSocket:Ljavax/net/ssl/SSLSocket;

.field private volatile mStopThreads:Z

.field private mWriteThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(ILjava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mQueue:Ljava/util/Queue;

    const/16 v0, 0x7d0

    .line 178
    iput v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->SocketRxTimeoutValue:I

    .line 278
    iput p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSock:I

    .line 280
    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1, p2, p3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSocket:Ljava/net/Socket;

    .line 281
    invoke-virtual {p1, p4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 282
    iget-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 p1, 0x0

    .line 284
    iput-boolean p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mStopThreads:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vivox/sdk/Network$TlsSocket;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mStopThreads:Z

    return p0
.end method

.method static synthetic access$100(Lcom/vivox/sdk/Network$TlsSocket;)I
    .locals 0

    .line 164
    iget p0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSock:I

    return p0
.end method

.method static synthetic access$200(Lcom/vivox/sdk/Network$TlsSocket;)Ljava/util/Queue;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mQueue:Ljava/util/Queue;

    return-object p0
.end method

.method private createReadThread(Ljava/io/InputStream;)Ljava/lang/Thread;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivox/sdk/Network$TlsSocket$1;

    invoke-direct {v1, p0, p1}, Lcom/vivox/sdk/Network$TlsSocket$1;-><init>(Lcom/vivox/sdk/Network$TlsSocket;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private createWriteThread(Ljava/io/OutputStream;)Ljava/lang/Thread;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivox/sdk/Network$TlsSocket$2;

    invoke-direct {v1, p0, p1}, Lcom/vivox/sdk/Network$TlsSocket$2;-><init>(Lcom/vivox/sdk/Network$TlsSocket;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method close()V
    .locals 2

    const/4 v0, 0x1

    .line 394
    :try_start_0
    iput-boolean v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mStopThreads:Z

    .line 395
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mQueue:Ljava/util/Queue;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :try_start_1
    iget-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mQueue:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 397
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    :try_start_2
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 402
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 403
    iput-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mWriteThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 407
    iput-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mWriteThread:Ljava/lang/Thread;

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslOs:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 411
    iput-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslOs:Ljava/io/OutputStream;

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslIs:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 414
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 415
    iput-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslIs:Ljava/io/InputStream;

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_4

    .line 418
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 419
    iput-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 421
    :cond_4
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mOs:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    .line 422
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 423
    iput-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mOs:Ljava/io/OutputStream;

    .line 425
    :cond_5
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 426
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 427
    iput-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mIs:Ljava/io/InputStream;

    .line 429
    :cond_6
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_7

    .line 430
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 431
    iput-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSocket:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 397
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 436
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 434
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method flush()V
    .locals 1

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslOs:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mOs:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 388
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method upgradeToSsl(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mStopThreads:Z

    .line 289
    iget-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/vivox/sdk/Network$TlsSocket;->mQueue:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 291
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 293
    :try_start_1
    iget-object v2, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 295
    iput-object v3, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/vivox/sdk/Network$TlsSocket;->mWriteThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 299
    iput-object v3, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 305
    :cond_1
    iput-boolean v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mStopThreads:Z

    .line 308
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSocket:Ljava/net/Socket;

    .line 320
    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v4

    .line 319
    invoke-virtual {v2, v3, p1, v4, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    iput-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    .line 336
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 338
    iget-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslOs:Ljava/io/OutputStream;

    .line 339
    iget-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslIs:Ljava/io/InputStream;

    .line 341
    invoke-direct {p0, p1}, Lcom/vivox/sdk/Network$TlsSocket;->createReadThread(Ljava/io/InputStream;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;

    .line 342
    iget-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSslOs:Ljava/io/OutputStream;

    invoke-direct {p0, p1}, Lcom/vivox/sdk/Network$TlsSocket;->createWriteThread(Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mWriteThread:Ljava/lang/Thread;

    .line 343
    iget-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 344
    iget-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 349
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    return v1

    :catch_1
    move-exception p1

    .line 346
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    return v1

    :catch_2
    move-exception p1

    .line 302
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    return v1

    :catchall_0
    move-exception p1

    .line 291
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method writeData([B)Z
    .locals 2

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mWriteThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mOs:Ljava/io/OutputStream;

    .line 362
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mIs:Ljava/io/InputStream;

    .line 363
    invoke-direct {p0, v0}, Lcom/vivox/sdk/Network$TlsSocket;->createReadThread(Ljava/io/InputStream;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;

    .line 364
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mOs:Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Lcom/vivox/sdk/Network$TlsSocket;->createWriteThread(Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mWriteThread:Ljava/lang/Thread;

    .line 365
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mReadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 366
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/vivox/sdk/Network$TlsSocket;->mQueue:Ljava/util/Queue;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :try_start_1
    iget-object v1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object p1, p0, Lcom/vivox/sdk/Network$TlsSocket;->mQueue:Ljava/util/Queue;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 372
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 374
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
