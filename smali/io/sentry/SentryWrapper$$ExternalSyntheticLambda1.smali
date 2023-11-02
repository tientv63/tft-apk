.class public final synthetic Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/sentry/IHub;

.field public final synthetic f$1:Ljava/util/concurrent/Callable;

.field public final synthetic f$2:Lio/sentry/IHub;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/IHub;Ljava/util/concurrent/Callable;Lio/sentry/IHub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;->f$0:Lio/sentry/IHub;

    iput-object p2, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;->f$2:Lio/sentry/IHub;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;->f$0:Lio/sentry/IHub;

    iget-object v1, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/Callable;

    iget-object v2, p0, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;->f$2:Lio/sentry/IHub;

    invoke-static {v0, v1, v2}, Lio/sentry/SentryWrapper;->lambda$wrapCallable$0(Lio/sentry/IHub;Ljava/util/concurrent/Callable;Lio/sentry/IHub;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
