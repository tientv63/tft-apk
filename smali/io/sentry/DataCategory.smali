.class public final enum Lio/sentry/DataCategory;
.super Ljava/lang/Enum;
.source "DataCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/DataCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/DataCategory;

.field public static final enum All:Lio/sentry/DataCategory;

.field public static final enum Attachment:Lio/sentry/DataCategory;

.field public static final enum Default:Lio/sentry/DataCategory;

.field public static final enum Error:Lio/sentry/DataCategory;

.field public static final enum Profile:Lio/sentry/DataCategory;

.field public static final enum Security:Lio/sentry/DataCategory;

.field public static final enum Session:Lio/sentry/DataCategory;

.field public static final enum Transaction:Lio/sentry/DataCategory;

.field public static final enum Unknown:Lio/sentry/DataCategory;

.field public static final enum UserReport:Lio/sentry/DataCategory;


# instance fields
.field private final category:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lio/sentry/DataCategory;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lio/sentry/DataCategory;

    .line 6
    sget-object v1, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/DataCategory;->Default:Lio/sentry/DataCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/DataCategory;->Session:Lio/sentry/DataCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/DataCategory;->Attachment:Lio/sentry/DataCategory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/DataCategory;->Security:Lio/sentry/DataCategory;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/DataCategory;->UserReport:Lio/sentry/DataCategory;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "All"

    const/4 v2, 0x0

    const-string v3, "__all__"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    .line 9
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "Default"

    const/4 v2, 0x1

    const-string v3, "default"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->Default:Lio/sentry/DataCategory;

    .line 10
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "Error"

    const/4 v2, 0x2

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    .line 11
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "Session"

    const/4 v2, 0x3

    const-string v3, "session"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->Session:Lio/sentry/DataCategory;

    .line 12
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "Attachment"

    const/4 v2, 0x4

    const-string v3, "attachment"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->Attachment:Lio/sentry/DataCategory;

    .line 13
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "Profile"

    const/4 v2, 0x5

    const-string v3, "profile"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->Profile:Lio/sentry/DataCategory;

    .line 14
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "Transaction"

    const/4 v2, 0x6

    const-string v3, "transaction"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 15
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "Security"

    const/4 v2, 0x7

    const-string v3, "security"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->Security:Lio/sentry/DataCategory;

    .line 16
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "UserReport"

    const/16 v2, 0x8

    const-string v3, "user_report"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->UserReport:Lio/sentry/DataCategory;

    .line 17
    new-instance v0, Lio/sentry/DataCategory;

    const-string v1, "Unknown"

    const/16 v2, 0x9

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/DataCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/DataCategory;->Unknown:Lio/sentry/DataCategory;

    .line 6
    invoke-static {}, Lio/sentry/DataCategory;->$values()[Lio/sentry/DataCategory;

    move-result-object v0

    sput-object v0, Lio/sentry/DataCategory;->$VALUES:[Lio/sentry/DataCategory;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lio/sentry/DataCategory;->category:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/DataCategory;
    .locals 1

    .line 6
    const-class v0, Lio/sentry/DataCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/DataCategory;

    return-object p0
.end method

.method public static values()[Lio/sentry/DataCategory;
    .locals 1

    .line 6
    sget-object v0, Lio/sentry/DataCategory;->$VALUES:[Lio/sentry/DataCategory;

    invoke-virtual {v0}, [Lio/sentry/DataCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/DataCategory;

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/sentry/DataCategory;->category:Ljava/lang/String;

    return-object v0
.end method
