.class public final Lio/sentry/SentryInstantDate;
.super Lio/sentry/SentryDate;
.source "SentryInstantDate.java"


# instance fields
.field private final date:Ljava/time/Instant;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/SentryInstantDate;-><init>(Ljava/time/Instant;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lio/sentry/SentryDate;-><init>()V

    .line 20
    iput-object p1, p0, Lio/sentry/SentryInstantDate;->date:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public nanoTimestamp()J
    .locals 4

    .line 26
    iget-object v0, p0, Lio/sentry/SentryInstantDate;->date:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->secondsToNanos(J)J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/SentryInstantDate;->date:Ljava/time/Instant;

    invoke-virtual {v2}, Ljava/time/Instant;->getNano()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
