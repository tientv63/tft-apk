.class public final Lio/sentry/Span;
.super Ljava/lang/Object;
.source "Span.java"

# interfaces
.implements Lio/sentry/ISpan;


# instance fields
.field private final context:Lio/sentry/SpanContext;

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final hub:Lio/sentry/IHub;

.field private final options:Lio/sentry/SpanOptions;

.field private spanFinishedCallback:Lio/sentry/SpanFinishedCallback;

.field private startTimestamp:Lio/sentry/SentryDate;

.field private throwable:Ljava/lang/Throwable;

.field private timestamp:Lio/sentry/SentryDate;

.field private final transaction:Lio/sentry/SentryTracer;


# direct methods
.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/SentryTracer;Lio/sentry/IHub;Lio/sentry/SentryDate;Lio/sentry/SpanOptions;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Span;->data:Ljava/util/Map;

    const-string v0, "context is required"

    .line 83
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SpanContext;

    iput-object p1, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    const-string p1, "sentryTracer is required"

    .line 84
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryTracer;

    iput-object p1, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    const-string p1, "hub is required"

    .line 85
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/Span;->hub:Lio/sentry/IHub;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lio/sentry/Span;->spanFinishedCallback:Lio/sentry/SpanFinishedCallback;

    if-eqz p4, :cond_0

    .line 88
    iput-object p4, p0, Lio/sentry/Span;->startTimestamp:Lio/sentry/SentryDate;

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {p3}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Span;->startTimestamp:Lio/sentry/SentryDate;

    .line 92
    :goto_0
    iput-object p5, p0, Lio/sentry/Span;->options:Lio/sentry/SpanOptions;

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SentryTracer;Ljava/lang/String;Lio/sentry/IHub;)V
    .locals 9

    .line 51
    new-instance v7, Lio/sentry/SpanOptions;

    invoke-direct {v7}, Lio/sentry/SpanOptions;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lio/sentry/Span;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SentryTracer;Ljava/lang/String;Lio/sentry/IHub;Lio/sentry/SentryDate;Lio/sentry/SpanOptions;Lio/sentry/SpanFinishedCallback;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SentryTracer;Ljava/lang/String;Lio/sentry/IHub;Lio/sentry/SentryDate;Lio/sentry/SpanOptions;Lio/sentry/SpanFinishedCallback;)V
    .locals 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Span;->data:Ljava/util/Map;

    .line 63
    new-instance v0, Lio/sentry/SpanContext;

    new-instance v3, Lio/sentry/SpanId;

    invoke-direct {v3}, Lio/sentry/SpanId;-><init>()V

    .line 65
    invoke-virtual {p3}, Lio/sentry/SentryTracer;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    iput-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    const-string p1, "transaction is required"

    .line 66
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryTracer;

    iput-object p1, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    const-string p1, "hub is required"

    .line 67
    invoke-static {p5, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/Span;->hub:Lio/sentry/IHub;

    .line 68
    iput-object p7, p0, Lio/sentry/Span;->options:Lio/sentry/SpanOptions;

    .line 69
    iput-object p8, p0, Lio/sentry/Span;->spanFinishedCallback:Lio/sentry/SpanFinishedCallback;

    if-eqz p6, :cond_0

    .line 71
    iput-object p6, p0, Lio/sentry/Span;->startTimestamp:Lio/sentry/SentryDate;

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {p5}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Span;->startTimestamp:Lio/sentry/SentryDate;

    :goto_0
    return-void
.end method

.method private getDirectChildren()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    iget-object v1, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    invoke-virtual {v1}, Lio/sentry/SentryTracer;->getSpans()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 402
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Span;

    .line 404
    invoke-virtual {v2}, Lio/sentry/Span;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lio/sentry/Span;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v3

    invoke-virtual {p0}, Lio/sentry/Span;->getSpanId()Lio/sentry/SpanId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/SpanId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private updateStartDate(Lio/sentry/SentryDate;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lio/sentry/Span;->startTimestamp:Lio/sentry/SentryDate;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 170
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lio/sentry/Span;->hub:Lio/sentry/IHub;

    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 3

    .line 187
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0, p1}, Lio/sentry/SpanContext;->setStatus(Lio/sentry/SpanStatus;)V

    if-nez p2, :cond_1

    .line 192
    iget-object p1, p0, Lio/sentry/Span;->hub:Lio/sentry/IHub;

    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lio/sentry/Span;->timestamp:Lio/sentry/SentryDate;

    .line 193
    iget-object p1, p0, Lio/sentry/Span;->options:Lio/sentry/SpanOptions;

    invoke-virtual {p1}, Lio/sentry/SpanOptions;->isTrimStart()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lio/sentry/Span;->options:Lio/sentry/SpanOptions;

    invoke-virtual {p1}, Lio/sentry/SpanOptions;->isTrimEnd()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 200
    :cond_2
    iget-object p1, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getRoot()Lio/sentry/Span;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/Span;->getSpanId()Lio/sentry/SpanId;

    move-result-object p1

    invoke-virtual {p0}, Lio/sentry/Span;->getSpanId()Lio/sentry/SpanId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/SpanId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 201
    iget-object p1, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getChildren()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 202
    :cond_3
    invoke-direct {p0}, Lio/sentry/Span;->getDirectChildren()Ljava/util/List;

    move-result-object p1

    .line 203
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p2

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    if-eqz p2, :cond_5

    .line 204
    invoke-virtual {v1}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v2

    invoke-virtual {v2, p2}, Lio/sentry/SentryDate;->isBefore(Lio/sentry/SentryDate;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 205
    :cond_5
    invoke-virtual {v1}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object p2

    :cond_6
    if-eqz v0, :cond_7

    .line 208
    invoke-virtual {v1}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/sentry/SentryDate;->isAfter(Lio/sentry/SentryDate;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    :cond_7
    invoke-virtual {v1}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v0

    goto :goto_1

    .line 212
    :cond_8
    iget-object p1, p0, Lio/sentry/Span;->options:Lio/sentry/SpanOptions;

    invoke-virtual {p1}, Lio/sentry/SpanOptions;->isTrimStart()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object p1, p0, Lio/sentry/Span;->startTimestamp:Lio/sentry/SentryDate;

    .line 214
    invoke-virtual {p1, p2}, Lio/sentry/SentryDate;->isBefore(Lio/sentry/SentryDate;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 215
    invoke-direct {p0, p2}, Lio/sentry/Span;->updateStartDate(Lio/sentry/SentryDate;)V

    .line 217
    :cond_9
    iget-object p1, p0, Lio/sentry/Span;->options:Lio/sentry/SpanOptions;

    invoke-virtual {p1}, Lio/sentry/SpanOptions;->isTrimEnd()Z

    move-result p1

    if-eqz p1, :cond_b

    if-eqz v0, :cond_b

    iget-object p1, p0, Lio/sentry/Span;->timestamp:Lio/sentry/SentryDate;

    if-eqz p1, :cond_a

    .line 219
    invoke-virtual {p1, v0}, Lio/sentry/SentryDate;->isAfter(Lio/sentry/SentryDate;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 220
    :cond_a
    invoke-virtual {p0, v0}, Lio/sentry/Span;->updateEndDate(Lio/sentry/SentryDate;)Z

    .line 224
    :cond_b
    iget-object p1, p0, Lio/sentry/Span;->throwable:Ljava/lang/Throwable;

    if-eqz p1, :cond_c

    .line 225
    iget-object p2, p0, Lio/sentry/Span;->hub:Lio/sentry/IHub;

    iget-object v0, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    invoke-virtual {v0}, Lio/sentry/SentryTracer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, p0, v0}, Lio/sentry/IHub;->setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V

    .line 227
    :cond_c
    iget-object p1, p0, Lio/sentry/Span;->spanFinishedCallback:Lio/sentry/SpanFinishedCallback;

    if-eqz p1, :cond_d

    .line 228
    invoke-interface {p1, p0}, Lio/sentry/SpanFinishedCallback;->execute(Lio/sentry/Span;)V

    :cond_d
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 356
    iget-object v0, p0, Lio/sentry/Span;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 299
    iget-object v0, p0, Lio/sentry/Span;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFinishDate()Lio/sentry/SentryDate;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/sentry/Span;->timestamp:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOptions()Lio/sentry/SpanOptions;
    .locals 1

    .line 394
    iget-object v0, p0, Lio/sentry/Span;->options:Lio/sentry/SpanOptions;

    return-object v0
.end method

.method public getParentSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 338
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v0

    return-object v0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 311
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    return-object v0
.end method

.method public getSpanContext()Lio/sentry/SpanContext;
    .locals 1

    .line 276
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    return-object v0
.end method

.method public getSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 334
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Lio/sentry/SentryDate;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/sentry/Span;->startTimestamp:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1

    .line 271
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTags()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 325
    iget-object v0, p0, Lio/sentry/Span;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 330
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

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

    .line 307
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 1

    .line 303
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0, p1}, Lio/sentry/SpanContext;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    .line 361
    iget-object v0, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    invoke-virtual {v0, p1, p2}, Lio/sentry/SentryTracer;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    invoke-virtual {v0, p1, p2, p3}, Lio/sentry/SentryTracer;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0, p1}, Lio/sentry/SpanContext;->setOperation(Ljava/lang/String;)V

    return-void
.end method

.method setSpanFinishedCallback(Lio/sentry/SpanFinishedCallback;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lio/sentry/Span;->spanFinishedCallback:Lio/sentry/SpanFinishedCallback;

    return-void
.end method

.method public setStatus(Lio/sentry/SpanStatus;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0, p1}, Lio/sentry/SpanContext;->setStatus(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v0, p1, p2}, Lio/sentry/SpanContext;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 320
    :cond_0
    iput-object p1, p0, Lio/sentry/Span;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public startChild(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 2

    const/4 v0, 0x0

    .line 107
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/sentry/Span;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 2

    .line 128
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1

    .line 132
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    iget-object v1, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v1}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lio/sentry/SentryTracer;->startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 6

    .line 150
    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/sentry/Span;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 7

    .line 117
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    iget-object v1, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    .line 122
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 121
    invoke-virtual/range {v0 .. v6}, Lio/sentry/SentryTracer;->startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p1

    return-object p1
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 2

    .line 138
    iget-object v0, p0, Lio/sentry/Span;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p1

    return-object p1

    .line 141
    :cond_0
    iget-object v0, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    iget-object v1, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v1}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/sentry/SentryTracer;->startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

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

    .line 165
    iget-object v0, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    invoke-virtual {v0, p1}, Lio/sentry/SentryTracer;->toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object p1

    return-object p1
.end method

.method public toSentryTrace()Lio/sentry/SentryTraceHeader;
    .locals 4

    .line 155
    new-instance v0, Lio/sentry/SentryTraceHeader;

    iget-object v1, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v2}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/Span;->context:Lio/sentry/SpanContext;

    invoke-virtual {v3}, Lio/sentry/SpanContext;->getSampled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryTraceHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public traceContext()Lio/sentry/TraceContext;
    .locals 1

    .line 160
    iget-object v0, p0, Lio/sentry/Span;->transaction:Lio/sentry/SentryTracer;

    invoke-virtual {v0}, Lio/sentry/SentryTracer;->traceContext()Lio/sentry/TraceContext;

    move-result-object v0

    return-object v0
.end method

.method public updateEndDate(Lio/sentry/SentryDate;)Z
    .locals 1

    .line 372
    iget-object v0, p0, Lio/sentry/Span;->timestamp:Lio/sentry/SentryDate;

    if-eqz v0, :cond_0

    .line 373
    iput-object p1, p0, Lio/sentry/Span;->timestamp:Lio/sentry/SentryDate;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
