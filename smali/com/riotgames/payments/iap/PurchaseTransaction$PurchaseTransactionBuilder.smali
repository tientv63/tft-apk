.class public final Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
.super Ljava/lang/Object;
.source "PurchaseTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/payments/iap/PurchaseTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseTransactionBuilder"
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
.method private constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 66
    iput-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->transactionId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->packageName:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->productId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 69
    iput-wide v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->purchaseTime:J

    .line 70
    iput-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->purchaseToken:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->signature:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->originalJson:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->developerPayload:Ljava/lang/String;

    .line 74
    iput-wide v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->virtualAmount:J

    return-void
.end method

.method public static aTransaction()Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 1

    .line 80
    new-instance v0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;

    invoke-direct {v0}, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/riotgames/payments/iap/PurchaseTransaction;
    .locals 3

    .line 126
    new-instance v0, Lcom/riotgames/payments/iap/PurchaseTransaction;

    invoke-direct {v0}, Lcom/riotgames/payments/iap/PurchaseTransaction;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->signature:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction;->access$002(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->transactionId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction;->access$102(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction;->access$202(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->purchaseToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction;->access$302(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->productId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction;->access$402(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    iget-wide v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->purchaseTime:J

    invoke-static {v0, v1, v2}, Lcom/riotgames/payments/iap/PurchaseTransaction;->access$502(Lcom/riotgames/payments/iap/PurchaseTransaction;J)J

    .line 133
    iget-object v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->originalJson:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction;->access$602(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->developerPayload:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/PurchaseTransaction;->access$702(Lcom/riotgames/payments/iap/PurchaseTransaction;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-wide v1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->virtualAmount:J

    invoke-static {v0, v1, v2}, Lcom/riotgames/payments/iap/PurchaseTransaction;->access$802(Lcom/riotgames/payments/iap/PurchaseTransaction;J)J

    return-object v0
.end method

.method public withDeveloperPayload(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->developerPayload:Ljava/lang/String;

    return-object p0
.end method

.method public withOriginalJson(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->originalJson:Ljava/lang/String;

    return-object p0
.end method

.method public withPackageName(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public withProductId(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public withPurchaseTime(J)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->purchaseTime:J

    return-object p0
.end method

.method public withPurchaseToken(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->purchaseToken:Ljava/lang/String;

    return-object p0
.end method

.method public withSignature(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public withTransactionId(Ljava/lang/String;)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->transactionId:Ljava/lang/String;

    return-object p0
.end method

.method public withVirtualAmount(J)Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;
    .locals 0

    .line 121
    iput-wide p1, p0, Lcom/riotgames/payments/iap/PurchaseTransaction$PurchaseTransactionBuilder;->virtualAmount:J

    return-object p0
.end method
