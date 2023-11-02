.class Lcom/vivox/sdk/HttpRequestProcessor$1;
.super Ljava/util/HashSet;
.source "HttpRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/HttpRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "socks4"

    .line 204
    invoke-virtual {p0, v0}, Lcom/vivox/sdk/HttpRequestProcessor$1;->add(Ljava/lang/Object;)Z

    const-string v0, "socks4a"

    .line 205
    invoke-virtual {p0, v0}, Lcom/vivox/sdk/HttpRequestProcessor$1;->add(Ljava/lang/Object;)Z

    const-string v0, "socks5"

    .line 206
    invoke-virtual {p0, v0}, Lcom/vivox/sdk/HttpRequestProcessor$1;->add(Ljava/lang/Object;)Z

    const-string v0, "socks5h"

    .line 207
    invoke-virtual {p0, v0}, Lcom/vivox/sdk/HttpRequestProcessor$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
