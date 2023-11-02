.class public final synthetic Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;


# instance fields
.field public final synthetic f$0:Lio/sentry/instrumentation/file/SentryFileInputStream;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lio/sentry/instrumentation/file/SentryFileInputStream;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda2;->f$0:Lio/sentry/instrumentation/file/SentryFileInputStream;

    iput-object p2, p0, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda2;->f$1:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda2;->f$0:Lio/sentry/instrumentation/file/SentryFileInputStream;

    iget-object v1, p0, Lio/sentry/instrumentation/file/SentryFileInputStream$$ExternalSyntheticLambda2;->f$1:[B

    invoke-virtual {v0, v1}, Lio/sentry/instrumentation/file/SentryFileInputStream;->lambda$read$1$io-sentry-instrumentation-file-SentryFileInputStream([B)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
