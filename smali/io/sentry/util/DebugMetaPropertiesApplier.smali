.class public final Lio/sentry/util/DebugMetaPropertiesApplier;
.super Ljava/lang/Object;
.source "DebugMetaPropertiesApplier.java"


# static fields
.field public static DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String; = "sentry-debug-meta.properties"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyBundleIds(Lio/sentry/SentryOptions;Ljava/util/Properties;)V
    .locals 5

    .line 23
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBundleIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "io.sentry.bundle-ids"

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Bundle IDs found: %s"

    invoke-interface {v0, v1, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, ","

    .line 28
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 29
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v1, p1, v3

    .line 30
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addBundleId(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static applyProguardUuid(Lio/sentry/SentryOptions;Ljava/util/Properties;)V
    .locals 4

    .line 38
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "io.sentry.ProguardUuids"

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Proguard UUID found: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static applyToOptions(Lio/sentry/SentryOptions;Ljava/util/Properties;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 16
    invoke-static {p0, p1}, Lio/sentry/util/DebugMetaPropertiesApplier;->applyProguardUuid(Lio/sentry/SentryOptions;Ljava/util/Properties;)V

    .line 17
    invoke-static {p0, p1}, Lio/sentry/util/DebugMetaPropertiesApplier;->applyBundleIds(Lio/sentry/SentryOptions;Ljava/util/Properties;)V

    :cond_0
    return-void
.end method
