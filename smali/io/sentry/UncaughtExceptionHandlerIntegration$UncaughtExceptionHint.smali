.class public Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;
.super Lio/sentry/hints/BlockingFlushHint;
.source "UncaughtExceptionHandlerIntegration.java"

# interfaces
.implements Lio/sentry/hints/SessionEnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/UncaughtExceptionHandlerIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UncaughtExceptionHint"
.end annotation


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/hints/BlockingFlushHint;-><init>(JLio/sentry/ILogger;)V

    return-void
.end method
