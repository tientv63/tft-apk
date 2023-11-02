.class public final enum Lio/sentry/SentryOptions$RequestSize;
.super Ljava/lang/Enum;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryOptions$RequestSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryOptions$RequestSize;

.field public static final enum ALWAYS:Lio/sentry/SentryOptions$RequestSize;

.field public static final enum MEDIUM:Lio/sentry/SentryOptions$RequestSize;

.field public static final enum NONE:Lio/sentry/SentryOptions$RequestSize;

.field public static final enum SMALL:Lio/sentry/SentryOptions$RequestSize;


# direct methods
.method private static synthetic $values()[Lio/sentry/SentryOptions$RequestSize;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/sentry/SentryOptions$RequestSize;

    .line 2459
    sget-object v1, Lio/sentry/SentryOptions$RequestSize;->NONE:Lio/sentry/SentryOptions$RequestSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryOptions$RequestSize;->SMALL:Lio/sentry/SentryOptions$RequestSize;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryOptions$RequestSize;->MEDIUM:Lio/sentry/SentryOptions$RequestSize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/SentryOptions$RequestSize;->ALWAYS:Lio/sentry/SentryOptions$RequestSize;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2460
    new-instance v0, Lio/sentry/SentryOptions$RequestSize;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryOptions$RequestSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryOptions$RequestSize;->NONE:Lio/sentry/SentryOptions$RequestSize;

    .line 2461
    new-instance v0, Lio/sentry/SentryOptions$RequestSize;

    const-string v1, "SMALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryOptions$RequestSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryOptions$RequestSize;->SMALL:Lio/sentry/SentryOptions$RequestSize;

    .line 2462
    new-instance v0, Lio/sentry/SentryOptions$RequestSize;

    const-string v1, "MEDIUM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryOptions$RequestSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryOptions$RequestSize;->MEDIUM:Lio/sentry/SentryOptions$RequestSize;

    .line 2463
    new-instance v0, Lio/sentry/SentryOptions$RequestSize;

    const-string v1, "ALWAYS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryOptions$RequestSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/SentryOptions$RequestSize;->ALWAYS:Lio/sentry/SentryOptions$RequestSize;

    .line 2459
    invoke-static {}, Lio/sentry/SentryOptions$RequestSize;->$values()[Lio/sentry/SentryOptions$RequestSize;

    move-result-object v0

    sput-object v0, Lio/sentry/SentryOptions$RequestSize;->$VALUES:[Lio/sentry/SentryOptions$RequestSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2459
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryOptions$RequestSize;
    .locals 1

    .line 2459
    const-class v0, Lio/sentry/SentryOptions$RequestSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryOptions$RequestSize;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryOptions$RequestSize;
    .locals 1

    .line 2459
    sget-object v0, Lio/sentry/SentryOptions$RequestSize;->$VALUES:[Lio/sentry/SentryOptions$RequestSize;

    invoke-virtual {v0}, [Lio/sentry/SentryOptions$RequestSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryOptions$RequestSize;

    return-object v0
.end method
