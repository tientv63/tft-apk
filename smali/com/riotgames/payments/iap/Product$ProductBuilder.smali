.class public final Lcom/riotgames/payments/iap/Product$ProductBuilder;
.super Ljava/lang/Object;
.source "Product.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/payments/iap/Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductBuilder"
.end annotation


# instance fields
.field private amountInCents:J

.field private description:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private priceCurrencyCode:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aProduct()Lcom/riotgames/payments/iap/Product$ProductBuilder;
    .locals 1

    .line 67
    new-instance v0, Lcom/riotgames/payments/iap/Product$ProductBuilder;

    invoke-direct {v0}, Lcom/riotgames/payments/iap/Product$ProductBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/riotgames/payments/iap/Product;
    .locals 3

    .line 106
    new-instance v0, Lcom/riotgames/payments/iap/Product;

    invoke-direct {v0}, Lcom/riotgames/payments/iap/Product;-><init>()V

    .line 107
    iget-wide v1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->amountInCents:J

    invoke-static {v0, v1, v2}, Lcom/riotgames/payments/iap/Product;->access$002(Lcom/riotgames/payments/iap/Product;J)J

    .line 108
    iget-object v1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->description:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/Product;->access$102(Lcom/riotgames/payments/iap/Product;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->productId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/Product;->access$202(Lcom/riotgames/payments/iap/Product;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->priceCurrencyCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/Product;->access$302(Lcom/riotgames/payments/iap/Product;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/Product;->access$402(Lcom/riotgames/payments/iap/Product;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->price:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/Product;->access$502(Lcom/riotgames/payments/iap/Product;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/riotgames/payments/iap/Product;->access$602(Lcom/riotgames/payments/iap/Product;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public withAmountInCents(J)Lcom/riotgames/payments/iap/Product$ProductBuilder;
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->amountInCents:J

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withPrice(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->price:Ljava/lang/String;

    return-object p0
.end method

.method public withPriceCurrencyCode(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->priceCurrencyCode:Ljava/lang/String;

    return-object p0
.end method

.method public withProductId(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public withType(Ljava/lang/String;)Lcom/riotgames/payments/iap/Product$ProductBuilder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/riotgames/payments/iap/Product$ProductBuilder;->type:Ljava/lang/String;

    return-object p0
.end method
