.class public Lcom/riotgames/foundation/API;
.super Ljava/lang/Object;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/foundation/API$Request;,
        Lcom/riotgames/foundation/API$SubscriptionHandler;,
        Lcom/riotgames/foundation/API$EventType;,
        Lcom/riotgames/foundation/API$Method;,
        Lcom/riotgames/foundation/API$ApiException;
    }
.end annotation


# instance fields
.field private nativeAPI:Ljava/nio/ByteBuffer;

.field private nativeHostAPI:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RiotGamesApi"

    .line 206
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeSend(Lcom/riotgames/foundation/API$Request;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native nativeSubscribe(Ljava/lang/String;Lcom/riotgames/foundation/API$SubscriptionHandler;)Ljava/lang/Object;
.end method

.method private native nativeUnsubscribe(Ljava/lang/Object;)V
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/riotgames/foundation/API;->nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method public native nativeDestroy()V
.end method

.method public native nativeInit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public send(Lcom/riotgames/foundation/API$Request;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/riotgames/foundation/API;->nativeSend(Lcom/riotgames/foundation/API$Request;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;Lcom/riotgames/foundation/API$SubscriptionHandler;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/riotgames/foundation/API;->nativeSubscribe(Ljava/lang/String;Lcom/riotgames/foundation/API$SubscriptionHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unsubscribe(Ljava/lang/Object;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/riotgames/foundation/API;->nativeUnsubscribe(Ljava/lang/Object;)V

    return-void
.end method
