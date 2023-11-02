.class public final synthetic Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/Session$State;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/Session$State;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;->f$0:Lio/sentry/Session$State;

    iput-boolean p2, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;->f$1:Z

    iput-object p3, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;->f$3:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 4

    iget-object v0, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;->f$0:Lio/sentry/Session$State;

    iget-boolean v1, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v2, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lio/sentry/android/core/InternalSentrySdk$$ExternalSyntheticLambda1;->f$3:Lio/sentry/SentryOptions;

    invoke-static {v0, v1, v2, v3, p1}, Lio/sentry/android/core/InternalSentrySdk;->lambda$updateSession$1(Lio/sentry/Session$State;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/SentryOptions;Lio/sentry/Scope;)V

    return-void
.end method
