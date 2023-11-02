.class public Lcom/riotgames/foundation/API$Request$Builder;
.super Ljava/lang/Object;
.source "API.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/foundation/API$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bodyJSON(Ljava/lang/String;)Lcom/riotgames/foundation/API$Request$Builder;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/riotgames/foundation/API$Request$Builder;->body:Ljava/lang/String;

    const-string p1, "application/json"

    .line 129
    iput-object p1, p0, Lcom/riotgames/foundation/API$Request$Builder;->bodyContentType:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/riotgames/foundation/API$Request;
    .locals 8

    .line 189
    new-instance v7, Lcom/riotgames/foundation/API$Request;

    iget-object v1, p0, Lcom/riotgames/foundation/API$Request$Builder;->resource:Ljava/lang/String;

    iget-object v2, p0, Lcom/riotgames/foundation/API$Request$Builder;->method:Ljava/lang/String;

    iget-object v3, p0, Lcom/riotgames/foundation/API$Request$Builder;->headers:Ljava/util/Map;

    iget-object v4, p0, Lcom/riotgames/foundation/API$Request$Builder;->params:Ljava/util/Map;

    iget-object v5, p0, Lcom/riotgames/foundation/API$Request$Builder;->body:Ljava/lang/String;

    iget-object v6, p0, Lcom/riotgames/foundation/API$Request$Builder;->bodyContentType:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/riotgames/foundation/API$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public header(Ljava/lang/String;Ljava/lang/Object;)Lcom/riotgames/foundation/API$Request$Builder;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request$Builder;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/riotgames/foundation/API$Request$Builder;->headers:Ljava/util/Map;

    :cond_0
    if-nez p2, :cond_1

    .line 139
    iget-object p2, p0, Lcom/riotgames/foundation/API$Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public method(Lcom/riotgames/foundation/API$Method;)Lcom/riotgames/foundation/API$Request$Builder;
    .locals 0

    .line 147
    invoke-virtual {p1}, Lcom/riotgames/foundation/API$Method;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/riotgames/foundation/API$Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public methodString(Ljava/lang/String;)Lcom/riotgames/foundation/API$Request$Builder;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/riotgames/foundation/API$Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Lcom/riotgames/foundation/API$Request$Builder;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request$Builder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/riotgames/foundation/API$Request$Builder;->params:Ljava/util/Map;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request$Builder;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/riotgames/foundation/API$Request$Builder;->params:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public paramSet(Ljava/lang/String;Ljava/util/List;)Lcom/riotgames/foundation/API$Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/riotgames/foundation/API$Request$Builder;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request$Builder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/riotgames/foundation/API$Request$Builder;->params:Ljava/util/Map;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/riotgames/foundation/API$Request$Builder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public params(Ljava/util/Map;)Lcom/riotgames/foundation/API$Request$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/riotgames/foundation/API$Request$Builder;"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/riotgames/foundation/API$Request$Builder;->params:Ljava/util/Map;

    return-object p0
.end method

.method public resource(Ljava/lang/String;)Lcom/riotgames/foundation/API$Request$Builder;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/riotgames/foundation/API$Request$Builder;->resource:Ljava/lang/String;

    return-object p0
.end method
