.class public final synthetic Lio/sentry/Sentry$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/Sentry$$ExternalSyntheticLambda3;->f$0:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/Sentry$$ExternalSyntheticLambda3;->f$0:Lio/sentry/SentryOptions;

    invoke-static {v0}, Lio/sentry/Sentry;->lambda$notifyOptionsObservers$2(Lio/sentry/SentryOptions;)V

    return-void
.end method
