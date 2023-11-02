.class Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;
.super Ljava/lang/Object;
.source "NewPlayReferrerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->onInstallReferrerSetupFinished(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;I)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->this$0:Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

    iput p2, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->val$responseCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget v0, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->val$responseCode:I

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->this$0:Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

    iget-object v1, v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->access$100(Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    invoke-static {}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "onInstallReferrerSetupFinished: failed to get referrer value"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 70
    invoke-static {}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "onInstallReferrerSetupFinished: SERVICE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->this$0:Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

    iget-object v1, v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->access$200(Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 73
    iget-object v0, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->this$0:Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

    iget-object v1, v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->access$200(Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "onInstallReferrerSetupFinished: FEATURE_NOT_SUPPORTED"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->this$0:Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

    iget-object v1, v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->access$200(Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    const-string v1, "onInstallReferrerSetupFinished: DEVELOPER_ERROR"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    .line 79
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->this$0:Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 81
    iget-object v0, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->this$0:Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;->this$0:Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    :cond_4
    return-void
.end method
