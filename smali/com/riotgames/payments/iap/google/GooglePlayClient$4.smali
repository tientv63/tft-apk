.class Lcom/riotgames/payments/iap/google/GooglePlayClient$4;
.super Ljava/lang/Object;
.source "GooglePlayClient.java"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/payments/iap/google/GooglePlayClient;
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

    .line 149
    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$4;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$4;->this$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-static {p1}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$300(Lcom/riotgames/payments/iap/google/GooglePlayClient;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    invoke-static {p1, v0, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->access$400(Lcom/riotgames/payments/iap/google/GooglePlayClient;Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;)V

    :cond_0
    return-void
.end method
