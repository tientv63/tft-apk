.class public final synthetic Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/Scope$IWithTransaction;


# instance fields
.field public final synthetic f$0:Lio/sentry/ITransaction;

.field public final synthetic f$1:Lio/sentry/Scope;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/ITransaction;Lio/sentry/Scope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$0:Lio/sentry/ITransaction;

    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$1:Lio/sentry/Scope;

    return-void
.end method


# virtual methods
.method public final accept(Lio/sentry/ITransaction;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$0:Lio/sentry/ITransaction;

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$1:Lio/sentry/Scope;

    invoke-static {v0, v1, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->lambda$clearScope$4(Lio/sentry/ITransaction;Lio/sentry/Scope;Lio/sentry/ITransaction;)V

    return-void
.end method
