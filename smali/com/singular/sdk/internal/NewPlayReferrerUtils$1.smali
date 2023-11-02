.class Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;
.super Ljava/lang/Object;
.source "NewPlayReferrerUtils.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/NewPlayReferrerUtils;->queryNewPlayReferrerValue(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p2, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->handleReferrerResponse(Lcom/android/installreferrer/api/InstallReferrerClient;)V

    return-void
.end method

.method static synthetic access$200(Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->handleNotSupported(Landroid/content/Context;)V

    return-void
.end method

.method private handleNotSupported(Landroid/content/Context;)V
    .locals 11

    .line 126
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->getCSIReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-string v1, "intent"

    .line 128
    invoke-static/range {v0 .. v10}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->access$300(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method private handleReferrerResponse(Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;->isV2Supported(Lcom/android/installreferrer/api/ReferrerDetails;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallVersion()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampServerSeconds()J

    move-result-wide v1

    .line 100
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampServerSeconds()J

    move-result-wide v3

    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v10

    .line 103
    :goto_0
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v5

    .line 106
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v7

    const-string v4, "service"

    .line 103
    invoke-static/range {v3 .. v13}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->access$300(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V

    return-void
.end method

.method private isV2Supported(Lcom/android/installreferrer/api/ReferrerDetails;)Z
    .locals 3

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getInstallVersion"

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 3

    .line 57
    invoke-static {}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInstallReferrerSetupFinished: responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    .line 59
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;

    invoke-direct {v1, p0, p1}, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1$1;-><init>(Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
