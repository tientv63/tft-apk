.class public final enum Lio/sentry/Session$State;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/Session$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/Session$State;

.field public static final enum Abnormal:Lio/sentry/Session$State;

.field public static final enum Crashed:Lio/sentry/Session$State;

.field public static final enum Exited:Lio/sentry/Session$State;

.field public static final enum Ok:Lio/sentry/Session$State;


# direct methods
.method private static synthetic $values()[Lio/sentry/Session$State;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/sentry/Session$State;

    .line 20
    sget-object v1, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/Session$State;->Exited:Lio/sentry/Session$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/Session$State;->Abnormal:Lio/sentry/Session$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lio/sentry/Session$State;

    const-string v1, "Ok"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    .line 22
    new-instance v0, Lio/sentry/Session$State;

    const-string v1, "Exited"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/Session$State;->Exited:Lio/sentry/Session$State;

    .line 23
    new-instance v0, Lio/sentry/Session$State;

    const-string v1, "Crashed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    .line 24
    new-instance v0, Lio/sentry/Session$State;

    const-string v1, "Abnormal"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/Session$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/Session$State;->Abnormal:Lio/sentry/Session$State;

    .line 20
    invoke-static {}, Lio/sentry/Session$State;->$values()[Lio/sentry/Session$State;

    move-result-object v0

    sput-object v0, Lio/sentry/Session$State;->$VALUES:[Lio/sentry/Session$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/Session$State;
    .locals 1

    .line 20
    const-class v0, Lio/sentry/Session$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/Session$State;

    return-object p0
.end method

.method public static values()[Lio/sentry/Session$State;
    .locals 1

    .line 20
    sget-object v0, Lio/sentry/Session$State;->$VALUES:[Lio/sentry/Session$State;

    invoke-virtual {v0}, [Lio/sentry/Session$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/Session$State;

    return-object v0
.end method
