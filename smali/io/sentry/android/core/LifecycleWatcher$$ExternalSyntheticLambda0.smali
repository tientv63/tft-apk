.class public final synthetic Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/LifecycleWatcher;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/LifecycleWatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/LifecycleWatcher;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/LifecycleWatcher$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/LifecycleWatcher;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/LifecycleWatcher;->lambda$startSession$0$io-sentry-android-core-LifecycleWatcher(Lio/sentry/Scope;)V

    return-void
.end method
