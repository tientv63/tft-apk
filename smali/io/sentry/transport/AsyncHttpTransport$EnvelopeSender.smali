.class final Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;
.super Ljava/lang/Object;
.source "AsyncHttpTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/AsyncHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnvelopeSender"
.end annotation


# instance fields
.field private final envelope:Lio/sentry/SentryEnvelope;

.field private final envelopeCache:Lio/sentry/cache/IEnvelopeCache;

.field private final failedResult:Lio/sentry/transport/TransportResult;

.field private final hint:Lio/sentry/Hint;

.field final synthetic this$0:Lio/sentry/transport/AsyncHttpTransport;


# direct methods
.method constructor <init>(Lio/sentry/transport/AsyncHttpTransport;Lio/sentry/SentryEnvelope;Lio/sentry/Hint;Lio/sentry/cache/IEnvelopeCache;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {}, Lio/sentry/transport/TransportResult;->error()Lio/sentry/transport/TransportResult;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->failedResult:Lio/sentry/transport/TransportResult;

    const-string p1, "Envelope is required."

    .line 192
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryEnvelope;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    .line 193
    iput-object p3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-string p1, "EnvelopeCache is required."

    .line 194
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/cache/IEnvelopeCache;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    return-void
.end method

.method static synthetic access$400(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/Hint;
    .locals 0

    .line 182
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    return-object p0
.end method

.method static synthetic access$500(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/SentryEnvelope;
    .locals 0

    .line 182
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    return-object p0
.end method

.method private flush()Lio/sentry/transport/TransportResult;
    .locals 6

    .line 224
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->failedResult:Lio/sentry/transport/TransportResult;

    .line 226
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    invoke-virtual {v1}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/sentry/SentryEnvelopeHeader;->setSentAt(Ljava/util/Date;)V

    .line 227
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    invoke-interface {v1, v2, v3}, Lio/sentry/cache/IEnvelopeCache;->store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 229
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v2, Lio/sentry/hints/DiskFlushNotification;

    new-instance v3, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)V

    invoke-static {v1, v2, v3}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 237
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v1}, Lio/sentry/transport/AsyncHttpTransport;->access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/ITransportGate;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/transport/ITransportGate;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    .line 239
    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    invoke-interface {v0, v1}, Lio/sentry/clientreport/IClientReportRecorder;->attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;

    move-result-object v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v1}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v1

    .line 244
    invoke-virtual {v0}, Lio/sentry/SentryEnvelope;->getHeader()Lio/sentry/SentryEnvelopeHeader;

    move-result-object v2

    .line 245
    invoke-virtual {v1}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/sentry/DateUtils;->nanosToDate(J)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/sentry/SentryEnvelopeHeader;->setSentAt(Ljava/util/Date;)V

    .line 247
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v1}, Lio/sentry/transport/AsyncHttpTransport;->access$300(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/HttpConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/transport/HttpConnection;->send(Lio/sentry/SentryEnvelope;)Lio/sentry/transport/TransportResult;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    invoke-interface {v2, v3}, Lio/sentry/cache/IEnvelopeCache;->discard(Lio/sentry/SentryEnvelope;)V

    move-object v0, v1

    goto :goto_0

    .line 251
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The transport failed to send the envelope with response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    invoke-virtual {v1}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v3}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v1}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_1

    invoke-virtual {v1}, Lio/sentry/transport/TransportResult;->getResponseCode()I

    move-result v1

    const/16 v3, 0x1ad

    if-eq v1, v3, :cond_1

    .line 259
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v3, Lio/sentry/hints/Retryable;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda2;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/SentryEnvelope;)V

    invoke-static {v1, v3, v4}, Lio/sentry/util/HintUtils;->runIfDoesNotHaveType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryNullableConsumer;)V

    .line 269
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 273
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v3, Lio/sentry/hints/Retryable;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda3;-><init>()V

    new-instance v5, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda4;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/SentryEnvelope;)V

    invoke-static {v2, v3, v4, v5}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Sending the event failed."

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 289
    :cond_2
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v2, Lio/sentry/hints/Retryable;

    new-instance v3, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda5;-><init>()V

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda6;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)V

    invoke-static {v1, v2, v3, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;Lio/sentry/util/HintUtils$SentryHintFallback;)V

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$flush$3(Lio/sentry/hints/Retryable;)V
    .locals 1

    const/4 v0, 0x1

    .line 277
    invoke-interface {p0, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method

.method static synthetic lambda$flush$5(Lio/sentry/hints/Retryable;)V
    .locals 1

    const/4 v0, 0x1

    .line 293
    invoke-interface {p0, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method


# virtual methods
.method synthetic lambda$flush$1$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/hints/DiskFlushNotification;)V
    .locals 3

    .line 233
    invoke-interface {p1}, Lio/sentry/hints/DiskFlushNotification;->markFlushed()V

    .line 234
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {p1}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Disk flush envelope fired"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$flush$2$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/SentryEnvelope;Ljava/lang/Object;)V
    .locals 1

    .line 263
    iget-object p2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p2

    .line 264
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p2

    sget-object v0, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 265
    invoke-interface {p2, v0, p1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method synthetic lambda$flush$4$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/SentryEnvelope;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 281
    iget-object p2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p2

    .line 282
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p2

    sget-object p3, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 283
    invoke-interface {p2, p3, p1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method synthetic lambda$flush$6$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lio/sentry/util/LogUtils;->logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 297
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {p1}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p1

    sget-object p2, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->envelope:Lio/sentry/SentryEnvelope;

    .line 299
    invoke-interface {p1, p2, v0}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method synthetic lambda$run$0$io-sentry-transport-AsyncHttpTransport$EnvelopeSender(Lio/sentry/transport/TransportResult;Lio/sentry/hints/SubmissionResult;)V
    .locals 5

    .line 212
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v0}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 217
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Marking envelope submission result: %s"

    .line 214
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {p1}, Lio/sentry/transport/TransportResult;->isSuccess()Z

    move-result p1

    invoke-interface {p2, p1}, Lio/sentry/hints/SubmissionResult;->setResult(Z)V

    return-void
.end method

.method public run()V
    .locals 6

    .line 199
    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->failedResult:Lio/sentry/transport/TransportResult;

    const/4 v1, 0x0

    .line 201
    :try_start_0
    invoke-direct {p0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->flush()Lio/sentry/transport/TransportResult;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v2}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Envelope flushed"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v2, Lio/sentry/hints/SubmissionResult;

    new-instance v3, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;)V

    invoke-static {v1, v2, v3}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void

    :catchall_0
    move-exception v2

    .line 204
    :try_start_1
    iget-object v3, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->this$0:Lio/sentry/transport/AsyncHttpTransport;

    invoke-static {v3}, Lio/sentry/transport/AsyncHttpTransport;->access$100(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Envelope submission failed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 208
    iget-object v2, p0, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->hint:Lio/sentry/Hint;

    const-class v3, Lio/sentry/hints/SubmissionResult;

    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;Lio/sentry/transport/TransportResult;)V

    invoke-static {v2, v3, v4}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 220
    throw v1
.end method
