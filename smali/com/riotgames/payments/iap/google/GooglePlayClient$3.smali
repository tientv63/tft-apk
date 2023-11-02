.class Lcom/riotgames/payments/iap/google/GooglePlayClient$3;
.super Ljava/lang/Object;
.source "GooglePlayClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/payments/iap/google/GooglePlayClient;->consume(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

.field final synthetic val$purchaseToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$3;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    iput-object p2, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$3;->val$purchaseToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$3;->val$purchaseToken:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$3;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-static {v1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$000(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iget-object v2, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$3;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method
