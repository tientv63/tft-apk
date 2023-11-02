.class Lcom/riotgames/payments/iap/google/GooglePlayClient$6;
.super Ljava/lang/Object;
.source "GooglePlayClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/payments/iap/google/GooglePlayClient;->getProductDetailsAndStartPurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

.field final synthetic val$productIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$6;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    iput-object p2, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$6;->val$productIdentifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 189
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$6;->val$productIdentifier:Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    const-string v1, "inapp"

    .line 191
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    .line 195
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$6;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-static {v1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$000(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$6;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-static {v2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$500(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Lcom/android/billingclient/api/ProductDetailsResponseListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method
