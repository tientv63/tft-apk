.class public final enum Lio/sentry/clientreport/DiscardReason;
.super Ljava/lang/Enum;
.source "DiscardReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/clientreport/DiscardReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/clientreport/DiscardReason;

.field public static final enum BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

.field public static final enum CACHE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

.field public static final enum EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

.field public static final enum NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

.field public static final enum QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

.field public static final enum RATELIMIT_BACKOFF:Lio/sentry/clientreport/DiscardReason;

.field public static final enum SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;


# instance fields
.field private final reason:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/sentry/clientreport/DiscardReason;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lio/sentry/clientreport/DiscardReason;

    .line 5
    sget-object v1, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->CACHE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->RATELIMIT_BACKOFF:Lio/sentry/clientreport/DiscardReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lio/sentry/clientreport/DiscardReason;

    const-string v1, "QUEUE_OVERFLOW"

    const/4 v2, 0x0

    const-string v3, "queue_overflow"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/clientreport/DiscardReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 8
    new-instance v0, Lio/sentry/clientreport/DiscardReason;

    const-string v1, "CACHE_OVERFLOW"

    const/4 v2, 0x1

    const-string v3, "cache_overflow"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/clientreport/DiscardReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/clientreport/DiscardReason;->CACHE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 9
    new-instance v0, Lio/sentry/clientreport/DiscardReason;

    const-string v1, "RATELIMIT_BACKOFF"

    const/4 v2, 0x2

    const-string v3, "ratelimit_backoff"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/clientreport/DiscardReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/clientreport/DiscardReason;->RATELIMIT_BACKOFF:Lio/sentry/clientreport/DiscardReason;

    .line 10
    new-instance v0, Lio/sentry/clientreport/DiscardReason;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x3

    const-string v3, "network_error"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/clientreport/DiscardReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/clientreport/DiscardReason;->NETWORK_ERROR:Lio/sentry/clientreport/DiscardReason;

    .line 11
    new-instance v0, Lio/sentry/clientreport/DiscardReason;

    const-string v1, "SAMPLE_RATE"

    const/4 v2, 0x4

    const-string v3, "sample_rate"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/clientreport/DiscardReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    .line 12
    new-instance v0, Lio/sentry/clientreport/DiscardReason;

    const-string v1, "BEFORE_SEND"

    const/4 v2, 0x5

    const-string v3, "before_send"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/clientreport/DiscardReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/clientreport/DiscardReason;->BEFORE_SEND:Lio/sentry/clientreport/DiscardReason;

    .line 13
    new-instance v0, Lio/sentry/clientreport/DiscardReason;

    const-string v1, "EVENT_PROCESSOR"

    const/4 v2, 0x6

    const-string v3, "event_processor"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/clientreport/DiscardReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/clientreport/DiscardReason;->EVENT_PROCESSOR:Lio/sentry/clientreport/DiscardReason;

    .line 5
    invoke-static {}, Lio/sentry/clientreport/DiscardReason;->$values()[Lio/sentry/clientreport/DiscardReason;

    move-result-object v0

    sput-object v0, Lio/sentry/clientreport/DiscardReason;->$VALUES:[Lio/sentry/clientreport/DiscardReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lio/sentry/clientreport/DiscardReason;->reason:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/clientreport/DiscardReason;
    .locals 1

    .line 5
    const-class v0, Lio/sentry/clientreport/DiscardReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/clientreport/DiscardReason;

    return-object p0
.end method

.method public static values()[Lio/sentry/clientreport/DiscardReason;
    .locals 1

    .line 5
    sget-object v0, Lio/sentry/clientreport/DiscardReason;->$VALUES:[Lio/sentry/clientreport/DiscardReason;

    invoke-virtual {v0}, [Lio/sentry/clientreport/DiscardReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/clientreport/DiscardReason;

    return-object v0
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/sentry/clientreport/DiscardReason;->reason:Ljava/lang/String;

    return-object v0
.end method
