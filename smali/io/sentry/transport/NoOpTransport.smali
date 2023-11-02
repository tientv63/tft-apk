.class public final Lio/sentry/transport/NoOpTransport;
.super Ljava/lang/Object;
.source "NoOpTransport.java"

# interfaces
.implements Lio/sentry/transport/ITransport;


# static fields
.field private static final instance:Lio/sentry/transport/NoOpTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lio/sentry/transport/NoOpTransport;

    invoke-direct {v0}, Lio/sentry/transport/NoOpTransport;-><init>()V

    sput-object v0, Lio/sentry/transport/NoOpTransport;->instance:Lio/sentry/transport/NoOpTransport;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/transport/NoOpTransport;
    .locals 1

    .line 15
    sget-object v0, Lio/sentry/transport/NoOpTransport;->instance:Lio/sentry/transport/NoOpTransport;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush(J)V
    .locals 0

    return-void
.end method

.method public send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
