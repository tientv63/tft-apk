.class public Lcom/singular/sdk/SingularLinkParams;
.super Ljava/lang/Object;
.source "SingularLinkParams.java"


# instance fields
.field private deeplink:Ljava/lang/String;

.field private isDeferred:Z

.field private passthrough:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/singular/sdk/SingularLinkParams;->deeplink:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/singular/sdk/SingularLinkParams;->passthrough:Ljava/lang/String;

    .line 11
    iput-boolean p3, p0, Lcom/singular/sdk/SingularLinkParams;->isDeferred:Z

    return-void
.end method


# virtual methods
.method public getDeeplink()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/singular/sdk/SingularLinkParams;->deeplink:Ljava/lang/String;

    return-object v0
.end method

.method public getPassthrough()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/singular/sdk/SingularLinkParams;->passthrough:Ljava/lang/String;

    return-object v0
.end method

.method public isDeferred()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/singular/sdk/SingularLinkParams;->isDeferred:Z

    return v0
.end method
