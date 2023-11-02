.class public Lcom/riotgames/installreferrer/InstallReferrer;
.super Ljava/lang/Object;
.source "InstallReferrer.java"


# static fields
.field private static final TIMEOUT_MILLISECONDS:Ljava/lang/Long;


# instance fields
.field private referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

.field private referrerUrlResponseData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/riotgames/installreferrer/InstallReferrer;->TIMEOUT_MILLISECONDS:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/riotgames/installreferrer/InstallReferrer;->referrerUrlResponseData:Lorg/json/JSONObject;

    .line 24
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    iput-object p1, p0, Lcom/riotgames/installreferrer/InstallReferrer;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    return-void
.end method

.method static synthetic access$000(Lcom/riotgames/installreferrer/InstallReferrer;)Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/riotgames/installreferrer/InstallReferrer;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/riotgames/installreferrer/InstallReferrer;->referrerUrlResponseData:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Long;
    .locals 1

    .line 16
    sget-object v0, Lcom/riotgames/installreferrer/InstallReferrer;->TIMEOUT_MILLISECONDS:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public connect()Ljava/lang/String;
    .locals 2

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/riotgames/installreferrer/InstallReferrer$1;

    invoke-direct {v1, p0}, Lcom/riotgames/installreferrer/InstallReferrer$1;-><init>(Lcom/riotgames/installreferrer/InstallReferrer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Riot SDK"

    const-string v1, "Singular: Failed to get the Install Referrer"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
