.class public final enum Lcom/riotgames/foundation/API$Method;
.super Ljava/lang/Enum;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/foundation/API;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/riotgames/foundation/API$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/riotgames/foundation/API$Method;

.field public static final enum DELETE:Lcom/riotgames/foundation/API$Method;

.field public static final enum GET:Lcom/riotgames/foundation/API$Method;

.field public static final enum HEAD:Lcom/riotgames/foundation/API$Method;

.field public static final enum NONE:Lcom/riotgames/foundation/API$Method;

.field public static final enum OPTIONS:Lcom/riotgames/foundation/API$Method;

.field public static final enum PATCH:Lcom/riotgames/foundation/API$Method;

.field public static final enum POST:Lcom/riotgames/foundation/API$Method;

.field public static final enum PUT:Lcom/riotgames/foundation/API$Method;


# direct methods
.method private static synthetic $values()[Lcom/riotgames/foundation/API$Method;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/riotgames/foundation/API$Method;

    .line 51
    sget-object v1, Lcom/riotgames/foundation/API$Method;->NONE:Lcom/riotgames/foundation/API$Method;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$Method;->DELETE:Lcom/riotgames/foundation/API$Method;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$Method;->GET:Lcom/riotgames/foundation/API$Method;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$Method;->HEAD:Lcom/riotgames/foundation/API$Method;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$Method;->OPTIONS:Lcom/riotgames/foundation/API$Method;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$Method;->PATCH:Lcom/riotgames/foundation/API$Method;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$Method;->POST:Lcom/riotgames/foundation/API$Method;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/foundation/API$Method;->PUT:Lcom/riotgames/foundation/API$Method;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/riotgames/foundation/API$Method;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$Method;->NONE:Lcom/riotgames/foundation/API$Method;

    .line 53
    new-instance v0, Lcom/riotgames/foundation/API$Method;

    const-string v1, "DELETE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$Method;->DELETE:Lcom/riotgames/foundation/API$Method;

    .line 54
    new-instance v0, Lcom/riotgames/foundation/API$Method;

    const-string v1, "GET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$Method;->GET:Lcom/riotgames/foundation/API$Method;

    .line 55
    new-instance v0, Lcom/riotgames/foundation/API$Method;

    const-string v1, "HEAD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$Method;->HEAD:Lcom/riotgames/foundation/API$Method;

    .line 56
    new-instance v0, Lcom/riotgames/foundation/API$Method;

    const-string v1, "OPTIONS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$Method;->OPTIONS:Lcom/riotgames/foundation/API$Method;

    .line 57
    new-instance v0, Lcom/riotgames/foundation/API$Method;

    const-string v1, "PATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$Method;->PATCH:Lcom/riotgames/foundation/API$Method;

    .line 58
    new-instance v0, Lcom/riotgames/foundation/API$Method;

    const-string v1, "POST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$Method;->POST:Lcom/riotgames/foundation/API$Method;

    .line 59
    new-instance v0, Lcom/riotgames/foundation/API$Method;

    const-string v1, "PUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/riotgames/foundation/API$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/foundation/API$Method;->PUT:Lcom/riotgames/foundation/API$Method;

    .line 51
    invoke-static {}, Lcom/riotgames/foundation/API$Method;->$values()[Lcom/riotgames/foundation/API$Method;

    move-result-object v0

    sput-object v0, Lcom/riotgames/foundation/API$Method;->$VALUES:[Lcom/riotgames/foundation/API$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/riotgames/foundation/API$Method;
    .locals 1

    .line 51
    const-class v0, Lcom/riotgames/foundation/API$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/riotgames/foundation/API$Method;

    return-object p0
.end method

.method public static values()[Lcom/riotgames/foundation/API$Method;
    .locals 1

    .line 51
    sget-object v0, Lcom/riotgames/foundation/API$Method;->$VALUES:[Lcom/riotgames/foundation/API$Method;

    invoke-virtual {v0}, [Lcom/riotgames/foundation/API$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/riotgames/foundation/API$Method;

    return-object v0
.end method
