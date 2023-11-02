.class public Lcom/singular/sdk/internal/NewPlayReferrerUtils;
.super Ljava/lang/Object;
.source "NewPlayReferrerUtils.java"


# static fields
.field private static installReferrer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NewPlayReferrerUtils"

    .line 20
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 19
    sget-object v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V
    .locals 0

    .line 19
    invoke-static/range {p0 .. p10}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->makeInstallReferrerObject(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V

    return-void
.end method

.method public static fetchReferrerData(Landroid/content/Context;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {p0}, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->queryNewPlayReferrerValue(Landroid/content/Context;)V

    .line 25
    sget-object p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->installReferrer:Ljava/util/Map;

    return-object p0
.end method

.method private static makeInstallReferrerObject(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JJ)V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->installReferrer:Ljava/util/Map;

    const-string v1, "referrer"

    .line 38
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->installReferrer:Ljava/util/Map;

    const-string v0, "referrer_source"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->installReferrer:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "clickTimestampSeconds"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->installReferrer:Ljava/util/Map;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "installBeginTimestampSeconds"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->installReferrer:Ljava/util/Map;

    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "current_device_time"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->installReferrer:Ljava/util/Map;

    const-string p1, "installVersion"

    invoke-interface {p0, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->installReferrer:Ljava/util/Map;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "clickTimestampServerSeconds"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->installReferrer:Ljava/util/Map;

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "installBeginTimestampServerSeconds"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static queryNewPlayReferrerValue(Landroid/content/Context;)V
    .locals 3

    .line 52
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 53
    invoke-static {p0}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/singular/sdk/internal/NewPlayReferrerUtils$1;-><init>(Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    const-wide/16 v1, 0x2

    .line 138
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    sget-object p0, Lcom/singular/sdk/internal/NewPlayReferrerUtils;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "InterruptedException!"

    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    :goto_0
    return-void
.end method
