.class public Lcom/riotgames/payments/iap/samsung/SamsungIapClient;
.super Lcom/riotgames/payments/iap/InAppPurchaseClient;
.source "SamsungIapClient.java"

# interfaces
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnGetProductsDetailsListener;
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnPaymentListener;
.implements Lcom/samsung/android/sdk/iap/lib/listener/OnConsumePurchasedItemsListener;


# instance fields
.field private mIapHelper:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

.field private productIdToPurchase:Ljava/lang/String;

.field private final purchasedIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/InAppPurchaseClient;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->mIapHelper:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    .line 36
    iput-object p1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->productIdToPurchase:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->purchasedIds:Ljava/util/List;

    return-void
.end method

.method private consumePurchaseId(Ljava/lang/String;)V
    .locals 1

    .line 201
    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->purchasedIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->purchasedIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->mIapHelper:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->consumePurchasedItems(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnConsumePurchasedItemsListener;)Z

    :cond_0
    return-void
.end method

.method private fromDollarsToCents(D)J
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    .line 228
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private logResult(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 334
    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toCompleteResponseMessage(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s : %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pay-mobile"

    .line 333
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private purchaseTimeStringToLong(Ljava/lang/String;)J
    .locals 5

    .line 342
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy.MM.dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    .line 346
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    div-long/2addr v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 349
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "Exception purchaseTimeStringToLong: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pay-mobile"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    :goto_0
    return-wide v3
.end method

.method private startPurchase()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->mIapHelper:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    iget-object v1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->productIdToPurchase:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->startPayment(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/iap/lib/listener/OnPaymentListener;)Z

    .line 98
    iput-object v2, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->productIdToPurchase:Ljava/lang/String;

    return-void
.end method

.method private toCompleteResponseMessage(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 338
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%d : %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toConsumeResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1

    const/16 v0, 0x68

    .line 303
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toIapResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    .line 304
    invoke-direct {p0, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p1, p2}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->setPurchaseToken(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private toIapResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1

    .line 329
    new-instance v0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toIapResponseCode(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;I)I

    move-result p2

    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toCompleteResponseMessage(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private toIapResponseCode(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;I)I
    .locals 2

    .line 252
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result p1

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_5

    const/16 v0, -0x3ea

    if-eq p1, v0, :cond_5

    const/16 v0, -0x3e9

    const/4 v1, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

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
    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x5

    return p1

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
    :pswitch_4
    return v1

    :cond_5
    :pswitch_5
    const/16 p1, 0xb

    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x3f5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toProduct(Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;)Lcom/riotgames/payments/iap/Product;
    .locals 3

    .line 216
    invoke-static {}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->aProduct()Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withDescription(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemPriceString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withPrice(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 219
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemPrice()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->fromDollarsToCents(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withAmountInCents(J)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 220
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withPriceCurrencyCode(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withProductId(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withTitle(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->withType(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/riotgames/payments/iap/Product$ProductBuilder;->build()Lcom/riotgames/payments/iap/Product;

    move-result-object p1

    return-object p1
.end method

.method private toProductArray(Ljava/util/ArrayList;)[Lcom/riotgames/payments/iap/Product;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;",
            ">;)[",
            "Lcom/riotgames/payments/iap/Product;"
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/riotgames/payments/iap/Product;

    const/4 v1, 0x0

    .line 209
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 210
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;

    invoke-direct {p0, v2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toProduct(Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;)Lcom/riotgames/payments/iap/Product;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toProductListResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/util/ArrayList;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;",
            ">;)",
            "Lcom/riotgames/payments/iap/InAppPurchaseResponse;"
        }
    .end annotation

    const/16 v0, 0x67

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toIapResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 296
    invoke-direct {p0, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toProductArray(Ljava/util/ArrayList;)[Lcom/riotgames/payments/iap/Product;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->setProducts([Lcom/riotgames/payments/iap/Product;)V

    :cond_0
    return-object p1
.end method

.method private toPurchaseResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1

    const/16 v0, 0x66

    .line 321
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toIapResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 323
    invoke-direct {p0, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toPurchaseTransaction(Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;)Lcom/riotgames/payments/iap/PurchaseTransaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->setTransaction(Lcom/riotgames/payments/iap/PurchaseTransaction;)V

    :cond_0
    return-object p1
.end method

.method private toPurchaseResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;
    .locals 1

    const/16 v0, 0x66

    .line 312
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toIapResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;I)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 314
    invoke-direct {p0, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toPurchaseTransaction(Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;)Lcom/riotgames/payments/iap/PurchaseTransaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->setTransaction(Lcom/riotgames/payments/iap/PurchaseTransaction;)V

    :cond_0
    return-object p1
.end method

.method private toPurchaseTransaction(Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;)Lcom/riotgames/payments/iap/PurchaseTransaction;
    .locals 3

    .line 242
    invoke-static {}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->aTransaction()Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPaymentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withTransactionId(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withProductId(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPurchaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->purchaseTimeStringToLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withPurchaseTime(J)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 246
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPurchaseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withPurchaseToken(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withOriginalJson(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->build()Lcom/riotgames/payments/iap/PurchaseTransaction;

    move-result-object p1

    return-object p1
.end method

.method private toPurchaseTransaction(Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;)Lcom/riotgames/payments/iap/PurchaseTransaction;
    .locals 3

    .line 232
    invoke-static {}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->aTransaction()Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPaymentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withTransactionId(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 234
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withProductId(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 235
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPurchaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->purchaseTimeStringToLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withPurchaseTime(J)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPurchaseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withPurchaseToken(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->withOriginalJson(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->build()Lcom/riotgames/payments/iap/PurchaseTransaction;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public consume(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Requesting Consume from Samsung, purchaseId: %s"

    .line 86
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pay-mobile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->consumePurchaseId(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method protected init()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->init(Z)V

    return-void
.end method

.method protected init(Z)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->mIapHelper:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    if-eqz p1, :cond_0

    .line 52
    sget-object p1, Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;->OPERATION_MODE_TEST:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->setOperationMode(Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;->OPERATION_MODE_PRODUCTION:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->setOperationMode(Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;)V

    .line 57
    :goto_0
    new-instance p1, Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    const/4 v0, 0x1

    const-string v1, "Samsung IAP initialized."

    invoke-direct {p1, v0, v1}, Lcom/riotgames/payments/iap/InAppPurchaseResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->onClientInitialized(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    .line 60
    iget-object p1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->mIapHelper:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    const-string v0, "item"

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getOwnedList(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;)Z

    return-void
.end method

.method public onConsumePurchasedItems(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/ConsumeVo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pay-mobile"

    if-nez p1, :cond_0

    const-string p1, "onConsumePurchasedItems: null response from Samsung"

    .line 161
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "onConsumePurchasedItems: null consumeList from Samsung"

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->logResult(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "onCosumePurchaseItems from Samsung"

    .line 170
    invoke-direct {p0, p1, v1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->logResult(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v1

    if-nez v1, :cond_4

    .line 173
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/iap/lib/vo/ConsumeVo;

    .line 174
    invoke-virtual {v1}, Lcom/samsung/android/sdk/iap/lib/vo/ConsumeVo;->getPurchaseId()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v1}, Lcom/samsung/android/sdk/iap/lib/vo/ConsumeVo;->getStatusCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 177
    iget-object v1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->purchasedIds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 180
    iget-object v3, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->purchasedIds:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 184
    invoke-virtual {v1}, Lcom/samsung/android/sdk/iap/lib/vo/ConsumeVo;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/iap/lib/vo/ConsumeVo;->getStatusString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Consume Failed: %d : %s"

    .line 183
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_3
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toConsumeResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->onConsumeResponse(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toConsumeResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->onConsumeResponse(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    .line 193
    :cond_5
    iget-object p1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->purchasedIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 195
    iget-object p1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->productIdToPurchase:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 196
    invoke-direct {p0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->startPurchase()V

    :cond_6
    return-void
.end method

.method public onGetOwnedProducts(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "pay-mobile"

    const-string p2, "onGetOwnedProducts: null response from Samsung"

    .line 104
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "onGetOwnedProducts: null ownedList from Samsung"

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->logResult(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "onGetOwndProducts from Samsung"

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->logResult(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 116
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toPurchaseResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->onPurchasesUpdated(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->productIdToPurchase:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 122
    invoke-direct {p0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->startPurchase()V

    :cond_3
    return-void
.end method

.method public onGetProducts(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "pay-mobile"

    const-string p2, "onGetProducts: null response from Samsung"

    .line 129
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "onGetProducts: null productList from Samsung"

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->logResult(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)V

    :cond_1
    const-string v0, "onGetProducts from Samsung"

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->logResult(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toProductListResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/util/ArrayList;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->onProductsRequestResponse(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    return-void
.end method

.method public onPayment(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "pay-mobile"

    const-string p2, "onPayment: null response from Samsung"

    .line 145
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "onPayment: null purchaseVo from Samsung"

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->logResult(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)V

    :cond_1
    const-string v0, "onPayment from Samsung"

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->logResult(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->toPurchaseResponse(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->onPurchasesUpdated(Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    return-void
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string v0, "Requesting Purchase from Samsung, productId: %s"

    .line 72
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pay-mobile"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p2, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->productIdToPurchase:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->mIapHelper:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    const-string p2, "item"

    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getOwnedList(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;)Z

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

    const-string v0, "pay-mobile"

    const-string v1, "Requesting Products from Samsung"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/riotgames/payments/iap/samsung/SamsungIapClient;->mIapHelper:Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getProductsDetails(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnGetProductsDetailsListener;)V

    return-void
.end method
