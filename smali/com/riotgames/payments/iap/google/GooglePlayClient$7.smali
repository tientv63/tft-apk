.class Lcom/riotgames/payments/iap/google/GooglePlayClient$7;
.super Ljava/lang/Object;
.source "GooglePlayClient.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/payments/iap/google/GooglePlayClient;->startServiceConnectionIfNeeded(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

.field final synthetic val$executeOnSuccess:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    iput-object p2, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;->val$executeOnSuccess:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "pay-mobile"

    const-string v1, "Google Play disconnected!"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 218
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    const-string v1, "Google Play initialized."

    invoke-static {v0, p1, v1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$600(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;->val$executeOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-static {v1, v0}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$700(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/Runnable;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-static {v0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$800(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/android/billingclient/api/BillingResult;)Lcom/riotgames/payments/iap/InAppPurchaseResponse;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$900(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/riotgames/payments/iap/InAppPurchaseResponse;)V

    .line 224
    iget-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-static {p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$1000(Lcom/riotgames/payments/iap/google/GooglePlayClient;)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$7;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    const-string v1, "Failed to initialize Google Play"

    invoke-static {v0, p1, v1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$600(Lcom/riotgames/payments/iap/google/GooglePlayClient;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
