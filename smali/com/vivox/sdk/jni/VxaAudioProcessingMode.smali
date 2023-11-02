.class public final Lcom/vivox/sdk/jni/VxaAudioProcessingMode;
.super Ljava/lang/Object;
.source "VxaAudioProcessingMode.java"


# static fields
.field public static final Normal:Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

.field public static final Voice:Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

.field private static swigNext:I

.field private static swigValues:[Lcom/vivox/sdk/jni/VxaAudioProcessingMode;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->Normal:Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    .line 13
    new-instance v1, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    const-string v3, "Voice"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->Voice:Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 49
    sput-object v3, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValues:[Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    .line 50
    sput v2, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigName:Ljava/lang/String;

    .line 34
    sget p1, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigNext:I

    iput p1, p0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigName:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 40
    sput p2, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/vivox/sdk/jni/VxaAudioProcessingMode;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigName:Ljava/lang/String;

    .line 45
    iget p1, p2, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValue:I

    iput p1, p0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 46
    sput p1, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lcom/vivox/sdk/jni/VxaAudioProcessingMode;
    .locals 3

    .line 24
    sget-object v0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValues:[Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    sget-object v1, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValues:[Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 27
    aget-object v1, v1, v0

    iget v2, v1, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValue:I

    if-ne v2, p0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;

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

    .line 16
    iget v0, p0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/vivox/sdk/jni/VxaAudioProcessingMode;->swigName:Ljava/lang/String;

    return-object v0
.end method
