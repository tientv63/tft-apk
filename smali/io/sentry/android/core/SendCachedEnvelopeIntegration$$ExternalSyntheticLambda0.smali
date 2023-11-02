.class public final synthetic Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

.field public final synthetic f$1:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    iput-object p2, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    iget-object v1, p0, Lio/sentry/android/core/SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;->lambda$register$0(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
