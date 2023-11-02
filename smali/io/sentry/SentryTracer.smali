.class public final Lio/sentry/SentryTracer;
.super Ljava/lang/Object;
.source "SentryTracer.java"

# interfaces
.implements Lio/sentry/ITransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryTracer$FinishStatus;
    }
.end annotation


# instance fields
.field private final baggage:Lio/sentry/Baggage;

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation
.end field

.field private final contexts:Lio/sentry/protocol/Contexts;

.field private final eventId:Lio/sentry/protocol/SentryId;

.field private finishStatus:Lio/sentry/SentryTracer$FinishStatus;

.field private final hub:Lio/sentry/IHub;

.field private final instrumenter:Lio/sentry/Instrumenter;

.field private final isFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final measurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private final root:Lio/sentry/Span;

.field private volatile timer:Ljava/util/Timer;

.field private final timerLock:Ljava/lang/Object;

.field private volatile timerTask:Ljava/util/TimerTask;

.field private transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

.field private final transactionOptions:Lio/sentry/TransactionOptions;

.field private final transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;


# direct methods
.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;)V
    .locals 2

    .line 54
    new-instance v0, Lio/sentry/TransactionOptions;

    invoke-direct {v0}, Lio/sentry/TransactionOptions;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;Lio/sentry/TransactionPerformanceCollector;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;Lio/sentry/TransactionPerformanceCollector;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;Lio/sentry/TransactionPerformanceCollector;)V
    .locals 7

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->eventId:Lio/sentry/protocol/SentryId;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    .line 38
    sget-object v0, Lio/sentry/SentryTracer$FinishStatus;->NOT_FINISHED:Lio/sentry/SentryTracer$FinishStatus;

    iput-object v0, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/SentryTracer;->isFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    const-string v0, "context is required"

    .line 69
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "hub is required"

    .line 70
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->measurements:Ljava/util/Map;

    .line 73
    new-instance v0, Lio/sentry/Span;

    .line 74
    invoke-virtual {p3}, Lio/sentry/TransactionOptions;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/sentry/Span;-><init>(Lio/sentry/TransactionContext;Lio/sentry/SentryTracer;Lio/sentry/IHub;Lio/sentry/SentryDate;Lio/sentry/SpanOptions;)V

    iput-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 76
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryTracer;->instrumenter:Lio/sentry/Instrumenter;

    .line 78
    iput-object p2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 79
    iput-object p4, p0, Lio/sentry/SentryTracer;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    .line 80
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryTracer;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    .line 81
    iput-object p3, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 83
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Lio/sentry/Baggage;

    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/sentry/Baggage;-><init>(Lio/sentry/ILogger;)V

    iput-object p1, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    :goto_0
    if-eqz p4, :cond_1

    .line 91
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    invoke-interface {p4, p0}, Lio/sentry/TransactionPerformanceCollector;->start(Lio/sentry/ITransaction;)V

    .line 95
    :cond_1
    invoke-virtual {p3}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    .line 97
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->scheduleFinish()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lio/sentry/SentryTracer;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lio/sentry/SentryTracer;->finishFromTimer()V

    return-void
.end method

.method private cancelTimer()V
    .locals 3

    .line 248
    iget-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->timerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lio/sentry/SentryTracer;->timerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 251
    iget-object v1, p0, Lio/sentry/SentryTracer;->isFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    .line 252
    iput-object v1, p0, Lio/sentry/SentryTracer;->timerTask:Ljava/util/TimerTask;

    .line 254
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 9

    .line 353
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1

    .line 357
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->instrumenter:Lio/sentry/Instrumenter;

    invoke-virtual {v0, p5}, Lio/sentry/Instrumenter;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 358
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p5, "parentSpanId is required"

    .line 361
    invoke-static {p1, p5}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p5, "operation is required"

    .line 362
    invoke-static {p2, p5}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelTimer()V

    .line 364
    new-instance p5, Lio/sentry/Span;

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 366
    invoke-virtual {v0}, Lio/sentry/Span;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    iget-object v5, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    new-instance v8, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryTracer;)V

    move-object v0, p5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lio/sentry/Span;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SentryTracer;Ljava/lang/String;Lio/sentry/IHub;Lio/sentry/SentryDate;Lio/sentry/SpanOptions;Lio/sentry/SpanFinishedCallback;)V

    .line 386
    invoke-virtual {p5, p3}, Lio/sentry/Span;->setDescription(Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p5
.end method

.method private createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 7

    .line 342
    sget-object v5, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method private createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 8

    .line 441
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1

    .line 445
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->instrumenter:Lio/sentry/Instrumenter;

    invoke-virtual {v0, p4}, Lio/sentry/Instrumenter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1

    .line 449
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {v1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxSpans()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 450
    iget-object v2, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lio/sentry/Span;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1

    .line 452
    :cond_2
    iget-object p3, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {p3}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p3

    .line 453
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object p4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p5, v0

    const/4 p1, 0x1

    aput-object p2, p5, p1

    const-string p1, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    .line 454
    invoke-interface {p3, p4, p1, p5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1
.end method

.method private finishFromTimer()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    .line 131
    iget-object v0, p0, Lio/sentry/SentryTracer;->isFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private hasAllChildrenFinished()Z
    .locals 2

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 523
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    .line 525
    invoke-virtual {v1}, Lio/sentry/Span;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$updateBaggageValues$3(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/Scope;)V
    .locals 0

    .line 501
    invoke-virtual {p1}, Lio/sentry/Scope;->getUser()Lio/sentry/protocol/User;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private updateBaggageValues()V
    .locals 4

    .line 496
    monitor-enter p0

    .line 497
    :try_start_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    invoke-virtual {v0}, Lio/sentry/Baggage;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 499
    iget-object v1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    new-instance v2, Lio/sentry/SentryTracer$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v1, v2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 503
    iget-object v1, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    .line 504
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/User;

    iget-object v2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {v2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v3

    .line 503
    invoke-virtual {v1, p0, v0, v2, v3}, Lio/sentry/Baggage;->setValuesFromTransaction(Lio/sentry/ITransaction;Lio/sentry/protocol/User;Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V

    .line 505
    iget-object v0, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    invoke-virtual {v0}, Lio/sentry/Baggage;->freeze()V

    .line 507
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 470
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 1

    const/4 v0, 0x1

    .line 482
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;Z)V

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;Z)V
    .locals 4

    .line 158
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    .line 167
    iget-object p2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p2

    invoke-interface {p2}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p2

    .line 171
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    .line 172
    invoke-virtual {v1}, Lio/sentry/Span;->getOptions()Lio/sentry/SpanOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SpanOptions;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_3

    move-object v2, p1

    goto :goto_2

    .line 173
    :cond_3
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v2

    iget-object v2, v2, Lio/sentry/SpanContext;->status:Lio/sentry/SpanStatus;

    :goto_2
    invoke-virtual {v1, v2, p2}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    goto :goto_1

    .line 177
    :cond_4
    invoke-static {p1}, Lio/sentry/SentryTracer$FinishStatus;->finishing(Lio/sentry/SpanStatus;)Lio/sentry/SentryTracer$FinishStatus;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    .line 178
    iget-object p1, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {p1}, Lio/sentry/Span;->isFinished()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 179
    invoke-virtual {p1}, Lio/sentry/TransactionOptions;->isWaitForChildren()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lio/sentry/SentryTracer;->hasAllChildrenFinished()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 181
    :cond_5
    iget-object p1, p0, Lio/sentry/SentryTracer;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 182
    invoke-interface {p1, p0}, Lio/sentry/TransactionPerformanceCollector;->stop(Lio/sentry/ITransaction;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v0

    .line 186
    :goto_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isSampled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    iget-object v1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 188
    invoke-interface {v1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v1

    .line 190
    invoke-interface {v1, p0, p1}, Lio/sentry/ITransactionProfiler;->onTransactionFinish(Lio/sentry/ITransaction;Ljava/util/List;)Lio/sentry/ProfilingTraceData;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v0

    :goto_4
    if-eqz p1, :cond_8

    .line 193
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 197
    :cond_8
    iget-object p1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Span;

    .line 198
    invoke-virtual {v2}, Lio/sentry/Span;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    .line 199
    invoke-virtual {v2, v0}, Lio/sentry/Span;->setSpanFinishedCallback(Lio/sentry/SpanFinishedCallback;)V

    .line 201
    sget-object v3, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-virtual {v2, v3, p2}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    goto :goto_5

    .line 204
    :cond_a
    iget-object p1, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    iget-object v2, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    invoke-static {v2}, Lio/sentry/SentryTracer$FinishStatus;->access$100(Lio/sentry/SentryTracer$FinishStatus;)Lio/sentry/SpanStatus;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 206
    iget-object p1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    new-instance p2, Lio/sentry/SentryTracer$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryTracer;)V

    invoke-interface {p1, p2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 215
    new-instance p1, Lio/sentry/protocol/SentryTransaction;

    invoke-direct {p1, p0}, Lio/sentry/protocol/SentryTransaction;-><init>(Lio/sentry/SentryTracer;)V

    .line 216
    iget-object p2, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 217
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->getTransactionFinishedCallback()Lio/sentry/TransactionFinishedCallback;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 219
    invoke-interface {p2, p0}, Lio/sentry/TransactionFinishedCallback;->execute(Lio/sentry/ITransaction;)V

    .line 222
    :cond_b
    iget-object p2, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    if-eqz p2, :cond_d

    .line 223
    iget-object p2, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 224
    :try_start_0
    iget-object v2, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_c

    .line 225
    iget-object v2, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 226
    iput-object v0, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    .line 228
    :cond_c
    monitor-exit p2

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_d
    :goto_6
    if-eqz p3, :cond_e

    .line 231
    iget-object p2, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 233
    iget-object p1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p3, "Dropping idle transaction %s because it has no child spans"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 235
    invoke-interface {p1, p2, p3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 242
    :cond_e
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lio/sentry/SentryTracer;->measurements:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 243
    iget-object p2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->traceContext()Lio/sentry/TraceContext;

    move-result-object p3

    invoke-interface {p2, p1, p3, v0, v1}, Lio/sentry/IHub;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    :cond_f
    return-void
.end method

.method public forceFinish(Lio/sentry/SpanStatus;Z)V
    .locals 4

    .line 136
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 146
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Span;

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v2, v3}, Lio/sentry/Span;->setSpanFinishedCallback(Lio/sentry/SpanFinishedCallback;)V

    .line 149
    invoke-virtual {v2, p1, v0}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;Z)V

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    return-object v0
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 1

    .line 754
    iget-object v0, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 624
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 713
    iget-object v0, p0, Lio/sentry/SentryTracer;->eventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getFinishDate()Lio/sentry/SentryDate;
    .locals 1

    .line 268
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v0

    return-object v0
.end method

.method public getLatestActiveSpan()Lio/sentry/Span;
    .locals 3

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 701
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 702
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 703
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Span;

    invoke-virtual {v2}, Lio/sentry/Span;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Span;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getMeasurements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lio/sentry/SentryTracer;->measurements:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRoot()Lio/sentry/Span;
    .locals 1

    .line 718
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    return-object v0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 664
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    return-object v0
.end method

.method public getSpanContext()Lio/sentry/SpanContext;
    .locals 1

    .line 591
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    return-object v0
.end method

.method public getSpans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    return-object v0
.end method

.method public getStartDate()Lio/sentry/SentryDate;
    .locals 1

    .line 263
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1

    .line 572
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 586
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method getTimer()Ljava/util/Timer;
    .locals 1

    .line 730
    iget-object v0, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method getTimerTask()Ljava/util/TimerTask;
    .locals 1

    .line 724
    iget-object v0, p0, Lio/sentry/SentryTracer;->timerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method public getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    .line 690
    iget-object v0, p0, Lio/sentry/SentryTracer;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method

.method isFinishTimerRunning()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 736
    iget-object v0, p0, Lio/sentry/SentryTracer;->isFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 610
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isNoOp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProfileSampled()Ljava/lang/Boolean;
    .locals 1

    .line 659
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 1

    .line 654
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$createChild$2$io-sentry-SentryTracer(Lio/sentry/Span;)V
    .locals 1

    .line 374
    iget-object p1, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    .line 375
    iget-object v0, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {v0}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    iget-object p1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {p1}, Lio/sentry/TransactionOptions;->isWaitForChildren()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/sentry/SentryTracer;->hasAllChildrenFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 380
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->scheduleFinish()V

    goto :goto_0

    .line 382
    :cond_1
    invoke-static {p1}, Lio/sentry/SentryTracer$FinishStatus;->access$200(Lio/sentry/SentryTracer$FinishStatus;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    invoke-static {p1}, Lio/sentry/SentryTracer$FinishStatus;->access$100(Lio/sentry/SentryTracer$FinishStatus;)Lio/sentry/SpanStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$finish$0$io-sentry-SentryTracer(Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 0

    if-ne p2, p0, :cond_0

    .line 211
    invoke-virtual {p1}, Lio/sentry/Scope;->clearTransaction()V

    :cond_0
    return-void
.end method

.method synthetic lambda$finish$1$io-sentry-SentryTracer(Lio/sentry/Scope;)V
    .locals 1

    .line 208
    new-instance v0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;-><init>(Lio/sentry/SentryTracer;Lio/sentry/Scope;)V

    invoke-virtual {p1, v0}, Lio/sentry/Scope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method public scheduleFinish()V
    .locals 5

    .line 103
    iget-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelTimer()V

    .line 105
    iget-object v1, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lio/sentry/SentryTracer;->isFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    new-instance v1, Lio/sentry/SentryTracer$1;

    invoke-direct {v1, p0}, Lio/sentry/SentryTracer$1;-><init>(Lio/sentry/SentryTracer;)V

    iput-object v1, p0, Lio/sentry/SentryTracer;->timerTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    iget-object v1, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lio/sentry/SentryTracer;->timerTask:Ljava/util/TimerTask;

    iget-object v3, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {v3}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 118
    :try_start_2
    iget-object v2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {v2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to schedule finish timer"

    .line 120
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    invoke-direct {p0}, Lio/sentry/SentryTracer;->finishFromTimer()V

    .line 125
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 748
    iget-object v0, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 615
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2}, Lio/sentry/Span;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3

    .line 629
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->measurements:Ljava/util/Map;

    new-instance v1, Lio/sentry/protocol/MeasurementValue;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 2

    .line 641
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->measurements:Ljava/util/Map;

    new-instance v1, Lio/sentry/protocol/MeasurementValue;

    invoke-interface {p3}, Lio/sentry/MeasurementUnit;->apiName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 669
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    return-void
.end method

.method public setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
    .locals 1

    .line 675
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 679
    :cond_0
    iput-object p1, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    .line 680
    iput-object p2, p0, Lio/sentry/SentryTracer;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setOperation(Ljava/lang/String;)V

    return-void
.end method

.method public setStatus(Lio/sentry/SpanStatus;)V
    .locals 1

    .line 563
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setStatus(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 596
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1, p2}, Lio/sentry/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 1

    .line 577
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->setThrowable(Ljava/lang/Throwable;)V

    return-void
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1

    .line 284
    new-instance v0, Lio/sentry/SpanOptions;

    invoke-direct {v0}, Lio/sentry/SpanOptions;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/sentry/SentryTracer;->startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 7

    .line 312
    new-instance v6, Lio/sentry/SpanOptions;

    invoke-direct {v6}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 324
    invoke-direct/range {p0 .. p6}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 302
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 2

    const/4 v0, 0x0

    .line 393
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 6

    .line 426
    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;
    .locals 6

    .line 420
    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryTracer;->createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 6

    .line 402
    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 412
    invoke-direct/range {p0 .. p5}, Lio/sentry/SentryTracer;->createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 6

    .line 432
    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryTracer;->createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/BaggageHeader;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    invoke-direct {p0}, Lio/sentry/SentryTracer;->updateBaggageValues()V

    .line 515
    iget-object v0, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    invoke-static {v0, p1}, Lio/sentry/BaggageHeader;->fromBaggageAndOutgoingHeader(Lio/sentry/Baggage;Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toSentryTrace()Lio/sentry/SentryTraceHeader;
    .locals 1

    .line 465
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0}, Lio/sentry/Span;->toSentryTrace()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    return-object v0
.end method

.method public traceContext()Lio/sentry/TraceContext;
    .locals 1

    .line 487
    iget-object v0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lio/sentry/SentryTracer;->updateBaggageValues()V

    .line 489
    iget-object v0, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    invoke-virtual {v0}, Lio/sentry/Baggage;->toTraceContext()Lio/sentry/TraceContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateEndDate(Lio/sentry/SentryDate;)Z
    .locals 1

    .line 759
    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {v0, p1}, Lio/sentry/Span;->updateEndDate(Lio/sentry/SentryDate;)Z

    move-result p1

    return p1
.end method
