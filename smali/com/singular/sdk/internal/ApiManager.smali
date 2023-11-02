.class public Lcom/singular/sdk/internal/ApiManager;
.super Ljava/lang/Object;
.source "ApiManager.java"


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# instance fields
.field final context:Landroid/content/Context;

.field final migrateEventsFromFileQueue:Ljava/lang/Runnable;

.field private queue:Lcom/singular/sdk/internal/Queue;

.field final runnable:Ljava/lang/Runnable;

.field private worker:Lcom/singular/sdk/internal/SingularWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ApiManager"

    .line 30
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/ApiManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void
.end method

.method public constructor <init>(Lcom/singular/sdk/internal/SingularWorkerThread;Landroid/content/Context;Lcom/singular/sdk/internal/Queue;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/singular/sdk/internal/ApiManager$3;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/ApiManager$3;-><init>(Lcom/singular/sdk/internal/ApiManager;)V

    iput-object v0, p0, Lcom/singular/sdk/internal/ApiManager;->runnable:Ljava/lang/Runnable;

    .line 173
    new-instance v0, Lcom/singular/sdk/internal/ApiManager$4;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/ApiManager$4;-><init>(Lcom/singular/sdk/internal/ApiManager;)V

    iput-object v0, p0, Lcom/singular/sdk/internal/ApiManager;->migrateEventsFromFileQueue:Ljava/lang/Runnable;

    .line 40
    iput-object p2, p0, Lcom/singular/sdk/internal/ApiManager;->context:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/singular/sdk/internal/ApiManager;->queue:Lcom/singular/sdk/internal/Queue;

    if-nez p3, :cond_0

    return-void

    .line 48
    :cond_0
    sget-object p2, Lcom/singular/sdk/internal/ApiManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Queue: %s"

    invoke-virtual {p2, p3, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    if-nez p1, :cond_1

    return-void

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiManager;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    .line 55
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularWorkerThread;->start()V

    return-void
.end method

.method static synthetic access$000()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 28
    sget-object v0, Lcom/singular/sdk/internal/ApiManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/singular/sdk/internal/ApiManager;)Lcom/singular/sdk/internal/Queue;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/singular/sdk/internal/ApiManager;->queue:Lcom/singular/sdk/internal/Queue;

    return-object p0
.end method

.method private enrichRequestFromSingularInstance(Lcom/singular/sdk/internal/BaseApi;)V
    .locals 3

    .line 117
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getGlobalPropertiesJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "global_properties"

    invoke-virtual {p1, v2, v1}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    :cond_0
    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getLimitDataSharing()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/singular/sdk/internal/ApiManager$2;

    invoke-direct {v2, p0, v0}, Lcom/singular/sdk/internal/ApiManager$2;-><init>(Lcom/singular/sdk/internal/ApiManager;Ljava/lang/Boolean;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 130
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data_sharing_options"

    invoke-virtual {p1, v1, v0}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method enqueue(Lcom/singular/sdk/internal/BaseApi;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiManager;->queue:Lcom/singular/sdk/internal/Queue;

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    instance-of v0, p1, Lcom/singular/sdk/internal/ApiGDPRConsent;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/singular/sdk/internal/ApiGDPRUnder13;

    if-nez v0, :cond_1

    const-string v0, "event_index"

    .line 98
    iget-object v1, p0, Lcom/singular/sdk/internal/ApiManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->getEventIndex(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v0, "singular_install_id"

    .line 101
    iget-object v1, p0, Lcom/singular/sdk/internal/ApiManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->getSingularId(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/ApiManager;->enrichRequestFromSingularInstance(Lcom/singular/sdk/internal/BaseApi;)V

    .line 106
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiManager;->queue:Lcom/singular/sdk/internal/Queue;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/BaseApi;->toJsonAsString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/singular/sdk/internal/Queue;->add(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/singular/sdk/internal/ApiManager;->wakeUp()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 112
    sget-object v0, Lcom/singular/sdk/internal/ApiManager;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "error in enqueue()"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method tryMigrateEventsFromFileQueue()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiManager;->queue:Lcom/singular/sdk/internal/Queue;

    instance-of v0, v0, Lcom/singular/sdk/internal/SQLitePersistentQueue;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiManager;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    iget-object v1, p0, Lcom/singular/sdk/internal/ApiManager;->migrateEventsFromFileQueue:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularWorkerThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method tryMigrateEventsFromOldSQLiteQueue()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiManager;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    new-instance v1, Lcom/singular/sdk/internal/ApiManager$1;

    invoke-direct {v1, p0}, Lcom/singular/sdk/internal/ApiManager$1;-><init>(Lcom/singular/sdk/internal/ApiManager;)V

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularWorkerThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method wakeUp()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiManager;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularWorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiManager;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    iget-object v1, p0, Lcom/singular/sdk/internal/ApiManager;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularWorkerThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
