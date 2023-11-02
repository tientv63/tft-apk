.class public final synthetic Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/AndroidTransactionProfiler;

.field public final synthetic f$1:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AndroidTransactionProfiler;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/AndroidTransactionProfiler;

    iput-object p2, p0, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda1;->f$1:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/AndroidTransactionProfiler;

    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler$$ExternalSyntheticLambda1;->f$1:Lio/sentry/ITransaction;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/AndroidTransactionProfiler;->lambda$onFirstTransactionStarted$0$io-sentry-android-core-AndroidTransactionProfiler(Lio/sentry/ITransaction;)V

    return-void
.end method
