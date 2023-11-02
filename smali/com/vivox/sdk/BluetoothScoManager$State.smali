.class final enum Lcom/vivox/sdk/BluetoothScoManager$State;
.super Ljava/lang/Enum;
.source "BluetoothScoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/BluetoothScoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vivox/sdk/BluetoothScoManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vivox/sdk/BluetoothScoManager$State;

.field public static final enum FAILED_TO_START:Lcom/vivox/sdk/BluetoothScoManager$State;

.field public static final enum STARTED:Lcom/vivox/sdk/BluetoothScoManager$State;

.field public static final enum STARTING:Lcom/vivox/sdk/BluetoothScoManager$State;

.field public static final enum STOPPED:Lcom/vivox/sdk/BluetoothScoManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/vivox/sdk/BluetoothScoManager$State;

    const-string v1, "STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vivox/sdk/BluetoothScoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivox/sdk/BluetoothScoManager$State;->STARTING:Lcom/vivox/sdk/BluetoothScoManager$State;

    .line 22
    new-instance v1, Lcom/vivox/sdk/BluetoothScoManager$State;

    const-string v3, "FAILED_TO_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/vivox/sdk/BluetoothScoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vivox/sdk/BluetoothScoManager$State;->FAILED_TO_START:Lcom/vivox/sdk/BluetoothScoManager$State;

    .line 23
    new-instance v3, Lcom/vivox/sdk/BluetoothScoManager$State;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/vivox/sdk/BluetoothScoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vivox/sdk/BluetoothScoManager$State;->STARTED:Lcom/vivox/sdk/BluetoothScoManager$State;

    .line 24
    new-instance v5, Lcom/vivox/sdk/BluetoothScoManager$State;

    const-string v7, "STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/vivox/sdk/BluetoothScoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vivox/sdk/BluetoothScoManager$State;->STOPPED:Lcom/vivox/sdk/BluetoothScoManager$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/vivox/sdk/BluetoothScoManager$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 20
    sput-object v7, Lcom/vivox/sdk/BluetoothScoManager$State;->$VALUES:[Lcom/vivox/sdk/BluetoothScoManager$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vivox/sdk/BluetoothScoManager$State;
    .locals 1

    .line 20
    const-class v0, Lcom/vivox/sdk/BluetoothScoManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vivox/sdk/BluetoothScoManager$State;

    return-object p0
.end method

.method public static values()[Lcom/vivox/sdk/BluetoothScoManager$State;
    .locals 1

    .line 20
    sget-object v0, Lcom/vivox/sdk/BluetoothScoManager$State;->$VALUES:[Lcom/vivox/sdk/BluetoothScoManager$State;

    invoke-virtual {v0}, [Lcom/vivox/sdk/BluetoothScoManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivox/sdk/BluetoothScoManager$State;

    return-object v0
.end method
