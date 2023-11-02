.class final Lcom/vivox/sdk/JniServices$JniServicesHolder;
.super Ljava/lang/Object;
.source "JniServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/JniServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JniServicesHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/vivox/sdk/JniServices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/vivox/sdk/JniServices;

    invoke-direct {v0}, Lcom/vivox/sdk/JniServices;-><init>()V

    sput-object v0, Lcom/vivox/sdk/JniServices$JniServicesHolder;->sInstance:Lcom/vivox/sdk/JniServices;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/vivox/sdk/JniServices;
    .locals 1

    .line 16
    sget-object v0, Lcom/vivox/sdk/JniServices$JniServicesHolder;->sInstance:Lcom/vivox/sdk/JniServices;

    return-object v0
.end method
