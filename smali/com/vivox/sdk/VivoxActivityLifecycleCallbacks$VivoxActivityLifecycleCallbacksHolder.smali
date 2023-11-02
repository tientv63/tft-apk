.class final Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks$VivoxActivityLifecycleCallbacksHolder;
.super Ljava/lang/Object;
.source "VivoxActivityLifecycleCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VivoxActivityLifecycleCallbacksHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;-><init>(Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks$1;)V

    sput-object v0, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks$VivoxActivityLifecycleCallbacksHolder;->sInstance:Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;
    .locals 1

    .line 15
    sget-object v0, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks$VivoxActivityLifecycleCallbacksHolder;->sInstance:Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;

    return-object v0
.end method
