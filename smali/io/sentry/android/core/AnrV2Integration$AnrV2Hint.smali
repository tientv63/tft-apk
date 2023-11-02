.class public final Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;
.super Lio/sentry/hints/BlockingFlushHint;
.source "AnrV2Integration.java"

# interfaces
.implements Lio/sentry/hints/Backfillable;
.implements Lio/sentry/hints/AbnormalExit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnrV2Hint"
.end annotation


# instance fields
.field private final isBackgroundAnr:Z

.field private final shouldEnrich:Z

.field private final timestamp:J


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;JZZ)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/hints/BlockingFlushHint;-><init>(JLio/sentry/ILogger;)V

    .line 363
    iput-wide p4, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->timestamp:J

    .line 364
    iput-boolean p6, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->shouldEnrich:Z

    .line 365
    iput-boolean p7, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->isBackgroundAnr:Z

    return-void
.end method


# virtual methods
.method public mechanism()Ljava/lang/String;
    .locals 1

    .line 380
    iget-boolean v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->isBackgroundAnr:Z

    if-eqz v0, :cond_0

    const-string v0, "anr_background"

    goto :goto_0

    :cond_0
    const-string v0, "anr_foreground"

    :goto_0
    return-object v0
.end method

.method public shouldEnrich()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->shouldEnrich:Z

    return v0
.end method

.method public timestamp()Ljava/lang/Long;
    .locals 2

    .line 370
    iget-wide v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->timestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
