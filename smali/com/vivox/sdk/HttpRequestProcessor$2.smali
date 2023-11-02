.class Lcom/vivox/sdk/HttpRequestProcessor$2;
.super Ljava/lang/Object;
.source "HttpRequestProcessor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivox/sdk/HttpRequestProcessor;->process(ILcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivox/sdk/HttpRequestProcessor;

.field final synthetic val$request:Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;


# direct methods
.method constructor <init>(Lcom/vivox/sdk/HttpRequestProcessor;Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/vivox/sdk/HttpRequestProcessor$2;->this$0:Lcom/vivox/sdk/HttpRequestProcessor;

    iput-object p2, p0, Lcom/vivox/sdk/HttpRequestProcessor$2;->val$request:Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor$2;->this$0:Lcom/vivox/sdk/HttpRequestProcessor;

    iget-object v1, p0, Lcom/vivox/sdk/HttpRequestProcessor$2;->val$request:Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;

    invoke-static {v0, v1}, Lcom/vivox/sdk/HttpRequestProcessor;->access$200(Lcom/vivox/sdk/HttpRequestProcessor;Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Lcom/vivox/sdk/HttpRequestProcessor$2;->call()Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    move-result-object v0

    return-object v0
.end method
