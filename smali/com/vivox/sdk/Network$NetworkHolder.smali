.class final Lcom/vivox/sdk/Network$NetworkHolder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/vivox/sdk/Network;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 499
    new-instance v0, Lcom/vivox/sdk/Network;

    invoke-direct {v0}, Lcom/vivox/sdk/Network;-><init>()V

    sput-object v0, Lcom/vivox/sdk/Network$NetworkHolder;->sInstance:Lcom/vivox/sdk/Network;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/vivox/sdk/Network;
    .locals 1

    .line 498
    sget-object v0, Lcom/vivox/sdk/Network$NetworkHolder;->sInstance:Lcom/vivox/sdk/Network;

    return-object v0
.end method
