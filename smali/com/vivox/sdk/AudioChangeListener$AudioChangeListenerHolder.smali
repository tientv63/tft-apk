.class final Lcom/vivox/sdk/AudioChangeListener$AudioChangeListenerHolder;
.super Ljava/lang/Object;
.source "AudioChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/AudioChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioChangeListenerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/vivox/sdk/AudioChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 279
    new-instance v0, Lcom/vivox/sdk/AudioChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivox/sdk/AudioChangeListener;-><init>(Lcom/vivox/sdk/AudioChangeListener$1;)V

    sput-object v0, Lcom/vivox/sdk/AudioChangeListener$AudioChangeListenerHolder;->sInstance:Lcom/vivox/sdk/AudioChangeListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/vivox/sdk/AudioChangeListener;
    .locals 1

    .line 278
    sget-object v0, Lcom/vivox/sdk/AudioChangeListener$AudioChangeListenerHolder;->sInstance:Lcom/vivox/sdk/AudioChangeListener;

    return-object v0
.end method
