.class Lcom/singular/sdk/internal/SingularInstance$5;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->logApi(Lcom/singular/sdk/internal/BaseApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;

.field final synthetic val$api:Lcom/singular/sdk/internal/BaseApi;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/BaseApi;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$5;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$5;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$5;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$5;->val$api:Lcom/singular/sdk/internal/BaseApi;

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->logApi(Lcom/singular/sdk/internal/BaseApi;)V

    return-void
.end method
