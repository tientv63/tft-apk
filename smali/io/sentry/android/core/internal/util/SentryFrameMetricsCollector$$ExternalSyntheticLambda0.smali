.class public final synthetic Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda0;->f$0:Lio/sentry/SentryOptions;

    invoke-static {v0, p1, p2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lambda$new$0(Lio/sentry/SentryOptions;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
