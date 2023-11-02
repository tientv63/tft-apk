.class public Lcom/riotgames/payments/iap/google/GooglePlayClient;
.super Lcom/riotgames/payments/iap/InAppPurchaseClient;
.source "GooglePlayClient.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/ConsumeResponseListener;
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# instance fields
.field private mBillingClient:Lcom/android/billingclient/api/BillingClient;

.field private purchaseResponseListener:Lcom/android/billingclient/api/ProductDetailsResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseClient;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    .line 149
    new-instance p1, Lcom/riotgames/payments/iap/google/GooglePlayClient$4;

    invoke-direct {p1, p0}, Lcom/riotgames/payments/iap/google/GooglePlayClient$4;-><init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;)V

    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->purchaseResponseListener:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$002(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/android/billingclient/api/BillingClient;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/riotgames/payments/iap/google/GooglePlayClient;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->checkPurchases()V

    return-void
.end method

.method static synthetic access$200(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/Runnable;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->userIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->startPurchaseFlow(Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;)V

    return-void
.end method

.method static synthetic access$500(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Lcom/android/billingclient/api/ProductDetailsResponseListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->purchaseResponseListener:Lcom/android/billingclient/api/ProductDetailsResponseListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->logResult(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/Runnable;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/android/billingclient/api/BillingResult;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toInitializationResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->onClientInitialized(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    return-void
.end method

.method private checkPurchases()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/riotgames/payments/iap/google/GooglePlayClient$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/riotgames/payments/iap/google/GooglePlayClient$$ExternalSyntheticLambda1;-><init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    :cond_0
    return-void
.end method

.method private fromMicrosToCents(J)J
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x40c3880000000000L    # 10000.0

    div-double/2addr p1, v0

    .line 342
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    return-wide p1
.end method

.method private getProductDetailsAndStartPurchase(Ljava/lang/String;)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Play requesting products for purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay-mobile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Lcom/riotgames/payments/iap/google/GooglePlayClient$6;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient$6;-><init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;)V

    return-void
.end method

.method private logResult(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 374
    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toCompleteResponseMessage(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s : %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pay-mobile"

    .line 373
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startPurchaseFlow(Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "pay-mobile"

    const-string p2, "Purchases are not supported from non-Activity contexts"

    .line 160
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 166
    new-instance v1, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;-><init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Landroid/app/Activity;)V

    .line 180
    invoke-direct {p0, v1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startServiceConnectionIfNeeded(Ljava/lang/Runnable;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    const-string p1, "pay-mobile"

    const-string v0, "Google Play Billing API has not been initialized!"

    .line 206
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance p1, Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    const/4 v0, 0x2

    const-string v1, "call init() first"

    invoke-direct {p1, v0, v1}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->onClientInitialized(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    return-void

    .line 210
    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 212
    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;

    invoke-direct {v1, p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;-><init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private toBillingResponse(Lcom/android/billingclient/api/BillingResult;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1

    .line 324
    new-instance v0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toIapResponseCode(Lcom/android/billingclient/api/BillingResult;I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toCompleteResponseMessage(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private toCompleteResponseMessage(Lcom/android/billingclient/api/BillingResult;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 378
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%d : %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1

    const/16 v0, 0x68

    .line 296
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toBillingResponse(Lcom/android/billingclient/api/BillingResult;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    .line 297
    invoke-virtual {p1, p2}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->setPurchaseToken(Ljava/lang/String;)V

    return-object p1
.end method

.method private toIapResponseCode(Lcom/android/billingclient/api/BillingResult;I)I
    .locals 3

    .line 259
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_5

    const/4 v2, 0x6

    if-eq p1, v2, :cond_4

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p1, 0x8

    return p1

    :pswitch_1
    const/16 p1, 0xa

    return p1

    :pswitch_2
    const/4 p1, 0x7

    return p1

    :pswitch_3
    return v0

    :cond_0
    return v2

    :cond_1
    const/16 p1, 0x65

    if-eq p2, p1, :cond_3

    const/16 p1, 0x68

    if-eq p2, p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/16 p1, 0x9

    return p1

    :cond_3
    return v0

    :cond_4
    const/16 p1, 0xb

    return p1

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toInitializationResponse(Lcom/android/billingclient/api/BillingResult;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1

    const/16 v0, 0x65

    .line 320
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toBillingResponse(Lcom/android/billingclient/api/BillingResult;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    return-object p1
.end method

.method private toProduct(Lcom/android/billingclient/api/ProductDetails;)Lcom/riotgames/payments/iap/Product;
    .locals 4

    .line 328
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->aProduct()Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v1

    .line 330
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withDescription(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v1

    .line 331
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withPrice(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v1

    .line 332
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->fromMicrosToCents(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withAmountInCents(J)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v1

    .line 333
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withPriceCurrencyCode(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 334
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withProductId(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withTitle(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 336
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withType(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->build()Lcom/riotgames/payments/iap/Product;

    move-result-object p1

    return-object p1
.end method

.method private toProductList(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)[Lcom/riotgames/payments/iap/Product;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)[",
            "Lcom/riotgames/payments/iap/Product;"
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/riotgames/payments/iap/Product;

    .line 252
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 253
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    invoke-direct {p0, v1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toProduct(Lcom/android/billingclient/api/ProductDetails;)Lcom/riotgames/payments/iap/Product;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_1
    const-string p1, "pay-mobile"

    const-string p2, "Failed to fetch valid product details. Check previous messages for response."

    .line 247
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v0, [Lcom/riotgames/payments/iap/Product;

    return-object p1
.end method

.method private toProductListResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)",
            "Lcom/riotgames/payments/iap/InAppPurchaseResponse;"
        }
    .end annotation

    const/16 v0, 0x67

    .line 314
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toBillingResponse(Lcom/android/billingclient/api/BillingResult;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object v0

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toProductList(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)[Lcom/riotgames/payments/iap/Product;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->setProducts([Lcom/riotgames/payments/iap/Product;)V

    return-object v0
.end method

.method private toPurchaseListResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)",
            "Lcom/riotgames/payments/iap/InAppPurchaseResponse;"
        }
    .end annotation

    const/16 v0, 0x69

    .line 308
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toBillingResponse(Lcom/android/billingclient/api/BillingResult;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    .line 309
    invoke-direct {p0, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toPurchaseTransactionArray(Ljava/util/List;)[Lcom/riotgames/payments/iap/PurchaseTransaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->setPendingTransactions([Lcom/riotgames/payments/iap/PurchaseTransaction;)V

    return-object p1
.end method

.method private toPurchaseResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1

    const/16 v0, 0x66

    .line 302
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toBillingResponse(Lcom/android/billingclient/api/BillingResult;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    .line 303
    invoke-direct {p0, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toPurchaseTransaction(Lcom/android/billingclient/api/Purchase;)Lcom/riotgames/payments/iap/PurchaseTransaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->setTransaction(Lcom/riotgames/payments/iap/PurchaseTransaction;)V

    return-object p1
.end method

.method private toPurchaseTransaction(Lcom/android/billingclient/api/Purchase;)Lcom/riotgames/payments/iap/PurchaseTransaction;
    .locals 3

    .line 346
    invoke-static {}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->aTransaction()Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withTransactionId(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withPackageName(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withProductId(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 350
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withPurchaseTime(J)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 351
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withPurchaseToken(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 352
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withSignature(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withOriginalJson(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withDeveloperPayload(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->build()Lcom/riotgames/payments/iap/PurchaseTransaction;

    move-result-object p1

    return-object p1
.end method

.method private toPurchaseTransactionArray(Ljava/util/List;)[Lcom/riotgames/payments/iap/PurchaseTransaction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)[",
            "Lcom/riotgames/payments/iap/PurchaseTransaction;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 363
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/riotgames/payments/iap/PurchaseTransaction;

    const/4 v1, 0x0

    .line 365
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 366
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0, v2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toPurchaseTransaction(Lcom/android/billingclient/api/Purchase;)Lcom/riotgames/payments/iap/PurchaseTransaction;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public consume(Ljava/lang/String;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Play consuming token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay-mobile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/riotgames/payments/iap/google/GooglePlayClient$3;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient$3;-><init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->userIdentifier:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    return-void
.end method

.method protected init()V
    .locals 1

    .line 45
    new-instance v0, Lcom/riotgames/payments/iap/google/GooglePlayClient$1;

    invoke-direct {v0, p0}, Lcom/riotgames/payments/iap/google/GooglePlayClient$1;-><init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$checkPurchases$1$com-riotgames-payments-iap-google-GooglePlayClient(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$purchase$0$com-riotgames-payments-iap-google-GooglePlayClient(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    const-string v0, "Google Play purchase acknowledged with: "

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->logResult(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->checkPurchases()V

    return-void
.end method

.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Google Play consume response: "

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->logResult(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->onConsumeResponse(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    return-void
.end method

.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Google Play product details: "

    .line 383
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->logResult(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toProductListResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->onProductsRequestResponse(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    :cond_0
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Google Play purchase updated with: "

    .line 122
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->logResult(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/16 p2, 0x66

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toBillingResponse(Lcom/android/billingclient/api/BillingResult;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->onPurchasesUpdated(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    goto :goto_1

    .line 127
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 128
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->toPurchaseResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->onPurchasesUpdated(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "pay-mobile"

    const-string v1, "Purchase is in the pending state"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 84
    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->userIdentifier:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    const-string v0, "inapp"

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/riotgames/payments/iap/google/GooglePlayClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/riotgames/payments/iap/google/GooglePlayClient$$ExternalSyntheticLambda0;-><init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 90
    invoke-direct {p0, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->getProductDetailsAndStartPurchase(Ljava/lang/String;)V

    return-void
.end method

.method public requestProducts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Play requesting products from Google with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay-mobile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/riotgames/payments/iap/google/GooglePlayClient$2;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient$2;-><init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/util/List;)V

    .line 79
    invoke-direct {p0, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;)V

    return-void
.end method
