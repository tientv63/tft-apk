.class Lcom/singular/sdk/internal/SingularInstance$10;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->sendTrackingOptIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;

.field final synthetic val$self:Lcom/singular/sdk/internal/SingularInstance;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$10;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$10;->val$self:Lcom/singular/sdk/internal/SingularInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 525
    new-instance v0, Lcom/singular/sdk/internal/ApiGDPRConsent;

    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/singular/sdk/internal/ApiGDPRConsent;-><init>(J)V

    .line 526
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$10;->val$self:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {v1}, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;->build(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiGDPRConsent$Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/BaseApi;->addParams(Ljava/util/Map;)V

    .line 527
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$10;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularInstance;->logApi(Lcom/singular/sdk/internal/BaseApi;)V

    return-void
.end method
