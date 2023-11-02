.class Lcom/riotgames/payments/iap/google/GooglePlayClient$5;
.super Ljava/lang/Object;
.source "GooglePlayClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/payments/iap/google/GooglePlayClient;->startPurchaseFlow(Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$productDetails:Lcom/android/billingclient/api/ProductDetails;

.field final synthetic val$userIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    iput-object p2, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;->val$productDetails:Lcom/android/billingclient/api/ProductDetails;

    iput-object p3, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;->val$userIdentifier:Ljava/lang/String;

    iput-object p4, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;->val$productDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 170
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    .line 174
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;->val$userIdentifier:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-static {v1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$000(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method
