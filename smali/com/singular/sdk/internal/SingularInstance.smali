.class public Lcom/singular/sdk/internal/SingularInstance;
.super Ljava/lang/Object;
.source "SingularInstance.java"


# static fields
.field private static final RETRY_DELAY_INTERVAL_MS:I = 0xc8

.field private static instance:Lcom/singular/sdk/internal/SingularInstance;

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;

.field private static retryCounter:I


# instance fields
.field private final apiManager:Lcom/singular/sdk/internal/ApiManager;

.field private config:Lcom/singular/sdk/SingularConfig;

.field private final context:Landroid/content/Context;

.field private deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

.field dtInstallReferrer:Ljava/lang/String;

.field private globalProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field installReferrer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private installReferrerTimeInterval:D

.field private isFirstInstall:Z

.field private sessionManager:Lcom/singular/sdk/internal/SessionManager;

.field private final worker:Lcom/singular/sdk/internal/SingularWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Instance"

    .line 37
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v0, 0x0

    .line 40
    sput v0, Lcom/singular/sdk/internal/SingularInstance;->retryCounter:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/singular/sdk/internal/SingularInstance;->initialized:Z

    .line 74
    iput-boolean v0, p0, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    .line 122
    sget-object v1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/singular/sdk/internal/Constants;->SDK_VERSION:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v4, "SDK version: %s"

    invoke-virtual {v1, v4, v3}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v3, v2, [Ljava/lang/Object;

    .line 123
    sget-object v4, Lcom/singular/sdk/internal/Constants;->SDK_BUILD_INFO:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v4, "SDK build info: %s"

    invoke-virtual {v1, v4, v3}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string v0, "new SingularInstance() with config: %s"

    .line 124
    invoke-virtual {v1, v0, v2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 132
    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    .line 134
    new-instance p2, Lcom/singular/sdk/internal/SingularWorkerThread;

    const-string/jumbo v0, "worker"

    invoke-direct {p2, v0}, Lcom/singular/sdk/internal/SingularWorkerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/singular/sdk/internal/SingularInstance;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    .line 135
    new-instance v0, Lcom/singular/sdk/internal/ApiManager;

    new-instance v1, Lcom/singular/sdk/internal/SingularWorkerThread;

    const-string v2, "api"

    invoke-direct {v1, v2}, Lcom/singular/sdk/internal/SingularWorkerThread;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/singular/sdk/internal/SQLitePersistentQueue;

    invoke-direct {v2, p1}, Lcom/singular/sdk/internal/SQLitePersistentQueue;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/singular/sdk/internal/ApiManager;-><init>(Lcom/singular/sdk/internal/SingularWorkerThread;Landroid/content/Context;Lcom/singular/sdk/internal/Queue;)V

    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->apiManager:Lcom/singular/sdk/internal/ApiManager;

    .line 137
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isFirstInstall(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    .line 140
    invoke-virtual {p2}, Lcom/singular/sdk/internal/SingularWorkerThread;->start()V

    .line 143
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->initGlobalProperties()V

    .line 146
    invoke-virtual {v0}, Lcom/singular/sdk/internal/ApiManager;->tryMigrateEventsFromFileQueue()V

    .line 147
    invoke-virtual {v0}, Lcom/singular/sdk/internal/ApiManager;->tryMigrateEventsFromOldSQLiteQueue()V

    .line 150
    new-instance p1, Lcom/singular/sdk/internal/SingularInstance$1;

    invoke-direct {p1, p0, p0}, Lcom/singular/sdk/internal/SingularInstance$1;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context failed to cast to ApplicationContext"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/SingularInstance;->init(Lcom/singular/sdk/internal/SingularInstance;)V

    return-void
.end method

.method static synthetic access$100(Lcom/singular/sdk/internal/SingularInstance;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 35
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0
.end method

.method static synthetic access$300()Lcom/singular/sdk/internal/SingularInstance;
    .locals 1

    .line 35
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    return-object v0
.end method

.method static synthetic access$400(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/singular/sdk/internal/SingularInstance;->apiManager:Lcom/singular/sdk/internal/ApiManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/singular/sdk/internal/SingularInstance;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    return p0
.end method

.method static synthetic access$600(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/SessionManager;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/singular/sdk/internal/SingularInstance;->saveBooleanToPref(Ljava/lang/String;Z)V

    return-void
.end method

.method public static getInstance()Lcom/singular/sdk/internal/SingularInstance;
    .locals 1

    .line 118
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/SingularInstance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    if-nez v0, :cond_1

    .line 91
    const-class v0, Lcom/singular/sdk/internal/SingularInstance;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    if-nez v1, :cond_0

    .line 94
    iget-boolean v1, p1, Lcom/singular/sdk/SingularConfig;->enableLogging:Z

    sput-boolean v1, Lcom/singular/sdk/internal/SingularLog;->ENABLE_LOGGING:Z

    .line 95
    iget v1, p1, Lcom/singular/sdk/SingularConfig;->logLevel:I

    sput v1, Lcom/singular/sdk/internal/SingularLog;->LOG_LEVEL:I

    .line 105
    new-instance v1, Lcom/singular/sdk/internal/SingularInstance;

    invoke-direct {v1, p0, p1}, Lcom/singular/sdk/internal/SingularInstance;-><init>(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)V

    sput-object v1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    .line 107
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 111
    :cond_1
    :goto_0
    sget-object p0, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    iput-object p1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    return-object p0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    const-string v1, "singular-pref-session"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private init(Lcom/singular/sdk/internal/SingularInstance;)V
    .locals 4

    .line 160
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Singular is already initialized, please don\'t call init() again."

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    return-void

    .line 168
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->fcmDeviceToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fcm_device_token_key"

    .line 169
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->fcmDeviceToken:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->saveDeviceToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->customUserId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->customUserId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->saveCustomUserId(Ljava/lang/String;)V

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->limitDataSharing:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->limitDataSharing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->limitDataSharing(Z)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->imei:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->imei:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->setIMEI(Ljava/lang/String;)V

    .line 185
    :cond_4
    new-instance v0, Lcom/singular/sdk/internal/DeviceInfo;

    iget-object v1, p1, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-boolean v2, v2, Lcom/singular/sdk/SingularConfig;->collectOAID:Z

    iget-object v3, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v3, v3, Lcom/singular/sdk/SingularConfig;->limitedIdentifiresEnabled:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Lcom/singular/sdk/internal/DeviceInfo;-><init>(Landroid/content/Context;ZLjava/lang/Boolean;)V

    iput-object v0, p1, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    .line 187
    new-instance v0, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/singular/sdk/internal/ConfigManagerRepoStorage;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;

    new-instance v2, Lcom/singular/sdk/internal/GeneralHttpService;

    invoke-direct {v2}, Lcom/singular/sdk/internal/GeneralHttpService;-><init>()V

    invoke-direct {v1, v2}, Lcom/singular/sdk/internal/ConfigManagerRepoNetwork;-><init>(Lcom/singular/sdk/internal/GeneralHttpServiceBase;)V

    new-instance v2, Lcom/singular/sdk/internal/SingularInstance$2;

    invoke-direct {v2, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$2;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-static {v0, v1, v2}, Lcom/singular/sdk/internal/ConfigManager;->init(Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManagerRepo;Lcom/singular/sdk/internal/ConfigManager$CompletionHandler;)V

    .line 211
    new-instance v0, Lcom/singular/sdk/internal/SessionManager;

    invoke-direct {v0, p1}, Lcom/singular/sdk/internal/SessionManager;-><init>(Lcom/singular/sdk/internal/SingularInstance;)V

    iput-object v0, p1, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/singular/sdk/internal/SingularInstance;->initialized:Z

    .line 216
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Singular is initialized now."

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->info(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 218
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "error in init()"

    invoke-virtual {v0, v1, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private initGlobalProperties()V
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->loadGlobalProperties()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    .line 225
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->globalProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 231
    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v1, v1, Lcom/singular/sdk/SingularConfig;->globalProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/singular/sdk/internal/SingularGlobalProperty;

    .line 232
    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularGlobalProperty;->isOverrideExisting()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    :cond_2
    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_4

    return-void

    .line 242
    :cond_4
    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    .line 243
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->saveGlobalProperties()V

    .line 246
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 247
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->clearGlobalProperties()V

    :cond_5
    return-void
.end method

.method private isSessionManagerInitialized()Z
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSessionManager()Lcom/singular/sdk/internal/SessionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private persistBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 591
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/singular/sdk/internal/SingularInstance$12;-><init>(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method private putGlobalProperty(Lcom/singular/sdk/internal/SingularGlobalProperty;)Z
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->isOverrideExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v1

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/singular/sdk/internal/SingularGlobalProperty;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method private saveBooleanToPref(Ljava/lang/String;Z)V
    .locals 1

    .line 601
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 603
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 604
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private saveDeviceToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 512
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 514
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 515
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private saveGlobalProperties()V
    .locals 3

    .line 664
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 669
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 670
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getGlobalPropertiesJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "global_properties"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 671
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public clearGlobalProperties()V
    .locals 1

    const/4 v0, 0x0

    .line 659
    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    .line 660
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->saveGlobalProperties()V

    return-void
.end method

.method public createReferrerShortLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/singular/sdk/ShortLinkHandler;)V
    .locals 1

    .line 708
    invoke-static {p1, p2, p3, p4}, Lcom/singular/sdk/internal/ReferrerLinkService;->validateRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Error sending request: could not validate request params"

    .line 709
    invoke-interface {p5, p1}, Lcom/singular/sdk/ShortLinkHandler;->onError(Ljava/lang/String;)V

    return-void

    .line 714
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/singular/sdk/internal/ReferrerLinkService;->unifyParamsToUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    invoke-static {p1, p5}, Lcom/singular/sdk/internal/ReferrerLinkService;->sendReferrerRequest(Ljava/lang/String;Lcom/singular/sdk/ShortLinkHandler;)V

    return-void

    :catch_0
    move-exception p1

    .line 719
    sget-object p2, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p3, "Error in JSON parsing "

    invoke-virtual {p2, p3, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Error sending request: could not unify params"

    .line 720
    invoke-interface {p5, p1}, Lcom/singular/sdk/ShortLinkHandler;->onError(Ljava/lang/String;)V

    return-void
.end method

.method fetchDTInstallReferrer()V
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->fetchDTReferrerDetails(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->dtInstallReferrer:Ljava/lang/String;

    return-void
.end method

.method fetchInstallReferrerAndSendSession(J)V
    .locals 3

    .line 393
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 394
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->fetchReferrerData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/singular/sdk/internal/SingularInstance;->installReferrer:Ljava/util/Map;

    .line 395
    invoke-static {v0, v1}, Lcom/singular/sdk/internal/Utils;->lagSince(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/singular/sdk/internal/SingularInstance;->installReferrerTimeInterval:D

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/singular/sdk/internal/SingularInstance;->startSession(J)V

    return-void
.end method

.method getApiManager()Lcom/singular/sdk/internal/ApiManager;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->apiManager:Lcom/singular/sdk/internal/ApiManager;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDTInstallReferrer()Ljava/lang/String;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->dtInstallReferrer:Ljava/lang/String;

    return-object v0
.end method

.method getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    return-object v0
.end method

.method public getGlobalProperties()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    return-object v0
.end method

.method public getGlobalPropertiesJSON()Lorg/json/JSONObject;
    .locals 2

    .line 616
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getInstallReferrer()Ljava/util/Map;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->installReferrer:Ljava/util/Map;

    return-object v0
.end method

.method public getInstallReferrerTimeInterval()D
    .locals 2

    .line 583
    iget-wide v0, p0, Lcom/singular/sdk/internal/SingularInstance;->installReferrerTimeInterval:D

    return-wide v0
.end method

.method public getIsFirstInstall()Z
    .locals 1

    .line 579
    iget-boolean v0, p0, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    return v0
.end method

.method public getLimitDataSharing()Ljava/lang/Boolean;
    .locals 3

    .line 561
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "limit_data_sharing"

    .line 563
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 567
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/singular/sdk/internal/SessionManager;->getSessionId()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method getSessionManager()Lcom/singular/sdk/internal/SessionManager;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    return-object v0
.end method

.method getSingularConfig()Lcom/singular/sdk/SingularConfig;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    return-object v0
.end method

.method public isAllTrackingStopped()Z
    .locals 3

    .line 553
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stop_all_tracking"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isInitialized()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/singular/sdk/internal/SingularInstance;->initialized:Z

    return v0
.end method

.method public limitDataSharing(Z)V
    .locals 1

    const-string v0, "limit_data_sharing"

    .line 557
    invoke-direct {p0, v0, p1}, Lcom/singular/sdk/internal/SingularInstance;->saveBooleanToPref(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadGlobalProperties()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "global_properties"

    const-string/jumbo v2, "{}"

    .line 676
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 683
    :catchall_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 686
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 687
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 689
    :catchall_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 692
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 694
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_0
    return-object v0
.end method

.method logApi(Lcom/singular/sdk/internal/BaseApi;)V
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isAllTrackingStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Tracking was stopped! not logging event!"

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->isSessionManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$5;

    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$5;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/BaseApi;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->retryTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 356
    :cond_1
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$6;

    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$6;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/BaseApi;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method logEvent(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isAllTrackingStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "Tracking was stopped! not logging event!"

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->isSessionManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$3;

    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$3;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->retryTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 323
    :cond_1
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$4;

    invoke-direct {v0, p0, p1}, Lcom/singular/sdk/internal/SingularInstance$4;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public logEvent(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    const/16 v2, 0xea2

    const/4 v3, 0x1

    if-le v1, v2, :cond_2

    .line 298
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v1, "Event discarded! payload length = %d"

    invoke-virtual {p1, v1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    .line 302
    :cond_2
    new-instance v0, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;

    invoke-direct {v0, p1, p2}, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V

    return v3
.end method

.method logSessionStart(J)V
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isAllTrackingStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string p2, "Tracking was stopped! not logging event!"

    invoke-virtual {p1, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 370
    :cond_0
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/singular/sdk/internal/SingularInstance$7;-><init>(Lcom/singular/sdk/internal/SingularInstance;J)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorkerAtFront(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logSetDeviceCustomUserId()V
    .locals 2

    .line 412
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->isAllTrackingStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    sget-object v0, Lcom/singular/sdk/internal/SingularInstance;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v1, "Tracking was stopped! not logging event!"

    invoke-virtual {v0, v1}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    return-void

    .line 417
    :cond_0
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$8;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/SingularInstance$8;-><init>(Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityPaused(J)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->onExitForeground(J)V

    return-void
.end method

.method public onActivityResumed(J)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->sessionManager:Lcom/singular/sdk/internal/SessionManager;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0, p1, p2}, Lcom/singular/sdk/internal/SessionManager;->onEnterForeground(J)V

    :cond_0
    return-void
.end method

.method public removeGlobalProperty(Ljava/lang/String;)V
    .locals 1

    .line 650
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->globalProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->saveGlobalProperties()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeAllTracking()V
    .locals 2

    const-string v0, "stop_all_tracking"

    const/4 v1, 0x0

    .line 549
    invoke-direct {p0, v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method retryTask(Ljava/lang/Runnable;)V
    .locals 2

    .line 428
    sget v0, Lcom/singular/sdk/internal/SingularInstance;->retryCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/16 v0, 0xc8

    .line 429
    invoke-virtual {p0, p1, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorkerDelayed(Ljava/lang/Runnable;I)V

    .line 430
    sget p1, Lcom/singular/sdk/internal/SingularInstance;->retryCounter:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/singular/sdk/internal/SingularInstance;->retryCounter:I

    :cond_0
    return-void
.end method

.method runOnWorker(Ljava/lang/Runnable;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/SingularWorkerThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method runOnWorkerAtFront(Ljava/lang/Runnable;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/SingularWorkerThread;->postAtFront(Ljava/lang/Runnable;)V

    return-void
.end method

.method runOnWorkerDelayed(Ljava/lang/Runnable;I)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->worker:Lcom/singular/sdk/internal/SingularWorkerThread;

    invoke-virtual {v0, p1, p2}, Lcom/singular/sdk/internal/SingularWorkerThread;->postDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public saveCustomUserId(Ljava/lang/String;)V
    .locals 2

    .line 501
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 502
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "custom_user_id"

    .line 503
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 504
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/DeviceInfo;->setCustomUserId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveFCMDeviceToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fcm_device_token_key"

    .line 492
    invoke-direct {p0, v0, p1}, Lcom/singular/sdk/internal/SingularInstance;->saveDeviceToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/DeviceInfo;->setFcmRegId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveGCMDeviceToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "gcm_device_token_key"

    .line 483
    invoke-direct {p0, v0, p1}, Lcom/singular/sdk/internal/SingularInstance;->saveDeviceToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->deviceInfo:Lcom/singular/sdk/internal/DeviceInfo;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/DeviceInfo;->setGcmRegId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendTrackingOptIn()V
    .locals 1

    .line 522
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$10;

    invoke-direct {v0, p0, p0}, Lcom/singular/sdk/internal/SingularInstance$10;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendTrackingUnder13()V
    .locals 1

    .line 534
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$11;

    invoke-direct {v0, p0, p0}, Lcom/singular/sdk/internal/SingularInstance$11;-><init>(Lcom/singular/sdk/internal/SingularInstance;Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGlobalProperty(Lcom/singular/sdk/internal/SingularGlobalProperty;)Z
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Lcom/singular/sdk/internal/SingularInstance;->putGlobalProperty(Lcom/singular/sdk/internal/SingularGlobalProperty;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularInstance;->saveGlobalProperties()V

    const/4 p1, 0x1

    return p1
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0

    .line 608
    invoke-static {p1}, Lcom/singular/sdk/internal/Utils;->setImei(Ljava/lang/String;)V

    return-void
.end method

.method startSession(J)V
    .locals 2

    .line 401
    new-instance v0, Lcom/singular/sdk/internal/ApiStartSession;

    invoke-direct {v0, p1, p2}, Lcom/singular/sdk/internal/ApiStartSession;-><init>(J)V

    .line 402
    sget-object v1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    invoke-static {p1, p2, v1}, Lcom/singular/sdk/internal/ApiStartSession$Params;->build(JLcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiStartSession$Params;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/singular/sdk/internal/ApiStartSession;->addParams(Ljava/util/Map;)V

    .line 403
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    iget-object p1, p1, Lcom/singular/sdk/internal/SingularInstance;->apiManager:Lcom/singular/sdk/internal/ApiManager;

    invoke-virtual {p1, v0}, Lcom/singular/sdk/internal/ApiManager;->enqueue(Lcom/singular/sdk/internal/BaseApi;)V

    .line 406
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    iget-object p1, p1, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/singular/sdk/SingularConfig;->openUri:Landroid/net/Uri;

    .line 408
    sget-object p1, Lcom/singular/sdk/internal/SingularInstance;->instance:Lcom/singular/sdk/internal/SingularInstance;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/singular/sdk/internal/SingularInstance;->isFirstInstall:Z

    return-void
.end method

.method public startSessionIfOpenedWithDeeplink()V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/singular/sdk/internal/SingularInstance;->config:Lcom/singular/sdk/SingularConfig;

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->singularLink:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    new-instance v0, Lcom/singular/sdk/internal/SingularInstance$9;

    invoke-direct {v0, p0}, Lcom/singular/sdk/internal/SingularInstance$9;-><init>(Lcom/singular/sdk/internal/SingularInstance;)V

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularInstance;->runOnWorker(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopAllTracking()V
    .locals 2

    const-string v0, "stop_all_tracking"

    const/4 v1, 0x1

    .line 545
    invoke-direct {p0, v0, v1}, Lcom/singular/sdk/internal/SingularInstance;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method
