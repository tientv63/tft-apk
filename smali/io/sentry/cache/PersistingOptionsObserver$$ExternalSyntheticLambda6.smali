.class public final synthetic Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/cache/PersistingOptionsObserver;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/PersistingOptionsObserver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda6;->f$0:Lio/sentry/cache/PersistingOptionsObserver;

    iput-object p2, p0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda6;->f$0:Lio/sentry/cache/PersistingOptionsObserver;

    iget-object v1, p0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/cache/PersistingOptionsObserver;->lambda$setEnvironment$5$io-sentry-cache-PersistingOptionsObserver(Ljava/lang/String;)V

    return-void
.end method
