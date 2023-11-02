.class public final Lio/sentry/Hub;
.super Ljava/lang/Object;
.source "Hub.java"

# interfaces
.implements Lio/sentry/IHub;


# instance fields
.field private volatile isEnabled:Z

.field private volatile lastEventId:Lio/sentry/protocol/SentryId;

.field private final options:Lio/sentry/SentryOptions;

.field private final stack:Lio/sentry/Stack;

.field private final throwableToSpan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Lio/sentry/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/sentry/ISpan;",
            ">;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tracesSampler:Lio/sentry/TracesSampler;

.field private final transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 36
    invoke-static {p1}, Lio/sentry/Hub;->createRootStackItem(Lio/sentry/SentryOptions;)Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;Lio/sentry/Stack$StackItem;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/Stack$StackItem;)V
    .locals 2

    .line 56
    new-instance v0, Lio/sentry/Stack;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/sentry/Stack;-><init>(Lio/sentry/ILogger;Lio/sentry/Stack$StackItem;)V

    invoke-direct {p0, p1, v0}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;Lio/sentry/Stack;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/Stack;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    .line 42
    invoke-static {p1}, Lio/sentry/Hub;->validateOptions(Lio/sentry/SentryOptions;)V

    .line 44
    iput-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 45
    new-instance v0, Lio/sentry/TracesSampler;

    invoke-direct {v0, p1}, Lio/sentry/TracesSampler;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/Hub;->tracesSampler:Lio/sentry/TracesSampler;

    .line 46
    iput-object p2, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 47
    sget-object p2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object p2, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    .line 48
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransactionPerformanceCollector()Lio/sentry/TransactionPerformanceCollector;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Hub;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lio/sentry/Hub;->isEnabled:Z

    return-void
.end method

.method private assignTraceContext(Lio/sentry/SentryEvent;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    .line 244
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/util/ExceptionUtils;->findRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/Pair;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Lio/sentry/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 247
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-interface {v1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 253
    :cond_0
    invoke-virtual {v0}, Lio/sentry/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setTransaction(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private buildLocalScope(Lio/sentry/Scope;Lio/sentry/ScopeCallback;)Lio/sentry/Scope;
    .locals 3

    if-eqz p2, :cond_0

    .line 803
    :try_start_0
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p1}, Lio/sentry/Scope;-><init>(Lio/sentry/Scope;)V

    .line 804
    invoke-interface {p2, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/Scope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p2

    .line 807
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error in the \'ScopeCallback\' callback."

    invoke-interface {v0, v1, v2, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method private captureEventInternal(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 4

    .line 97
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 98
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 99
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 100
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'captureEvent\' call is a no-op."

    .line 101
    invoke-interface {p1, p2, v1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 104
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "captureEvent called with null parameter."

    invoke-interface {p1, p2, v1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/Hub;->assignTraceContext(Lio/sentry/SentryEvent;)V

    .line 108
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lio/sentry/Hub;->buildLocalScope(Lio/sentry/Scope;Lio/sentry/ScopeCallback;)Lio/sentry/Scope;

    move-result-object p3

    .line 112
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, p1, p3, p2}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Scope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 113
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 115
    iget-object p3, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 116
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while capturing event with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 118
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-interface {p3, v1, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private captureExceptionInternal(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 4

    .line 212
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 213
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 214
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 215
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'captureException\' call is a no-op."

    .line 216
    invoke-interface {p1, p2, v1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 220
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "captureException called with null parameter."

    invoke-interface {p1, p2, v1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 224
    new-instance v2, Lio/sentry/SentryEvent;

    invoke-direct {v2, p1}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 225
    invoke-direct {p0, v2}, Lio/sentry/Hub;->assignTraceContext(Lio/sentry/SentryEvent;)V

    .line 227
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lio/sentry/Hub;->buildLocalScope(Lio/sentry/Scope;Lio/sentry/ScopeCallback;)Lio/sentry/Scope;

    move-result-object p3

    .line 229
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, v2, p3, p2}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Scope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 231
    iget-object p3, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 232
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while capturing exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-interface {p3, v1, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    :goto_0
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method private captureMessageInternal(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 4

    .line 142
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 143
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 144
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 145
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'captureMessage\' call is a no-op."

    .line 146
    invoke-interface {p1, p2, v1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 150
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string v1, "captureMessage called with null parameter."

    invoke-interface {p1, p2, v1, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lio/sentry/Hub;->buildLocalScope(Lio/sentry/Scope;Lio/sentry/ScopeCallback;)Lio/sentry/Scope;

    move-result-object p3

    .line 157
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lio/sentry/ISentryClient;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/Scope;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 159
    iget-object p3, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while capturing message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    :goto_0
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method private static createRootStackItem(Lio/sentry/SentryOptions;)Lio/sentry/Stack$StackItem;
    .locals 3

    .line 68
    invoke-static {p0}, Lio/sentry/Hub;->validateOptions(Lio/sentry/SentryOptions;)V

    .line 69
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/SentryOptions;)V

    .line 70
    new-instance v1, Lio/sentry/SentryClient;

    invoke-direct {v1, p0}, Lio/sentry/SentryClient;-><init>(Lio/sentry/SentryOptions;)V

    .line 71
    new-instance v2, Lio/sentry/Stack$StackItem;

    invoke-direct {v2, p0, v1, v0}, Lio/sentry/Stack$StackItem;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/Scope;)V

    return-object v2
.end method

.method private createTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 4

    const-string v0, "transactionContext is required"

    .line 697
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 700
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 701
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 702
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'startTransaction\' returns a no-op."

    .line 703
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 706
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object p1

    goto/16 :goto_0

    .line 707
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/Instrumenter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 708
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 709
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 713
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x1

    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 714
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v1

    aput-object v1, v3, p1

    const-string p1, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s"

    .line 710
    invoke-interface {v0, v2, p1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object p1

    goto :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 717
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 718
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Tracing is disabled and this \'startTransaction\' returns a no-op."

    .line 719
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object p1

    goto :goto_0

    .line 723
    :cond_2
    new-instance v0, Lio/sentry/SamplingContext;

    .line 724
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->getCustomSamplingContext()Lio/sentry/CustomSamplingContext;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/sentry/SamplingContext;-><init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)V

    .line 725
    iget-object v1, p0, Lio/sentry/Hub;->tracesSampler:Lio/sentry/TracesSampler;

    invoke-virtual {v1, v0}, Lio/sentry/TracesSampler;->sample(Lio/sentry/SamplingContext;)Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    .line 726
    invoke-virtual {p1, v0}, Lio/sentry/TransactionContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 728
    new-instance v1, Lio/sentry/SentryTracer;

    iget-object v2, p0, Lio/sentry/Hub;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    invoke-direct {v1, p1, p0, p2, v2}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;Lio/sentry/TransactionPerformanceCollector;)V

    .line 734
    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 735
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object p1

    .line 736
    invoke-interface {p1, v1}, Lio/sentry/ITransactionProfiler;->onTransactionStart(Lio/sentry/ITransaction;)V

    :cond_3
    move-object p1, v1

    .line 739
    :goto_0
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->isBindToScope()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 740
    new-instance p2, Lio/sentry/Hub$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lio/sentry/Hub$$ExternalSyntheticLambda1;-><init>(Lio/sentry/ITransaction;)V

    invoke-virtual {p0, p2}, Lio/sentry/Hub;->configureScope(Lio/sentry/ScopeCallback;)V

    :cond_4
    return-object p1
.end method

.method static synthetic lambda$close$0(Lio/sentry/Scope;)V
    .locals 0

    .line 344
    invoke-virtual {p0}, Lio/sentry/Scope;->clear()V

    return-void
.end method

.method static synthetic lambda$continueTrace$2(Lio/sentry/PropagationContext;Lio/sentry/Scope;)V
    .locals 0

    .line 821
    invoke-virtual {p1, p0}, Lio/sentry/Scope;->setPropagationContext(Lio/sentry/PropagationContext;)V

    return-void
.end method

.method static synthetic lambda$createTransaction$1(Lio/sentry/ITransaction;Lio/sentry/Scope;)V
    .locals 0

    .line 740
    invoke-virtual {p1, p0}, Lio/sentry/Scope;->setTransaction(Lio/sentry/ITransaction;)V

    return-void
.end method

.method private static validateOptions(Lio/sentry/SentryOptions;)V
    .locals 1

    const-string v0, "SentryOptions is required."

    .line 60
    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hub requires a DSN to be instantiated. Considering using the NoOpHub if no DSN is available."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 363
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 364
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'addBreadcrumb\' call is a no-op."

    .line 365
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 369
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "addBreadcrumb called with null parameter."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/Scope;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    :goto_0
    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 5

    .line 576
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 577
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 578
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'bindClient\' call is a no-op."

    .line 579
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 583
    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "New client bound to scope."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    invoke-virtual {v0, p1}, Lio/sentry/Stack$StackItem;->setClient(Lio/sentry/ISentryClient;)V

    goto :goto_0

    .line 586
    :cond_1
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "NoOp client bound to scope."

    invoke-interface {p1, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    invoke-static {}, Lio/sentry/NoOpSentryClient;->getInstance()Lio/sentry/NoOpSentryClient;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/Stack$StackItem;->setClient(Lio/sentry/ISentryClient;)V

    :goto_0
    return-void
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 3

    const-string v0, "SentryEnvelope is required."

    .line 170
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 173
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 175
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'captureEnvelope\' call is a no-op."

    .line 176
    invoke-interface {p1, p2, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 182
    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lio/sentry/ISentryClient;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 187
    iget-object p2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error while capturing envelope."

    invoke-interface {p2, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Hub;->captureEventInternal(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/Hub;->captureEventInternal(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Hub;->captureExceptionInternal(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/Hub;->captureExceptionInternal(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Hub;->captureMessageInternal(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/Hub;->captureMessageInternal(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    return-object p1
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 8

    const-string v0, "transaction is required"

    .line 623
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 626
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 627
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 628
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p3, v2, [Ljava/lang/Object;

    const-string p4, "Instance is disabled and this \'captureTransaction\' call is a no-op."

    .line 629
    invoke-interface {p1, p2, p4, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 633
    :cond_0
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->isFinished()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 634
    iget-object p2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 635
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array p4, v3, [Ljava/lang/Object;

    .line 639
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    aput-object p1, p4, v2

    const-string p1, "Transaction: %s is not finished and this \'captureTransaction\' call is a no-op."

    .line 636
    invoke-interface {p2, p3, p1, p4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 641
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->isSampled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 642
    iget-object p2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 643
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array p4, v3, [Ljava/lang/Object;

    .line 647
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    aput-object p1, p4, v2

    const-string p1, "Transaction %s was dropped due to sampling decision."

    .line 644
    invoke-interface {p2, p3, p1, p4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 649
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p1

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    sget-object p3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 650
    invoke-interface {p1, p2, p3}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    goto :goto_0

    .line 654
    :cond_2
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 656
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    .line 658
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .line 657
    invoke-interface/range {v2 .. v7}, Lio/sentry/ISentryClient;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Scope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 660
    iget-object p3, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 661
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object p4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while capturing transaction with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 664
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 662
    invoke-interface {p3, p4, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 5

    .line 263
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 265
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'captureUserFeedback\' call is a no-op."

    .line 266
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/ISentryClient;->captureUserFeedback(Lio/sentry/UserFeedback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 274
    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 275
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while capturing captureUserFeedback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 278
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-interface {v1, v2, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 4

    .line 429
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 431
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'clearBreadcrumbs\' call is a no-op."

    .line 432
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Scope;->clearBreadcrumbs()V

    :goto_0
    return-void
.end method

.method public clone()Lio/sentry/IHub;
    .locals 4

    .line 609
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Disabled Hub cloned."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    :cond_0
    new-instance v0, Lio/sentry/Hub;

    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    new-instance v2, Lio/sentry/Stack;

    iget-object v3, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-direct {v2, v3}, Lio/sentry/Stack;-><init>(Lio/sentry/Stack;)V

    invoke-direct {v0, v1, v2}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;Lio/sentry/Stack;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lio/sentry/Hub;->clone()Lio/sentry/IHub;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5

    .line 332
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 334
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'close\' call is a no-op."

    .line 335
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 338
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Integration;

    .line 339
    instance-of v3, v2, Ljava/io/Closeable;

    if-eqz v3, :cond_1

    .line 340
    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    goto :goto_0

    .line 344
    :cond_2
    new-instance v0, Lio/sentry/Hub$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/sentry/Hub$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/Hub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 345
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ITransactionProfiler;->close()V

    .line 346
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTransactionPerformanceCollector()Lio/sentry/TransactionPerformanceCollector;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/TransactionPerformanceCollector;->close()V

    .line 347
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/sentry/ISentryExecutorService;->close(J)V

    .line 350
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ISentryClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 354
    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error while closing the Hub."

    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    :goto_1
    iput-boolean v1, p0, Lio/sentry/Hub;->isEnabled:Z

    :goto_2
    return-void
.end method

.method public configureScope(Lio/sentry/ScopeCallback;)V
    .locals 3

    .line 559
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 561
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'configureScope\' call is a no-op."

    .line 562
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 567
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/Scope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 569
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error in the \'configureScope\' callback."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/TransactionContext;"
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lio/sentry/Hub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/sentry/PropagationContext;->fromHeaders(Lio/sentry/ILogger;Ljava/lang/String;Ljava/util/List;)Lio/sentry/PropagationContext;

    move-result-object p1

    .line 819
    new-instance p2, Lio/sentry/Hub$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lio/sentry/Hub$$ExternalSyntheticLambda0;-><init>(Lio/sentry/PropagationContext;)V

    invoke-virtual {p0, p2}, Lio/sentry/Hub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 823
    iget-object p2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 824
    invoke-static {p1}, Lio/sentry/TransactionContext;->fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public endSession()V
    .locals 4

    .line 315
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 317
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'endSession\' call is a no-op."

    .line 318
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/Scope;->endSession()Lio/sentry/Session;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 323
    new-instance v2, Lio/sentry/hints/SessionEndHint;

    invoke-direct {v2}, Lio/sentry/hints/SessionEndHint;-><init>()V

    invoke-static {v2}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v2

    .line 325
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public flush(J)V
    .locals 2

    .line 594
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 596
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'flush\' call is a no-op."

    .line 597
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 600
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/ISentryClient;->flush(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 602
    iget-object p2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error in the \'client.flush\'."

    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getBaggage()Lio/sentry/BaggageHeader;
    .locals 5

    .line 851
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 853
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Instance is disabled and this \'getBaggage\' call is a no-op."

    .line 854
    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Hub;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lio/sentry/util/TracingUtils;->trace(Lio/sentry/IHub;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 859
    invoke-virtual {v0}, Lio/sentry/util/TracingUtils$TracingHeaders;->getBaggageHeader()Lio/sentry/BaggageHeader;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 494
    iget-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 513
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 4

    .line 755
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 757
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'getSpan\' call is a no-op."

    .line 758
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Scope;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getSpanContext(Ljava/lang/Throwable;)Lio/sentry/SpanContext;
    .locals 1

    const-string v0, "throwable is required"

    .line 784
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 785
    invoke-static {p1}, Lio/sentry/util/ExceptionUtils;->findRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 786
    iget-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/util/Pair;

    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {p1}, Lio/sentry/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 790
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    if-eqz p1, :cond_0

    .line 792
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 5

    .line 832
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 834
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Instance is disabled and this \'getTraceparent\' call is a no-op."

    .line 835
    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Hub;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lio/sentry/util/TracingUtils;->trace(Lio/sentry/IHub;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 842
    invoke-virtual {v0}, Lio/sentry/util/TracingUtils$TracingHeaders;->getSentryTraceHeader()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public isCrashedLastRun()Ljava/lang/Boolean;
    .locals 3

    .line 518
    invoke-static {}, Lio/sentry/SentryCrashLastRunState;->getInstance()Lio/sentry/SentryCrashLastRunState;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 519
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryCrashLastRunState;->isCrashedLastRun(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lio/sentry/Hub;->isEnabled:Z

    return v0
.end method

.method public popScope()V
    .locals 4

    .line 531
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 533
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'popScope\' call is a no-op."

    .line 534
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->pop()V

    :goto_0
    return-void
.end method

.method public pushScope()V
    .locals 5

    .line 499
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 501
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'pushScope\' call is a no-op."

    .line 502
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 505
    new-instance v1, Lio/sentry/Stack$StackItem;

    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 506
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v3

    new-instance v4, Lio/sentry/Scope;

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-direct {v4, v0}, Lio/sentry/Scope;-><init>(Lio/sentry/Scope;)V

    invoke-direct {v1, v2, v3, v4}, Lio/sentry/Stack$StackItem;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/Scope;)V

    .line 507
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0, v1}, Lio/sentry/Stack;->push(Lio/sentry/Stack$StackItem;)V

    :goto_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 3

    .line 481
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 482
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 483
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'removeExtra\' call is a no-op."

    .line 484
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 486
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeExtra called with null parameter."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 3

    .line 455
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 456
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 457
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'removeTag\' call is a no-op."

    .line 458
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 460
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "removeTag called with null parameter."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->removeTag(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportFullyDisplayed()V
    .locals 1

    .line 524
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/FullyDisplayedReporter;->reportFullyDrawn()V

    :cond_0
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 468
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 469
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 470
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'setExtra\' call is a no-op."

    .line 471
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/Scope;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 473
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "setExtra called with null parameter."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 415
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 416
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'setFingerprint\' call is a no-op."

    .line 417
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 421
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "setFingerprint called with null parameter."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->setFingerprint(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 3

    .line 377
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 379
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'setLevel\' call is a no-op."

    .line 380
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->setLevel(Lio/sentry/SentryLevel;)V

    :goto_0
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 3

    const-string v0, "throwable is required"

    .line 771
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "span is required"

    .line 772
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "transactionName is required"

    .line 773
    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 775
    invoke-static {p1}, Lio/sentry/util/ExceptionUtils;->findRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 777
    iget-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    iget-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    new-instance v1, Lio/sentry/util/Pair;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p3}, Lio/sentry/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 442
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 443
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 444
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'setTag\' call is a no-op."

    .line 445
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/Scope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 447
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "setTag called with null parameter."

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 3

    .line 388
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 389
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 390
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'setTransaction\' call is a no-op."

    .line 391
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 395
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->setTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transaction cannot be null"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 3

    .line 403
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 405
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'setUser\' call is a no-op."

    .line 406
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/sentry/Scope;->setUser(Lio/sentry/protocol/User;)V

    :goto_0
    return-void
.end method

.method public startSession()V
    .locals 5

    .line 286
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 288
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'startSession\' call is a no-op."

    .line 289
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/Scope;->startSession()Lio/sentry/Scope$SessionPair;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {v2}, Lio/sentry/Scope$SessionPair;->getPrevious()Lio/sentry/Session;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 299
    new-instance v1, Lio/sentry/hints/SessionEndHint;

    invoke-direct {v1}, Lio/sentry/hints/SessionEndHint;-><init>()V

    invoke-static {v1}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v1

    .line 301
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v3

    invoke-virtual {v2}, Lio/sentry/Scope$SessionPair;->getPrevious()Lio/sentry/Session;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    .line 304
    :cond_1
    new-instance v1, Lio/sentry/hints/SessionStartHint;

    invoke-direct {v1}, Lio/sentry/hints/SessionStartHint;-><init>()V

    invoke-static {v1}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v1

    .line 306
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-virtual {v2}, Lio/sentry/Scope$SessionPair;->getCurrent()Lio/sentry/Session;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Session could not be started."

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;Z)Lio/sentry/ITransaction;
    .locals 1

    .line 687
    new-instance v0, Lio/sentry/TransactionOptions;

    invoke-direct {v0}, Lio/sentry/TransactionOptions;-><init>()V

    .line 688
    invoke-virtual {v0, p2}, Lio/sentry/TransactionOptions;->setCustomSamplingContext(Lio/sentry/CustomSamplingContext;)V

    .line 689
    invoke-virtual {v0, p3}, Lio/sentry/TransactionOptions;->setBindToScope(Z)V

    .line 691
    invoke-direct {p0, p1, v0}, Lio/sentry/Hub;->createTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object p1

    return-object p1
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 0

    .line 678
    invoke-direct {p0, p1, p2}, Lio/sentry/Hub;->createTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object p1

    return-object p1
.end method

.method public traceHeaders()Lio/sentry/SentryTraceHeader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 749
    invoke-virtual {p0}, Lio/sentry/Hub;->getTraceparent()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    return-object v0
.end method

.method public withScope(Lio/sentry/ScopeCallback;)V
    .locals 3

    .line 542
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 544
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'withScope\' call is a no-op."

    .line 545
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 547
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Hub;->pushScope()V

    .line 549
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/Scope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/Scope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 551
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error in the \'withScope\' callback."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    :goto_0
    invoke-virtual {p0}, Lio/sentry/Hub;->popScope()V

    :goto_1
    return-void
.end method
