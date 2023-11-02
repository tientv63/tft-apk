.class public final enum Lcom/riotgames/foundation/API$EventType;
.super Ljava/lang/Enum;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/foundation/API;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/riotgames/foundation/API$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/riotgames/foundation/API$EventType;

.field public static final enum CREATE:Lcom/riotgames/foundation/API$EventType;

.field public static final enum DELETE:Lcom/riotgames/foundation/API$EventType;

.field public static final enum NONE:Lcom/riotgames/foundation/API$EventType;

.field public static final enum UPDATE:Lcom/riotgames/foundation/API$EventType;


# direct methods
.method private static synthetic $values()[Lcom/riotgames/foundation/API$EventType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/riotgames/foundation/API$EventType;

    .line 62
    sget-object v1, Lcom/riotgames/foundation/API$EventType;->NONE:Lcom/riotgames/foundation/API$EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$EventType;->CREATE:Lcom/riotgames/foundation/API$EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$EventType;->UPDATE:Lcom/riotgames/foundation/API$EventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$EventType;->DELETE:Lcom/riotgames/foundation/API$EventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Lcom/riotgames/foundation/API$EventType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$EventType;->NONE:Lcom/riotgames/foundation/API$EventType;

    .line 64
    new-instance v0, Lcom/riotgames/foundation/API$EventType;

    const-string v1, "CREATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$EventType;->CREATE:Lcom/riotgames/foundation/API$EventType;

    .line 65
    new-instance v0, Lcom/riotgames/foundation/API$EventType;

    const-string v1, "UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$EventType;->UPDATE:Lcom/riotgames/foundation/API$EventType;

    .line 66
    new-instance v0, Lcom/riotgames/foundation/API$EventType;

    const-string v1, "DELETE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$EventType;->DELETE:Lcom/riotgames/foundation/API$EventType;

    .line 62
    invoke-static {}, Lcom/riotgames/foundation/API$EventType;->$values()[Lcom/riotgames/foundation/API$EventType;

    move-result-object v0

    sput-object v0, Lcom/riotgames/foundation/API$EventType;->$VALUES:[Lcom/riotgames/foundation/API$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/riotgames/foundation/API$EventType;
    .locals 1

    .line 62
    const-class v0, Lcom/riotgames/foundation/API$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/riotgames/foundation/API$EventType;

    return-object p0
.end method

.method public static values()[Lcom/riotgames/foundation/API$EventType;
    .locals 1

    .line 62
    sget-object v0, Lcom/riotgames/foundation/API$EventType;->$VALUES:[Lcom/riotgames/foundation/API$EventType;

    invoke-virtual {v0}, [Lcom/riotgames/foundation/API$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/riotgames/foundation/API$EventType;

    return-object v0
.end method
