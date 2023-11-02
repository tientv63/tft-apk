.class public final Lio/sentry/DefaultTransactionPerformanceCollector;
.super Ljava/lang/Object;
.source "DefaultTransactionPerformanceCollector.java"

# interfaces
.implements Lio/sentry/TransactionPerformanceCollector;


# static fields
.field private static final TRANSACTION_COLLECTION_INTERVAL_MILLIS:J = 0x64L

.field private static final TRANSACTION_COLLECTION_TIMEOUT_MILLIS:J = 0x7530L


# instance fields
.field private final collectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/ICollector;",
            ">;"
        }
    .end annotation
.end field

.field private final isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final options:Lio/sentry/SentryOptions;

.field private final performanceDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile timer:Ljava/util/Timer;

.field private final timerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "The options object is required."

    .line 30
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 31
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCollectors()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->collectors:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/sentry/DefaultTransactionPerformanceCollector;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->collectors:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lio/sentry/DefaultTransactionPerformanceCollector;)Ljava/util/Map;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 129
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 131
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "stop collecting all performance info for transactions"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 132
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    .line 139
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$start$0$io-sentry-DefaultTransactionPerformanceCollector(Lio/sentry/ITransaction;)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lio/sentry/DefaultTransactionPerformanceCollector;->stop(Lio/sentry/ITransaction;)Ljava/util/List;

    return-void
.end method

.method public start(Lio/sentry/ITransaction;)V
    .locals 10

    .line 37
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->collectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 39
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v1, "No collector found. Performance stats will not be captured during transactions."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 40
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :try_start_0
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 51
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/sentry/DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0;-><init>(Lio/sentry/DefaultTransactionPerformanceCollector;Lio/sentry/ITransaction;)V

    const-wide/16 v2, 0x7530

    .line 52
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 55
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to call the executor. Performance collector will not be automatically finished. Did you call Sentry.close()?"

    .line 56
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 63
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 64
    :try_start_1
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    if-nez v1, :cond_2

    .line 65
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    .line 68
    :cond_2
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    new-instance v1, Lio/sentry/DefaultTransactionPerformanceCollector$1;

    invoke-direct {v1, p0}, Lio/sentry/DefaultTransactionPerformanceCollector$1;-><init>(Lio/sentry/DefaultTransactionPerformanceCollector;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 82
    new-instance v5, Lio/sentry/DefaultTransactionPerformanceCollector$2;

    invoke-direct {v5, p0}, Lio/sentry/DefaultTransactionPerformanceCollector$2;-><init>(Lio/sentry/DefaultTransactionPerformanceCollector;)V

    .line 97
    iget-object v4, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x64

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 101
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public stop(Lio/sentry/ITransaction;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    .line 108
    invoke-interface {p1}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 109
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->options:Lio/sentry/SentryOptions;

    .line 110
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "stop collecting performance info for transactions %s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 114
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 115
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 111
    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->performanceDataMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->isStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 118
    :try_start_0
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector;->timer:Ljava/util/Timer;

    .line 122
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
