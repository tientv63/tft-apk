.class public final Lio/sentry/protocol/SentrySpan;
.super Ljava/lang/Object;
.source "SentrySpan.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentrySpan$JsonKeys;,
        Lio/sentry/protocol/SentrySpan$Deserializer;
    }
.end annotation


# instance fields
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

.field private final description:Ljava/lang/String;

.field private final op:Ljava/lang/String;

.field private final origin:Ljava/lang/String;

.field private final parentSpanId:Lio/sentry/SpanId;

.field private final spanId:Lio/sentry/SpanId;

.field private final startTimestamp:Ljava/lang/Double;

.field private final status:Lio/sentry/SpanStatus;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:Ljava/lang/Double;

.field private final traceId:Lio/sentry/protocol/SentryId;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/Span;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lio/sentry/Span;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/protocol/SentrySpan;-><init>(Lio/sentry/Span;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/Span;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Span;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "span is required"

    .line 52
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p1}, Lio/sentry/Span;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lio/sentry/Span;->getOperation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->op:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lio/sentry/Span;->getSpanId()Lio/sentry/SpanId;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->spanId:Lio/sentry/SpanId;

    .line 56
    invoke-virtual {p1}, Lio/sentry/Span;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    .line 57
    invoke-virtual {p1}, Lio/sentry/Span;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->traceId:Lio/sentry/protocol/SentryId;

    .line 58
    invoke-virtual {p1}, Lio/sentry/Span;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    .line 59
    invoke-virtual {p1}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SpanContext;->getOrigin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lio/sentry/Span;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    .line 65
    invoke-virtual {p1}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->laterDateNanosTimestampByDiff(Lio/sentry/SentryDate;)J

    move-result-wide v0

    .line 64
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    .line 67
    invoke-virtual {p1}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/SentrySpan;->startTimestamp:Ljava/lang/Double;

    .line 68
    iput-object p2, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Lio/sentry/protocol/SentryId;",
            "Lio/sentry/SpanId;",
            "Lio/sentry/SpanId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/sentry/SpanStatus;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lio/sentry/protocol/SentrySpan;->startTimestamp:Ljava/lang/Double;

    .line 85
    iput-object p2, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    .line 86
    iput-object p3, p0, Lio/sentry/protocol/SentrySpan;->traceId:Lio/sentry/protocol/SentryId;

    .line 87
    iput-object p4, p0, Lio/sentry/protocol/SentrySpan;->spanId:Lio/sentry/SpanId;

    .line 88
    iput-object p5, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    .line 89
    iput-object p6, p0, Lio/sentry/protocol/SentrySpan;->op:Ljava/lang/String;

    .line 90
    iput-object p7, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    .line 91
    iput-object p8, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    .line 92
    iput-object p10, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    .line 93
    iput-object p11, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    .line 94
    iput-object p9, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    return-void
.end method

.method private doubleToBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .locals 2

    .line 201
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method


# virtual methods
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

    .line 138
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    return-object v0
.end method

.method public getSpanId()Lio/sentry/SpanId;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->spanId:Lio/sentry/SpanId;

    return-object v0
.end method

.method public getStartTimestamp()Ljava/lang/Double;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->startTimestamp:Ljava/lang/Double;

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    return-object v0
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

    .line 134
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Double;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    return-object v0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 110
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->traceId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
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

    .line 207
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "start_timestamp"

    .line 165
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->startTimestamp:Ljava/lang/Double;

    invoke-direct {p0, v1}, Lio/sentry/protocol/SentrySpan;->doubleToBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 166
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const-string v0, "timestamp"

    .line 167
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->timestamp:Ljava/lang/Double;

    invoke-direct {p0, v1}, Lio/sentry/protocol/SentrySpan;->doubleToBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_0
    const-string v0, "trace_id"

    .line 169
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->traceId:Lio/sentry/protocol/SentryId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "span_id"

    .line 170
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->spanId:Lio/sentry/SpanId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 171
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    if-eqz v0, :cond_1

    const-string v0, "parent_span_id"

    .line 172
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->parentSpanId:Lio/sentry/SpanId;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_1
    const-string v0, "op"

    .line 174
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->op:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 175
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "description"

    .line 176
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->description:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 178
    :cond_2
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    if-eqz v0, :cond_3

    const-string v0, "status"

    .line 179
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->status:Lio/sentry/SpanStatus;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 181
    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "origin"

    .line 182
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->origin:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 184
    :cond_4
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "tags"

    .line 185
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->tags:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 187
    :cond_5
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    if-eqz v0, :cond_6

    const-string v0, "data"

    .line 188
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentrySpan;->data:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 190
    :cond_6
    iget-object v0, p0, Lio/sentry/protocol/SentrySpan;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 191
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lio/sentry/protocol/SentrySpan;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 194
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 197
    :cond_7
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lio/sentry/protocol/SentrySpan;->unknown:Ljava/util/Map;

    return-void
.end method
