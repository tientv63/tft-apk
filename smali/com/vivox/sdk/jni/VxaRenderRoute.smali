.class public final Lcom/vivox/sdk/jni/VxaRenderRoute;
.super Ljava/lang/Object;
.source "VxaRenderRoute.java"


# static fields
.field public static final BluetoothA2DP:Lcom/vivox/sdk/jni/VxaRenderRoute;

.field public static final BluetoothSCO:Lcom/vivox/sdk/jni/VxaRenderRoute;

.field public static final Earpiece:Lcom/vivox/sdk/jni/VxaRenderRoute;

.field public static final HDMI:Lcom/vivox/sdk/jni/VxaRenderRoute;

.field public static final Speakerphone:Lcom/vivox/sdk/jni/VxaRenderRoute;

.field public static final USB:Lcom/vivox/sdk/jni/VxaRenderRoute;

.field public static final Unknown:Lcom/vivox/sdk/jni/VxaRenderRoute;

.field public static final Wired:Lcom/vivox/sdk/jni/VxaRenderRoute;

.field private static swigNext:I

.field private static swigValues:[Lcom/vivox/sdk/jni/VxaRenderRoute;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/vivox/sdk/jni/VxaRenderRoute;

    const-string v1, "Unknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/vivox/sdk/jni/VxaRenderRoute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivox/sdk/jni/VxaRenderRoute;->Unknown:Lcom/vivox/sdk/jni/VxaRenderRoute;

    .line 13
    new-instance v1, Lcom/vivox/sdk/jni/VxaRenderRoute;

    const-string v2, "Speakerphone"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/vivox/sdk/jni/VxaRenderRoute;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vivox/sdk/jni/VxaRenderRoute;->Speakerphone:Lcom/vivox/sdk/jni/VxaRenderRoute;

    .line 14
    new-instance v2, Lcom/vivox/sdk/jni/VxaRenderRoute;

    const-string v4, "BluetoothSCO"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/vivox/sdk/jni/VxaRenderRoute;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vivox/sdk/jni/VxaRenderRoute;->BluetoothSCO:Lcom/vivox/sdk/jni/VxaRenderRoute;

    .line 15
    new-instance v4, Lcom/vivox/sdk/jni/VxaRenderRoute;

    const-string v6, "BluetoothA2DP"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Lcom/vivox/sdk/jni/VxaRenderRoute;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/vivox/sdk/jni/VxaRenderRoute;->BluetoothA2DP:Lcom/vivox/sdk/jni/VxaRenderRoute;

    .line 16
    new-instance v6, Lcom/vivox/sdk/jni/VxaRenderRoute;

    const-string v8, "Wired"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9}, Lcom/vivox/sdk/jni/VxaRenderRoute;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/vivox/sdk/jni/VxaRenderRoute;->Wired:Lcom/vivox/sdk/jni/VxaRenderRoute;

    .line 17
    new-instance v8, Lcom/vivox/sdk/jni/VxaRenderRoute;

    const-string v10, "Earpiece"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11}, Lcom/vivox/sdk/jni/VxaRenderRoute;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/vivox/sdk/jni/VxaRenderRoute;->Earpiece:Lcom/vivox/sdk/jni/VxaRenderRoute;

    .line 18
    new-instance v10, Lcom/vivox/sdk/jni/VxaRenderRoute;

    const-string v12, "USB"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13}, Lcom/vivox/sdk/jni/VxaRenderRoute;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/vivox/sdk/jni/VxaRenderRoute;->USB:Lcom/vivox/sdk/jni/VxaRenderRoute;

    .line 19
    new-instance v12, Lcom/vivox/sdk/jni/VxaRenderRoute;

    const-string v14, "HDMI"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15}, Lcom/vivox/sdk/jni/VxaRenderRoute;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/vivox/sdk/jni/VxaRenderRoute;->HDMI:Lcom/vivox/sdk/jni/VxaRenderRoute;

    const/16 v14, 0x8

    new-array v14, v14, [Lcom/vivox/sdk/jni/VxaRenderRoute;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    aput-object v8, v14, v13

    aput-object v10, v14, v15

    const/4 v0, 0x7

    aput-object v12, v14, v0

    .line 55
    sput-object v14, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValues:[Lcom/vivox/sdk/jni/VxaRenderRoute;

    .line 56
    sput v3, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigName:Ljava/lang/String;

    .line 40
    sget p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigNext:I

    iput p1, p0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigName:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 46
    sput p2, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/vivox/sdk/jni/VxaRenderRoute;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigName:Ljava/lang/String;

    .line 51
    iget p1, p2, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValue:I

    iput p1, p0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 52
    sput p1, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lcom/vivox/sdk/jni/VxaRenderRoute;
    .locals 3

    .line 30
    sget-object v0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValues:[Lcom/vivox/sdk/jni/VxaRenderRoute;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    sget-object v1, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValues:[Lcom/vivox/sdk/jni/VxaRenderRoute;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 33
    aget-object v1, v1, v0

    iget v2, v1, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValue:I

    if-ne v2, p0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/vivox/sdk/jni/VxaRenderRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigName:Ljava/lang/String;

    return-object v0
.end method
