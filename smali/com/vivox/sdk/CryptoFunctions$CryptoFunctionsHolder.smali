.class Lcom/vivox/sdk/CryptoFunctions$CryptoFunctionsHolder;
.super Ljava/lang/Object;
.source "CryptoFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/CryptoFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CryptoFunctionsHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/vivox/sdk/CryptoFunctions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/vivox/sdk/CryptoFunctions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivox/sdk/CryptoFunctions;-><init>(Lcom/vivox/sdk/CryptoFunctions$1;)V

    sput-object v0, Lcom/vivox/sdk/CryptoFunctions$CryptoFunctionsHolder;->sInstance:Lcom/vivox/sdk/CryptoFunctions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/vivox/sdk/CryptoFunctions;
    .locals 1

    .line 36
    sget-object v0, Lcom/vivox/sdk/CryptoFunctions$CryptoFunctionsHolder;->sInstance:Lcom/vivox/sdk/CryptoFunctions;

    return-object v0
.end method
