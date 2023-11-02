.class public final Lio/sentry/TransactionContext;
.super Lio/sentry/SpanContext;
.source "TransactionContext.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "<unlabeled transaction>"

.field private static final DEFAULT_NAME_SOURCE:Lio/sentry/protocol/TransactionNameSource;

.field private static final DEFAULT_OPERATION:Ljava/lang/String; = "default"


# instance fields
.field private baggage:Lio/sentry/Baggage;

.field private instrumenter:Lio/sentry/Instrumenter;

.field private name:Ljava/lang/String;

.field private parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

.field private transactionNameSource:Lio/sentry/protocol/TransactionNameSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    sput-object v0, Lio/sentry/TransactionContext;->DEFAULT_NAME_SOURCE:Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;Lio/sentry/Baggage;)V
    .locals 6

    const-string v3, "default"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 137
    invoke-direct/range {v0 .. v5}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    .line 20
    sget-object p1, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object p1, p0, Lio/sentry/TransactionContext;->instrumenter:Lio/sentry/Instrumenter;

    const-string p1, "<unlabeled transaction>"

    .line 138
    iput-object p1, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    .line 140
    sget-object p1, Lio/sentry/TransactionContext;->DEFAULT_NAME_SOURCE:Lio/sentry/protocol/TransactionNameSource;

    iput-object p1, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    .line 141
    iput-object p5, p0, Lio/sentry/TransactionContext;->baggage:Lio/sentry/Baggage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V
    .locals 0

    .line 124
    invoke-direct {p0, p3}, Lio/sentry/SpanContext;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object p3, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object p3, p0, Lio/sentry/TransactionContext;->instrumenter:Lio/sentry/Instrumenter;

    const-string p3, "name is required"

    .line 125
    invoke-static {p1, p3}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    .line 127
    invoke-virtual {p0, p4}, Lio/sentry/TransactionContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V
    .locals 1

    .line 108
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-direct {p0, p1, v0, p2, p3}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    return-void
.end method

.method public static fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;
    .locals 8

    .line 59
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->isSampled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    .line 63
    :goto_0
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 66
    invoke-virtual {v7}, Lio/sentry/Baggage;->freeze()V

    .line 68
    invoke-virtual {v7}, Lio/sentry/Baggage;->getSampleRateDouble()Ljava/lang/Double;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 71
    new-instance v2, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v2, v0, v1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    move-object v6, v2

    goto :goto_2

    .line 73
    :cond_2
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    :cond_3
    move-object v6, v1

    .line 77
    :goto_2
    new-instance v0, Lio/sentry/TransactionContext;

    .line 78
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    .line 79
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v4

    .line 80
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v5

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/sentry/TransactionContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;Lio/sentry/Baggage;)V

    return-object v0
.end method

.method public static fromSentryTrace(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryTraceHeader;)Lio/sentry/TransactionContext;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-virtual {p2}, Lio/sentry/SentryTraceHeader;->isSampled()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    move-object v6, v1

    .line 41
    :goto_0
    new-instance v0, Lio/sentry/TransactionContext;

    .line 43
    invoke-virtual {p2}, Lio/sentry/SentryTraceHeader;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    new-instance v4, Lio/sentry/SpanId;

    invoke-direct {v4}, Lio/sentry/SpanId;-><init>()V

    .line 45
    invoke-virtual {p2}, Lio/sentry/SentryTraceHeader;->getSpanId()Lio/sentry/SpanId;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/sentry/TransactionContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;Lio/sentry/Baggage;)V

    .line 49
    invoke-virtual {v0, p0}, Lio/sentry/TransactionContext;->setName(Ljava/lang/String;)V

    .line 50
    sget-object p0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-virtual {v0, p0}, Lio/sentry/TransactionContext;->setTransactionNameSource(Lio/sentry/protocol/TransactionNameSource;)V

    .line 51
    invoke-virtual {v0, p1}, Lio/sentry/TransactionContext;->setOperation(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBaggage()Lio/sentry/Baggage;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/sentry/TransactionContext;->baggage:Lio/sentry/Baggage;

    return-object v0
.end method

.method public getInstrumenter()Lio/sentry/Instrumenter;
    .locals 1

    .line 189
    iget-object v0, p0, Lio/sentry/TransactionContext;->instrumenter:Lio/sentry/Instrumenter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSampled()Ljava/lang/Boolean;
    .locals 1

    .line 149
    iget-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getParentSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 1

    .line 157
    iget-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    return-object v0
.end method

.method public getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
    .locals 1

    .line 185
    iget-object v0, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method

.method public setInstrumenter(Lio/sentry/Instrumenter;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lio/sentry/TransactionContext;->instrumenter:Lio/sentry/Instrumenter;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name is required"

    .line 197
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/sentry/TransactionContext;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentSampled(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v0, p1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    :goto_0
    return-void
.end method

.method public setParentSampled(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 175
    iput-object v0, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 177
    new-instance p2, Lio/sentry/TracesSamplingDecision;

    invoke-direct {p2, p1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    iput-object p2, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    goto :goto_0

    .line 179
    :cond_1
    new-instance v1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v1, p1, v0, p2, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    iput-object v1, p0, Lio/sentry/TransactionContext;->parentSamplingDecision:Lio/sentry/TracesSamplingDecision;

    :goto_0
    return-void
.end method

.method public setTransactionNameSource(Lio/sentry/protocol/TransactionNameSource;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lio/sentry/TransactionContext;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method
