.class public final Lio/sentry/OutboxSender;
.super Lio/sentry/DirectoryProcessor;
.source "OutboxSender.java"

# interfaces
.implements Lio/sentry/IEnvelopeSender;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final envelopeReader:Lio/sentry/IEnvelopeReader;

.field private final hub:Lio/sentry/IHub;

.field private final logger:Lio/sentry/ILogger;

.field private final serializer:Lio/sentry/ISerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 37
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/OutboxSender;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lio/sentry/IEnvelopeReader;Lio/sentry/ISerializer;Lio/sentry/ILogger;J)V
    .locals 0

    .line 50
    invoke-direct {p0, p4, p5, p6}, Lio/sentry/DirectoryProcessor;-><init>(Lio/sentry/ILogger;J)V

    const-string p5, "Hub is required."

    .line 51
    invoke-static {p1, p5}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/OutboxSender;->hub:Lio/sentry/IHub;

    const-string p1, "Envelope reader is required."

    .line 52
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IEnvelopeReader;

    iput-object p1, p0, Lio/sentry/OutboxSender;->envelopeReader:Lio/sentry/IEnvelopeReader;

    const-string p1, "Serializer is required."

    .line 53
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISerializer;

    iput-object p1, p0, Lio/sentry/OutboxSender;->serializer:Lio/sentry/ISerializer;

    const-string p1, "Logger is required."

    .line 54
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method private extractSamplingDecision(Lio/sentry/TraceContext;)Lio/sentry/TracesSamplingDecision;
    .locals 7

    const/4 v0, 0x1

    .line 257
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p1}, Lio/sentry/TraceContext;->getSampleRate()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 239
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 240
    invoke-static {v3, v2}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Invalid sample rate parsed from TraceContext: %s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_0
    new-instance v4, Lio/sentry/TracesSamplingDecision;

    invoke-direct {v4, v1, v3}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 249
    :catch_0
    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Unable to parse sample rate from TraceContext: %s"

    invoke-interface {v3, v4, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_1
    :goto_0
    new-instance p1, Lio/sentry/TracesSamplingDecision;

    invoke-direct {p1, v1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method

.method static synthetic lambda$processEnvelope$1(Lio/sentry/hints/Resettable;)V
    .locals 0

    .line 229
    invoke-interface {p0}, Lio/sentry/hints/Resettable;->reset()V

    return-void
.end method

.method private logEnvelopeItemNull(Lio/sentry/SentryEnvelopeItem;I)V
    .locals 4

    .line 261
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 265
    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "Item %d of type %s returned null by the parser."

    .line 261
    invoke-interface {v0, v1, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logItemCaptured(I)V
    .locals 4

    .line 279
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Item %d is being captured."

    invoke-interface {v0, v1, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logTimeout(Lio/sentry/protocol/SentryId;)V
    .locals 4

    .line 283
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Timed out waiting for event id submission: %s"

    invoke-interface {v0, v1, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logUnexpectedEventId(Lio/sentry/SentryEnvelope;Lio/sentry/protocol/SentryId;I)V
    .locals 4

    .line 270
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 273
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 274
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v2, p3

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "Item %d of has a different event id (%s) to the envelope header (%s)"

    .line 270
    invoke-interface {v0, v1, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private processEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/util/CollectionUtils;->size(Ljava/lang/Iterable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Processing Envelope with %d item(s)"

    .line 117
    invoke-interface {v0, v1, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/SentryEnvelopeItem;

    add-int/2addr v1, v2

    .line 126
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v4

    if-nez v4, :cond_0

    .line 127
    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "Item %d has no header"

    invoke-interface {v3, v4, v7, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_0
    sget-object v4, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Item failed to process."

    if-eqz v4, :cond_5

    .line 131
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 133
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v9, Lio/sentry/OutboxSender;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 134
    :try_start_1
    iget-object v7, p0, Lio/sentry/OutboxSender;->serializer:Lio/sentry/ISerializer;

    const-class v8, Lio/sentry/SentryEvent;

    invoke-interface {v7, v4, v8}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/SentryEvent;

    if-nez v7, :cond_1

    .line 136
    invoke-direct {p0, v3, v1}, Lio/sentry/OutboxSender;->logEnvelopeItemNull(Lio/sentry/SentryEnvelopeItem;I)V

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lio/sentry/util/HintUtils;->setIsFromHybridSdk(Lio/sentry/Hint;Ljava/lang/String;)V

    .line 141
    :cond_2
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 142
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v8

    invoke-virtual {v3, v8}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 143
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lio/sentry/OutboxSender;->logUnexpectedEventId(Lio/sentry/SentryEnvelope;Lio/sentry/protocol/SentryId;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_0

    .line 146
    :cond_3
    :try_start_3
    iget-object v3, p0, Lio/sentry/OutboxSender;->hub:Lio/sentry/IHub;

    invoke-interface {v3, v7, p2}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 147
    invoke-direct {p0, v1}, Lio/sentry/OutboxSender;->logItemCaptured(I)V

    .line 149
    invoke-direct {p0, p2}, Lio/sentry/OutboxSender;->waitFlush(Lio/sentry/Hint;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 150
    invoke-virtual {v7}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/sentry/OutboxSender;->logTimeout(Lio/sentry/protocol/SentryId;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    :try_start_4
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    goto/16 :goto_6

    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_5

    :catchall_0
    move-exception v3

    .line 131
    :try_start_5
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    .line 155
    iget-object v4, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v4, v7, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 157
    :cond_5
    sget-object v4, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 158
    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 160
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v9, Lio/sentry/OutboxSender;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 162
    :try_start_8
    iget-object v7, p0, Lio/sentry/OutboxSender;->serializer:Lio/sentry/ISerializer;

    const-class v8, Lio/sentry/protocol/SentryTransaction;

    .line 163
    invoke-interface {v7, v4, v8}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/sentry/protocol/SentryTransaction;

    if-nez v7, :cond_6

    .line 165
    invoke-direct {p0, v3, v1}, Lio/sentry/OutboxSender;->logEnvelopeItemNull(Lio/sentry/SentryEnvelopeItem;I)V

    goto :goto_3

    .line 167
    :cond_6
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 168
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-virtual {v7}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v8

    invoke-virtual {v3, v8}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 169
    invoke-virtual {v7}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lio/sentry/OutboxSender;->logUnexpectedEventId(Lio/sentry/SentryEnvelope;Lio/sentry/protocol/SentryId;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 191
    :try_start_9
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/16 :goto_0

    .line 174
    :cond_7
    :try_start_a
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeHeader;->getTraceContext()Lio/sentry/TraceContext;

    move-result-object v3

    .line 175
    invoke-virtual {v7}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 179
    invoke-virtual {v7}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v8

    .line 180
    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v8

    .line 181
    invoke-direct {p0, v3}, Lio/sentry/OutboxSender;->extractSamplingDecision(Lio/sentry/TraceContext;)Lio/sentry/TracesSamplingDecision;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/sentry/SpanContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 183
    :cond_8
    iget-object v8, p0, Lio/sentry/OutboxSender;->hub:Lio/sentry/IHub;

    invoke-interface {v8, v7, v3, p2}, Lio/sentry/IHub;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 184
    invoke-direct {p0, v1}, Lio/sentry/OutboxSender;->logItemCaptured(I)V

    .line 186
    invoke-direct {p0, p2}, Lio/sentry/OutboxSender;->waitFlush(Lio/sentry/Hint;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 187
    invoke-virtual {v7}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/sentry/OutboxSender;->logTimeout(Lio/sentry/protocol/SentryId;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 191
    :try_start_b
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    goto/16 :goto_6

    :cond_9
    :goto_3
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_3
    move-exception v3

    .line 158
    :try_start_c
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v4

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v3

    .line 192
    iget-object v4, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v4, v7, v6, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 196
    :cond_a
    new-instance v4, Lio/sentry/SentryEnvelope;

    .line 198
    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SentryEnvelopeHeader;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-virtual {p1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryEnvelopeHeader;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v7

    invoke-direct {v4, v6, v7, v3}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SdkVersion;Lio/sentry/SentryEnvelopeItem;)V

    .line 199
    iget-object v6, p0, Lio/sentry/OutboxSender;->hub:Lio/sentry/IHub;

    invoke-interface {v6, v4, p2}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 200
    iget-object v4, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 203
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "%s item %d is being captured."

    .line 200
    invoke-interface {v4, v6, v8, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-direct {p0, p2}, Lio/sentry/OutboxSender;->waitFlush(Lio/sentry/Hint;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 207
    iget-object p1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v2, [Ljava/lang/Object;

    .line 210
    invoke-virtual {v3}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryItemType;->getItemType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Timed out waiting for item type submission: %s"

    .line 207
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 215
    :cond_b
    :goto_5
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object v3

    .line 216
    instance-of v4, v3, Lio/sentry/hints/SubmissionResult;

    if-eqz v4, :cond_c

    .line 217
    check-cast v3, Lio/sentry/hints/SubmissionResult;

    invoke-interface {v3}, Lio/sentry/hints/SubmissionResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_c

    .line 220
    iget-object p1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v0, v2, [Ljava/lang/Object;

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Envelope had a failed capture at item %d. No more items will be sent."

    .line 220
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 229
    :cond_c
    const-class v3, Lio/sentry/hints/Resettable;

    new-instance v4, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p2, v3, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    goto/16 :goto_0

    :cond_d
    :goto_6
    return-void
.end method

.method private waitFlush(Lio/sentry/Hint;)Z
    .locals 2

    .line 287
    invoke-static {p1}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object p1

    .line 288
    instance-of v0, p1, Lio/sentry/hints/Flushable;

    if-eqz v0, :cond_0

    .line 289
    check-cast p1, Lio/sentry/hints/Flushable;

    invoke-interface {p1}, Lio/sentry/hints/Flushable;->waitFlush()Z

    move-result p1

    return p1

    .line 291
    :cond_0
    const-class v0, Lio/sentry/hints/Flushable;

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    invoke-static {v0, p1, v1}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected isRelevantFileName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "session"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "previous_session"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "startup_crash"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$processFile$0$io-sentry-OutboxSender(Ljava/io/File;Lio/sentry/hints/Retryable;)V
    .locals 6

    const-string v0, "Failed to delete: %s"

    .line 85
    invoke-interface {p2}, Lio/sentry/hints/Retryable;->isRetry()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 87
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    iget-object v2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    invoke-interface {v2, v3, v0, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 91
    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-interface {v3, v4, v2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic processDirectory(Ljava/io/File;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lio/sentry/DirectoryProcessor;->processDirectory(Ljava/io/File;)V

    return-void
.end method

.method public processEnvelopeFile(Ljava/lang/String;Lio/sentry/Hint;)V
    .locals 1

    const-string v0, "Path is required."

    .line 110
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lio/sentry/OutboxSender;->processFile(Ljava/io/File;Lio/sentry/Hint;)V

    return-void
.end method

.method protected processFile(Ljava/io/File;Lio/sentry/Hint;)V
    .locals 7

    const-string v0, "File is required."

    .line 59
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/OutboxSender;->isRelevantFileName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 62
    iget-object p2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "File \'%s\' should be ignored."

    invoke-interface {p2, v0, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 67
    :try_start_1
    iget-object v3, p0, Lio/sentry/OutboxSender;->envelopeReader:Lio/sentry/IEnvelopeReader;

    invoke-interface {v3, v0}, Lio/sentry/IEnvelopeReader;->read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v3

    if-nez v3, :cond_1

    .line 69
    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Stream from path %s resulted in a null envelope."

    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 69
    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, v3, p2}, Lio/sentry/OutboxSender;->processEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 75
    iget-object v3, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "File \'%s\' is done."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 80
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/OutboxSender;Ljava/io/File;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 66
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 78
    :try_start_5
    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error processing envelope."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 80
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/OutboxSender;Ljava/io/File;)V

    :goto_2
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void

    :goto_3
    const-class v1, Lio/sentry/hints/Retryable;

    iget-object v2, p0, Lio/sentry/OutboxSender;->logger:Lio/sentry/ILogger;

    new-instance v3, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lio/sentry/OutboxSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/OutboxSender;Ljava/io/File;)V

    invoke-static {p2, v1, v2, v3}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 95
    throw v0
.end method
