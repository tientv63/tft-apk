.class Lcom/singular/sdk/internal/SingularInstance$12;
.super Ljava/lang/Object;
.source "SingularInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/SingularInstance;->persistBoolean(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/SingularInstance;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;Z)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance$12;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance$12;->val$key:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/singular/sdk/internal/SingularInstance$12;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance$12;->this$0:Lcom/singular/sdk/internal/SingularInstance;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance$12;->val$key:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/singular/sdk/internal/SingularInstance$12;->val$value:Z

    invoke-static {v0, v1, v2}, Lcom/singular/sdk/internal/SingularInstance;->access$700(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;Z)V

    return-void
.end method
