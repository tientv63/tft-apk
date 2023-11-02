.class Lcom/riotgames/payments/iap/google/GooglePlayClient$1;
.super Ljava/lang/Object;
.source "GooglePlayClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/payments/iap/google/GooglePlayClient;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;


# direct methods
.method constructor <init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$1;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$1;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-static {v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$100(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$1;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$002(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/android/billingclient/api/BillingClient;)Lcom/android/billingclient/api/BillingClient;

    .line 52
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$1;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$200(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/Runnable;)V

    return-void
.end method
