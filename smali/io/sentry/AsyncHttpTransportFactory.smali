.class public final Lio/sentry/AsyncHttpTransportFactory;
.super Ljava/lang/Object;
.source "AsyncHttpTransportFactory.java"

# interfaces
.implements Lio/sentry/ITransportFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;)Lio/sentry/transport/ITransport;
    .locals 3

    const-string v0, "options is required"

    .line 17
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "requestDetails is required"

    .line 18
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    new-instance v0, Lio/sentry/transport/AsyncHttpTransport;

    new-instance v1, Lio/sentry/transport/RateLimiter;

    invoke-direct {v1, p1}, Lio/sentry/transport/RateLimiter;-><init>(Lio/sentry/SentryOptions;)V

    .line 21
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransportGate()Lio/sentry/transport/ITransportGate;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p2}, Lio/sentry/transport/AsyncHttpTransport;-><init>(Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/RequestDetails;)V

    return-object v0
.end method
