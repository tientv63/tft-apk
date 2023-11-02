.class public Lcom/riotgames/foundation/API$ApiException;
.super Ljava/lang/Exception;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/foundation/API;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiException"
.end annotation


# instance fields
.field private code:I

.field private details:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    iput p1, p0, Lcom/riotgames/foundation/API$ApiException;->code:I

    .line 41
    iput-object p2, p0, Lcom/riotgames/foundation/API$ApiException;->details:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/riotgames/foundation/API$ApiException;->code:I

    return v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/riotgames/foundation/API$ApiException;->details:Ljava/lang/String;

    return-object v0
.end method
