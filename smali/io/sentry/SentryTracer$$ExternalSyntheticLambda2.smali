.class public final synthetic Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/Scope$IWithTransaction;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryTracer;

.field public final synthetic f$1:Lio/sentry/Scope;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryTracer;Lio/sentry/Scope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;->f$0:Lio/sentry/SentryTracer;

    iput-object p2, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;->f$1:Lio/sentry/Scope;

    return-void
.end method


# virtual methods
.method public final accept(Lio/sentry/ITransaction;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;->f$0:Lio/sentry/SentryTracer;

    iget-object v1, p0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;->f$1:Lio/sentry/Scope;

    invoke-virtual {v0, v1, p1}, Lio/sentry/SentryTracer;->lambda$finish$0$io-sentry-SentryTracer(Lio/sentry/Scope;Lio/sentry/ITransaction;)V

    return-void
.end method
