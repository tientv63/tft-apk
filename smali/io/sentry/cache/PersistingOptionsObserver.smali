.class public final Lio/sentry/cache/PersistingOptionsObserver;
.super Ljava/lang/Object;
.source "PersistingOptionsObserver.java"

# interfaces
.implements Lio/sentry/IOptionsObserver;


# static fields
.field public static final DIST_FILENAME:Ljava/lang/String; = "dist.json"

.field public static final ENVIRONMENT_FILENAME:Ljava/lang/String; = "environment.json"

.field public static final OPTIONS_CACHE:Ljava/lang/String; = ".options-cache"

.field public static final PROGUARD_UUID_FILENAME:Ljava/lang/String; = "proguard-uuid.json"

.field public static final RELEASE_FILENAME:Ljava/lang/String; = "release.json"

.field public static final SDK_VERSION_FILENAME:Ljava/lang/String; = "sdk-version.json"

.field public static final TAGS_FILENAME:Ljava/lang/String; = "tags.json"


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/sentry/cache/PersistingOptionsObserver;->options:Lio/sentry/SentryOptions;

    return-void
.end method

.method private delete(Ljava/lang/String;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lio/sentry/cache/PersistingOptionsObserver;->options:Lio/sentry/SentryOptions;

    const-string v1, ".options-cache"

    invoke-static {v0, v1, p1}, Lio/sentry/cache/CacheUtils;->delete(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, p1, p2, v0}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/JsonDeserializer<",
            "TR;>;)TT;"
        }
    .end annotation

    const-string v0, ".options-cache"

    .line 131
    invoke-static {p0, v0, p1, p2, p3}, Lio/sentry/cache/CacheUtils;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private serializeToDisk(Ljava/lang/Runnable;)V
    .locals 3

    .line 31
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/PersistingOptionsObserver;->options:Lio/sentry/SentryOptions;

    .line 32
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda3;-><init>(Lio/sentry/cache/PersistingOptionsObserver;Ljava/lang/Runnable;)V

    .line 33
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 42
    iget-object v0, p0, Lio/sentry/cache/PersistingOptionsObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Serialization task could not be scheduled"

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private store(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lio/sentry/cache/PersistingOptionsObserver;->options:Lio/sentry/SentryOptions;

    const-string v1, ".options-cache"

    invoke-static {v0, p1, v1, p2}, Lio/sentry/cache/CacheUtils;->store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$serializeToDisk$0$io-sentry-cache-PersistingOptionsObserver(Ljava/lang/Runnable;)V
    .locals 3

    .line 36
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 38
    iget-object v0, p0, Lio/sentry/cache/PersistingOptionsObserver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Serialization task failed"

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setDist$4$io-sentry-cache-PersistingOptionsObserver(Ljava/lang/String;)V
    .locals 1

    const-string v0, "dist.json"

    if-nez p1, :cond_0

    .line 87
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setEnvironment$5$io-sentry-cache-PersistingOptionsObserver(Ljava/lang/String;)V
    .locals 1

    const-string v0, "environment.json"

    if-nez p1, :cond_0

    .line 99
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setProguardUuid$2$io-sentry-cache-PersistingOptionsObserver(Ljava/lang/String;)V
    .locals 1

    const-string v0, "proguard-uuid.json"

    if-nez p1, :cond_0

    .line 63
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setRelease$1$io-sentry-cache-PersistingOptionsObserver(Ljava/lang/String;)V
    .locals 1

    const-string v0, "release.json"

    if-nez p1, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setSdkVersion$3$io-sentry-cache-PersistingOptionsObserver(Lio/sentry/protocol/SdkVersion;)V
    .locals 1

    const-string v0, "sdk-version.json"

    if-nez p1, :cond_0

    .line 75
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setTags$6$io-sentry-cache-PersistingOptionsObserver(Ljava/util/Map;)V
    .locals 1

    const-string v0, "tags.json"

    .line 108
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingOptionsObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 1

    .line 84
    new-instance v0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda1;-><init>(Lio/sentry/cache/PersistingOptionsObserver;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 1

    .line 96
    new-instance v0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda6;-><init>(Lio/sentry/cache/PersistingOptionsObserver;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 1

    .line 60
    new-instance v0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda0;-><init>(Lio/sentry/cache/PersistingOptionsObserver;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 1

    .line 48
    new-instance v0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda2;-><init>(Lio/sentry/cache/PersistingOptionsObserver;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
    .locals 1

    .line 72
    new-instance v0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda4;-><init>(Lio/sentry/cache/PersistingOptionsObserver;Lio/sentry/protocol/SdkVersion;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    new-instance v0, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingOptionsObserver$$ExternalSyntheticLambda5;-><init>(Lio/sentry/cache/PersistingOptionsObserver;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingOptionsObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method
