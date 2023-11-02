.class public Lcom/riotgames/payments/iap/InAppPurchaseResponse;
.super Ljava/lang/Object;
.source "InAppPurchaseResponse.java"


# instance fields
.field private pendingTransactions:[Lcom/riotgames/payments/iap/PurchaseTransaction;

.field private products:[Lcom/riotgames/payments/iap/Product;

.field private purchaseToken:Ljava/lang/String;

.field private final responseCode:I

.field private final responseMessage:Ljava/lang/String;

.field private transaction:Lcom/riotgames/payments/iap/PurchaseTransaction;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->responseCode:I

    .line 15
    iput-object p2, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->responseMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPendingTransactions()[Lcom/riotgames/payments/iap/PurchaseTransaction;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->pendingTransactions:[Lcom/riotgames/payments/iap/PurchaseTransaction;

    return-object v0
.end method

.method public getProducts()[Lcom/riotgames/payments/iap/Product;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->products:[Lcom/riotgames/payments/iap/Product;

    return-object v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->responseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction()Lcom/riotgames/payments/iap/PurchaseTransaction;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->transaction:Lcom/riotgames/payments/iap/PurchaseTransaction;

    return-object v0
.end method

.method public setPendingTransactions([Lcom/riotgames/payments/iap/PurchaseTransaction;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->pendingTransactions:[Lcom/riotgames/payments/iap/PurchaseTransaction;

    return-void
.end method

.method public setProducts([Lcom/riotgames/payments/iap/Product;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->products:[Lcom/riotgames/payments/iap/Product;

    return-void
.end method

.method public setPurchaseToken(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->purchaseToken:Ljava/lang/String;

    return-void
.end method

.method public setTransaction(Lcom/riotgames/payments/iap/PurchaseTransaction;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->transaction:Lcom/riotgames/payments/iap/PurchaseTransaction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppPurchaseResponse{responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->responseMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", transaction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->transaction:Lcom/riotgames/payments/iap/PurchaseTransaction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pendingTransactions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->pendingTransactions:[Lcom/riotgames/payments/iap/PurchaseTransaction;

    .line 64
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", products="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->products:[Lcom/riotgames/payments/iap/Product;

    .line 65
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", purchaseToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/InAppPurchaseResponse;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
