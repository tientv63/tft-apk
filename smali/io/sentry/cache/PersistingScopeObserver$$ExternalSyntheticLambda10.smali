.class public final synthetic Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/cache/PersistingScopeObserver;

.field public final synthetic f$1:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda10;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    iput-object p2, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda10;->f$1:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda10;->f$0:Lio/sentry/cache/PersistingScopeObserver;

    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda10;->f$1:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->lambda$setBreadcrumbs$1$io-sentry-cache-PersistingScopeObserver(Ljava/util/Collection;)V

    return-void
.end method
