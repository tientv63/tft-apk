.class Lcom/singular/sdk/internal/ConfigManager$1;
.super Ljava/lang/Object;
.source "ConfigManager.java"

# interfaces
.implements Lcom/singular/sdk/internal/ConfigManagerRepo$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ConfigManager;->init(Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$completionHandler:Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;

.field final synthetic val$localRepo:Lcom/singular/sdk/internal/ConfigManagerRepo;

.field final synthetic val$remoteRepo:Lcom/singular/sdk/internal/ConfigManagerRepo;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/singular/sdk/internal/ConfigManager$1;->val$localRepo:Lcom/singular/sdk/internal/ConfigManagerRepo;

    iput-object p2, p0, Lcom/singular/sdk/internal/ConfigManager$1;->val$remoteRepo:Lcom/singular/sdk/internal/ConfigManagerRepo;

    iput-object p3, p0, Lcom/singular/sdk/internal/ConfigManager$1;->val$completionHandler:Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/singular/sdk/internal/SLRemoteConfiguration;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$1;->val$localRepo:Lcom/singular/sdk/internal/ConfigManagerRepo;

    iget-object v1, p0, Lcom/singular/sdk/internal/ConfigManager$1;->val$remoteRepo:Lcom/singular/sdk/internal/ConfigManagerRepo;

    iget-object v2, p0, Lcom/singular/sdk/internal/ConfigManager$1;->val$completionHandler:Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;

    invoke-static {v0, v1, p1, v2}, Lcom/singular/sdk/internal/ConfigManager;->access$000(Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/SLRemoteConfiguration;Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;)V

    return-void
.end method

.method public onError()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/singular/sdk/internal/ConfigManager$1;->val$localRepo:Lcom/singular/sdk/internal/ConfigManagerRepo;

    iget-object v1, p0, Lcom/singular/sdk/internal/ConfigManager$1;->val$remoteRepo:Lcom/singular/sdk/internal/ConfigManagerRepo;

    iget-object v2, p0, Lcom/singular/sdk/internal/ConfigManager$1;->val$completionHandler:Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/singular/sdk/internal/ConfigManager;->access$000(Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/SLRemoteConfiguration;Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;)V

    return-void
.end method
