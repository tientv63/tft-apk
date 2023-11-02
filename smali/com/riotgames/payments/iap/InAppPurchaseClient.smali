.class public abstract Lcom/riotgames/payments/iap/InAppPurchaseClient;
.super Ljava/lang/Object;
.source "InAppPurchaseClient.java"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected userIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/riotgames/payments/iap/InAppPurchaseClient;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract consume(Ljava/lang/String;)V
.end method

.method public abstract destroy()V
.end method

.method protected abstract init()V
.end method

.method protected init(Z)V
    .locals 0

    return-void
.end method

.method protected onClientInitialized(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V
    .locals 1

    const/16 v0, 0x65

    .line 39
    invoke-static {v0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseManager;->updateNative(ILcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    return-void
.end method

.method protected onConsumeResponse(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V
    .locals 1

    const/16 v0, 0x68

    .line 43
    invoke-static {v0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseManager;->updateNative(ILcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    return-void
.end method

.method protected onProductsRequestResponse(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V
    .locals 1

    const/16 v0, 0x67

    .line 47
    invoke-static {v0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseManager;->updateNative(ILcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    return-void
.end method

.method protected onPurchasesUpdated(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V
    .locals 1

    const/16 v0, 0x66

    .line 35
    invoke-static {v0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseManager;->updateNative(ILcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    return-void
.end method

.method public abstract purchase(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestProducts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/riotgames/payments/iap/InAppPurchaseClient;->userIdentifier:Ljava/lang/String;

    return-void
.end method
