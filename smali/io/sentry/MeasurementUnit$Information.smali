.class public final enum Lio/sentry/MeasurementUnit$Information;
.super Ljava/lang/Enum;
.source "MeasurementUnit.java"

# interfaces
.implements Lio/sentry/MeasurementUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/MeasurementUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Information"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/MeasurementUnit$Information;",
        ">;",
        "Lio/sentry/MeasurementUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/MeasurementUnit$Information;

.field public static final enum BIT:Lio/sentry/MeasurementUnit$Information;

.field public static final enum BYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum EXABYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum EXBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum GIBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum GIGABYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum KIBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum KILOBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum MEBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum MEGABYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum PEBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum PETABYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum TEBIBYTE:Lio/sentry/MeasurementUnit$Information;

.field public static final enum TERABYTE:Lio/sentry/MeasurementUnit$Information;


# direct methods
.method private static synthetic $values()[Lio/sentry/MeasurementUnit$Information;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lio/sentry/MeasurementUnit$Information;

    .line 53
    sget-object v1, Lio/sentry/MeasurementUnit$Information;->BIT:Lio/sentry/MeasurementUnit$Information;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->BYTE:Lio/sentry/MeasurementUnit$Information;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->KILOBYTE:Lio/sentry/MeasurementUnit$Information;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->KIBIBYTE:Lio/sentry/MeasurementUnit$Information;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->MEGABYTE:Lio/sentry/MeasurementUnit$Information;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->MEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->GIGABYTE:Lio/sentry/MeasurementUnit$Information;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->GIBIBYTE:Lio/sentry/MeasurementUnit$Information;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->TERABYTE:Lio/sentry/MeasurementUnit$Information;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->TEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->PETABYTE:Lio/sentry/MeasurementUnit$Information;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->PEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->EXABYTE:Lio/sentry/MeasurementUnit$Information;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/MeasurementUnit$Information;->EXBIBYTE:Lio/sentry/MeasurementUnit$Information;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "BIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->BIT:Lio/sentry/MeasurementUnit$Information;

    .line 58
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "BYTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->BYTE:Lio/sentry/MeasurementUnit$Information;

    .line 61
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "KILOBYTE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->KILOBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 64
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "KIBIBYTE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->KIBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 67
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "MEGABYTE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->MEGABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 70
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "MEBIBYTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->MEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 73
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "GIGABYTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->GIGABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 76
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "GIBIBYTE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->GIBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 79
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "TERABYTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->TERABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 82
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "TEBIBYTE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->TEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 85
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "PETABYTE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->PETABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 88
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "PEBIBYTE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->PEBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 91
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "EXABYTE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->EXABYTE:Lio/sentry/MeasurementUnit$Information;

    .line 94
    new-instance v0, Lio/sentry/MeasurementUnit$Information;

    const-string v1, "EXBIBYTE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/sentry/MeasurementUnit$Information;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->EXBIBYTE:Lio/sentry/MeasurementUnit$Information;

    .line 53
    invoke-static {}, Lio/sentry/MeasurementUnit$Information;->$values()[Lio/sentry/MeasurementUnit$Information;

    move-result-object v0

    sput-object v0, Lio/sentry/MeasurementUnit$Information;->$VALUES:[Lio/sentry/MeasurementUnit$Information;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/MeasurementUnit$Information;
    .locals 1

    .line 53
    const-class v0, Lio/sentry/MeasurementUnit$Information;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/MeasurementUnit$Information;

    return-object p0
.end method

.method public static values()[Lio/sentry/MeasurementUnit$Information;
    .locals 1

    .line 53
    sget-object v0, Lio/sentry/MeasurementUnit$Information;->$VALUES:[Lio/sentry/MeasurementUnit$Information;

    invoke-virtual {v0}, [Lio/sentry/MeasurementUnit$Information;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/MeasurementUnit$Information;

    return-object v0
.end method
