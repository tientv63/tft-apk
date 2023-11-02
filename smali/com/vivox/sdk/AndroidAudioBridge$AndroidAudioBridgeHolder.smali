.class final Lcom/vivox/sdk/AndroidAudioBridge$AndroidAudioBridgeHolder;
.super Ljava/lang/Object;
.source "AndroidAudioBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/AndroidAudioBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AndroidAudioBridgeHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/vivox/sdk/AndroidAudioBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/vivox/sdk/AndroidAudioBridge;

    invoke-direct {v0}, Lcom/vivox/sdk/AndroidAudioBridge;-><init>()V

    sput-object v0, Lcom/vivox/sdk/AndroidAudioBridge$AndroidAudioBridgeHolder;->sInstance:Lcom/vivox/sdk/AndroidAudioBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/vivox/sdk/AndroidAudioBridge;
    .locals 1

    .line 57
    sget-object v0, Lcom/vivox/sdk/AndroidAudioBridge$AndroidAudioBridgeHolder;->sInstance:Lcom/vivox/sdk/AndroidAudioBridge;

    return-object v0
.end method
