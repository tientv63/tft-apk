.class public final synthetic Lcom/riotgames/payments/iap/google/GooglePlayClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;


# direct methods
.method public synthetic constructor <init>(Lcom/riotgames/payments/iap/google/GooglePlayClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$$ExternalSyntheticLambda0;->f$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/riotgames/payments/iap/google/GooglePlayClient$$ExternalSyntheticLambda0;->f$0:Lcom/riotgames/payments/iap/google/GooglePlayClient;

    invoke-virtual {v0, p1, p2}, Lcom/riotgames/payments/iap/google/GooglePlayClient;->lambda$purchase$0$com-riotgames-payments-iap-google-GooglePlayClient(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
