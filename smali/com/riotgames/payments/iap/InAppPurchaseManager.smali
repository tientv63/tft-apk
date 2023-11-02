.class public Lcom/riotgames/payments/iap/InAppPurchaseManager;
.super Ljava/lang/Object;
.source "InAppPurchaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/payments/iap/InAppPurchaseManager$IapResponseType;,
        Lcom/riotgames/payments/iap/InAppPurchaseManager$IapResponseCode;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "pay-mobile"

.field private static nativeInAppPurchasePtr:J


# instance fields
.field private appPackageName:Ljava/lang/String;

.field private client:Lcom/riotgames/payments/iap/InAppPurchaseClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;J)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->appPackageName:Ljava/lang/String;

    .line 41
    sput-wide p3, Lcom/riotgames/payments/iap/InAppPurchaseManager;->nativeInAppPurchasePtr:J

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/Class;

    .line 50
    const-class v0, Landroid/content/Context;

    const/4 v1, 0x0

    aput-object v0, p4, v1

    invoke-virtual {p1, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v1

    .line 51
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/riotgames/payments/iap/InAppPurchaseClient;

    iput-object p1, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->client:Lcom/riotgames/payments/iap/InAppPurchaseClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "pay-mobile"

    const-string p3, "InAppPurchaseManager: Failed to instantiate payments client."

    .line 53
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p2, 0x65

    .line 54
    new-instance p3, Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    const/4 p4, 0x2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;-><init>(ILjava/lang/String;)V

    invoke-static {p2, p3}, Lcom/riotgames/payments/iap/InAppPurchaseManager;->updateNative(ILcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    :goto_0
    return-void
.end method

.method public static updateNative(ILcom/riotgames/payments/iap/InAppPurchaseResponse;)V
    .locals 2

    .line 92
    sget-wide v0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->nativeInAppPurchasePtr:J

    invoke-static {p0, p1, v0, v1}, Lcom/riotgames/payments/iap/InAppPurchaseManager;->updateNative(ILcom/riotgames/payments/iap/InAppPurchaseResponse;J)V

    return-void
.end method

.method public static native updateNative(ILcom/riotgames/payments/iap/InAppPurchaseResponse;J)V
.end method


# virtual methods
.method public consumeTransaction(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->client:Lcom/riotgames/payments/iap/InAppPurchaseClient;

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseClient;->consume(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->client:Lcom/riotgames/payments/iap/InAppPurchaseClient;

    invoke-virtual {v0}, Lcom/riotgames/payments/iap/InAppPurchaseClient;->destroy()V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->client:Lcom/riotgames/payments/iap/InAppPurchaseClient;

    invoke-virtual {v0}, Lcom/riotgames/payments/iap/InAppPurchaseClient;->init()V

    return-void
.end method

.method public init(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->client:Lcom/riotgames/payments/iap/InAppPurchaseClient;

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseClient;->init(Z)V

    return-void
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->client:Lcom/riotgames/payments/iap/InAppPurchaseClient;

    invoke-virtual {v0, p1, p2}, Lcom/riotgames/payments/iap/InAppPurchaseClient;->purchase(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestProducts([Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->client:Lcom/riotgames/payments/iap/InAppPurchaseClient;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseClient;->requestProducts(Ljava/util/List;)V

    return-void
.end method

.method public updateUserIdentifier(Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseManager;->client:Lcom/riotgames/payments/iap/InAppPurchaseClient;

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseClient;->setUserIdentifier(Ljava/lang/String;)V

    return-void
.end method
