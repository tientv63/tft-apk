.class public Lcom/riotgames/foundation/API$Request;
.super Ljava/lang/Object;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/foundation/API;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/foundation/API$Request$Builder;
    }
.end annotation


# instance fields
.field private body:Ljava/lang/String;

.field private bodyContentType:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private resource:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/riotgames/foundation/API$Request;->resource:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/riotgames/foundation/API$Request;->method:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/riotgames/foundation/API$Request;->headers:Ljava/util/Map;

    .line 112
    iput-object p4, p0, Lcom/riotgames/foundation/API$Request;->params:Ljava/util/Map;

    .line 113
    iput-object p5, p0, Lcom/riotgames/foundation/API$Request;->body:Ljava/lang/String;

    .line 114
    iput-object p6, p0, Lcom/riotgames/foundation/API$Request;->bodyContentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request;->bodyContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request;->resource:Ljava/lang/String;

    return-object v0
.end method
