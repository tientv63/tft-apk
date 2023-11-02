.class public Lcom/riotgames/payments/iap/PurchaseTransaction;
.super Ljava/lang/Object;
.source "PurchaseTransaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    }
.end annotation


# instance fields
.field private developerPayload:Ljava/lang/String;

.field private originalJson:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private purchaseTime:J

.field private purchaseToken:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;

.field private virtualAmount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->signature:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->transactionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->purchaseToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->productId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/riotgames/payments/iap/PurchaseTransaction;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->purchaseTime:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->originalJson:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->developerPayload:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/riotgames/payments/iap/PurchaseTransaction;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->virtualAmount:J

    return-wide p1
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->originalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->purchaseTime:J

    return-wide v0
.end method

.method public getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualAmount()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->virtualAmount:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseTransaction{transactionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", productId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->productId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", purchaseTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->purchaseTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", purchaseToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", signature=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->signature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", originalJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->originalJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", developerPayload=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->developerPayload:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", virtualAmount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/riotgames/payments/iap/PurchaseTransaction;->virtualAmount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
