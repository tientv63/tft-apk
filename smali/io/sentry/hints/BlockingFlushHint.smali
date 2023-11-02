.class public abstract Lio/sentry/hints/BlockingFlushHint;
.super Ljava/lang/Object;
.source "BlockingFlushHint.java"

# interfaces
.implements Lio/sentry/hints/DiskFlushNotification;
.implements Lio/sentry/hints/Flushable;


# instance fields
.field private final flushTimeoutMillis:J

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lio/sentry/hints/BlockingFlushHint;->flushTimeoutMillis:J

    .line 20
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lio/sentry/hints/BlockingFlushHint;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 21
    iput-object p3, p0, Lio/sentry/hints/BlockingFlushHint;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public markFlushed()V
    .locals 1

    .line 37
    iget-object v0, p0, Lio/sentry/hints/BlockingFlushHint;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public waitFlush()Z
    .locals 4

    .line 27
    :try_start_0
    iget-object v0, p0, Lio/sentry/hints/BlockingFlushHint;->latch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lio/sentry/hints/BlockingFlushHint;->flushTimeoutMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 30
    iget-object v1, p0, Lio/sentry/hints/BlockingFlushHint;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Exception while awaiting for flush in BlockingFlushHint"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method
