.class public final synthetic Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lio/sentry/ProfilingTraceData;

.field public final synthetic f$3:Lio/sentry/ISerializer;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;JLio/sentry/ProfilingTraceData;Lio/sentry/ISerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$0:Ljava/io/File;

    iput-wide p2, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$1:J

    iput-object p4, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$2:Lio/sentry/ProfilingTraceData;

    iput-object p5, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$3:Lio/sentry/ISerializer;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$0:Ljava/io/File;

    iget-wide v1, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$1:J

    iget-object v3, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$2:Lio/sentry/ProfilingTraceData;

    iget-object v4, p0, Lio/sentry/SentryEnvelopeItem$$ExternalSyntheticLambda6;->f$3:Lio/sentry/ISerializer;

    invoke-static {v0, v1, v2, v3, v4}, Lio/sentry/SentryEnvelopeItem;->lambda$fromProfilingTrace$12(Ljava/io/File;JLio/sentry/ProfilingTraceData;Lio/sentry/ISerializer;)[B

    move-result-object v0

    return-object v0
.end method
