.class public final Lio/sentry/android/core/AnrV2EventProcessor;
.super Ljava/lang/Object;
.source "AnrV2EventProcessor.java"

# interfaces
.implements Lio/sentry/BackfillingEventProcessor;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 85
    iput-object p3, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 87
    new-instance p1, Lio/sentry/SentryStackTraceFactory;

    invoke-direct {p1, p2}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    .line 90
    new-instance p2, Lio/sentry/SentryExceptionFactory;

    invoke-direct {p2, p1}, Lio/sentry/SentryExceptionFactory;-><init>(Lio/sentry/SentryStackTraceFactory;)V

    iput-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    return-void
.end method

.method private backfillOptions(Lio/sentry/SentryEvent;Ljava/lang/Object;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setRelease(Lio/sentry/SentryBaseEvent;)V

    .line 274
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setEnvironment(Lio/sentry/SentryBaseEvent;)V

    .line 275
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setDist(Lio/sentry/SentryBaseEvent;)V

    .line 276
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setDebugMeta(Lio/sentry/SentryBaseEvent;)V

    .line 277
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setSdk(Lio/sentry/SentryBaseEvent;)V

    .line 278
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->setApp(Lio/sentry/SentryBaseEvent;Ljava/lang/Object;)V

    .line 279
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setOptionsTags(Lio/sentry/SentryBaseEvent;)V

    return-void
.end method

.method private backfillScope(Lio/sentry/SentryEvent;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setRequest(Lio/sentry/SentryBaseEvent;)V

    .line 134
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setUser(Lio/sentry/SentryBaseEvent;)V

    .line 135
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setScopeTags(Lio/sentry/SentryBaseEvent;)V

    .line 136
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setBreadcrumbs(Lio/sentry/SentryBaseEvent;)V

    .line 137
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setExtras(Lio/sentry/SentryBaseEvent;)V

    .line 138
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setContexts(Lio/sentry/SentryBaseEvent;)V

    .line 139
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setTransaction(Lio/sentry/SentryEvent;)V

    .line 140
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setFingerprints(Lio/sentry/SentryEvent;)V

    .line 141
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setLevel(Lio/sentry/SentryEvent;)V

    .line 142
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setTrace(Lio/sentry/SentryEvent;)V

    return-void
.end method

.method private findMainThread(Ljava/util/List;)Lio/sentry/protocol/SentryThread;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;)",
            "Lio/sentry/protocol/SentryThread;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 428
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryThread;

    .line 429
    invoke-virtual {v0}, Lio/sentry/protocol/SentryThread;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "main"

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDefaultUser()Lio/sentry/protocol/User;
    .locals 2

    .line 503
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 504
    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    return-object v0
.end method

.method private getDevice()Lio/sentry/protocol/Device;
    .locals 4

    .line 544
    new-instance v0, Lio/sentry/protocol/Device;

    invoke-direct {v0}, Lio/sentry/protocol/Device;-><init>()V

    .line 545
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendDefaultPii()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getDeviceName(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setName(Ljava/lang/String;)V

    .line 548
    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setManufacturer(Ljava/lang/String;)V

    .line 549
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setBrand(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getFamily(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setFamily(Ljava/lang/String;)V

    .line 551
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModel(Ljava/lang/String;)V

    .line 552
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModelId(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getArchitectures(Lio/sentry/android/core/BuildInfoProvider;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setArchs([Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 556
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getMemInfo(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 559
    invoke-direct {p0, v1}, Lio/sentry/android/core/AnrV2EventProcessor;->getMemorySize(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setMemorySize(Ljava/lang/Long;)V

    .line 562
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v1}, Lio/sentry/android/core/BuildInfoProvider;->isEmulator()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setSimulator(Ljava/lang/Boolean;)V

    .line 564
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getDisplayMetrics(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 566
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenWidthPixels(Ljava/lang/Integer;)V

    .line 567
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenHeightPixels(Ljava/lang/Integer;)V

    .line 568
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenDensity(Ljava/lang/Float;)V

    .line 569
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setScreenDpi(Ljava/lang/Integer;)V

    .line 572
    :cond_2
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 573
    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setId(Ljava/lang/String;)V

    .line 576
    :cond_3
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    move-result-object v1

    .line 577
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 578
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setProcessorFrequency(Ljava/lang/Double;)V

    .line 579
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setProcessorCount(Ljava/lang/Integer;)V

    :cond_4
    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 4

    .line 511
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 513
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting installationId."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getMemorySize(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;
    .locals 2

    .line 587
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 588
    iget-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 591
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private getOperatingSystem()Lio/sentry/protocol/OperatingSystem;
    .locals 5

    .line 614
    new-instance v0, Lio/sentry/protocol/OperatingSystem;

    invoke-direct {v0}, Lio/sentry/protocol/OperatingSystem;-><init>()V

    const-string v1, "Android"

    .line 615
    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setName(Ljava/lang/String;)V

    .line 616
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setVersion(Ljava/lang/String;)V

    .line 617
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setBuild(Ljava/lang/String;)V

    .line 620
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getKernelVersion(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setKernelVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 622
    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error getting OperatingSystem."

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private isBackgroundAnr(Ljava/lang/Object;)Z
    .locals 1

    .line 440
    instance-of v0, p1, Lio/sentry/hints/AbnormalExit;

    if-eqz v0, :cond_0

    .line 441
    check-cast p1, Lio/sentry/hints/AbnormalExit;

    invoke-interface {p1}, Lio/sentry/hints/AbnormalExit;->mechanism()Ljava/lang/String;

    move-result-object p1

    const-string v0, "anr_background"

    .line 442
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private mergeOS(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    .line 595
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    .line 596
    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v1

    .line 599
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {v0}, Lio/sentry/protocol/OperatingSystem;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "os_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "os_1"

    .line 609
    :goto_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private mergeUser(Lio/sentry/SentryBaseEvent;)V
    .locals 2

    .line 478
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isSendDefaultPii()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    const-string/jumbo v1, "{{auto}}"

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 481
    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 484
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    .line 489
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_2

    .line 491
    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getDefaultUser()Lio/sentry/protocol/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    goto :goto_1

    .line 492
    :cond_2
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 493
    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setApp(Lio/sentry/SentryBaseEvent;Ljava/lang/Object;)V
    .locals 5

    .line 283
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lio/sentry/protocol/App;

    invoke-direct {v0}, Lio/sentry/protocol/App;-><init>()V

    .line 287
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getApplicationName(Landroid/content/Context;Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/App;->setAppName(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->isBackgroundAnr(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/sentry/protocol/App;->setInForeground(Ljava/lang/Boolean;)V

    .line 293
    iget-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 294
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {p2, v2, v3}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 296
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lio/sentry/protocol/App;->setAppIdentifier(Ljava/lang/String;)V

    .line 301
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 302
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 303
    :cond_2
    iget-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v2, Ljava/lang/String;

    const-string v3, "release.json"

    invoke-static {p2, v3, v2}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_3

    const/16 v2, 0x40

    .line 307
    :try_start_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v3, 0x2b

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {v0, v2}, Lio/sentry/protocol/App;->setAppVersion(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, v3}, Lio/sentry/protocol/App;->setAppBuild(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 312
    :catchall_0
    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 313
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v1, v4

    const-string p2, "Failed to parse release from scope cache: %s"

    .line 314
    invoke-interface {v2, v3, p2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    return-void
.end method

.method private setBreadcrumbs(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    .line 221
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/util/List;

    new-instance v2, Lio/sentry/Breadcrumb$Deserializer;

    invoke-direct {v2}, Lio/sentry/Breadcrumb$Deserializer;-><init>()V

    const-string v3, "breadcrumbs.json"

    .line 223
    invoke-static {v0, v3, v1, v2}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setBreadcrumbs(Ljava/util/List;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method private setContexts(Lio/sentry/SentryBaseEvent;)V
    .locals 5

    .line 183
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Lio/sentry/protocol/Contexts;

    const-string v2, "contexts.json"

    .line 184
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Contexts;

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    .line 189
    new-instance v1, Lio/sentry/protocol/Contexts;

    invoke-direct {v1, v0}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "trace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Lio/sentry/SpanContext;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setDebugMeta(Lio/sentry/SentryBaseEvent;)V
    .locals 5

    .line 338
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDebugMeta()Lio/sentry/protocol/DebugMeta;

    move-result-object v0

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lio/sentry/protocol/DebugMeta;

    invoke-direct {v0}, Lio/sentry/protocol/DebugMeta;-><init>()V

    .line 343
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lio/sentry/protocol/DebugMeta;->setImages(Ljava/util/List;)V

    .line 346
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 348
    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v3, Ljava/lang/String;

    const-string v4, "proguard-uuid.json"

    .line 349
    invoke-static {v2, v4, v3}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 352
    new-instance v3, Lio/sentry/protocol/DebugImage;

    invoke-direct {v3}, Lio/sentry/protocol/DebugImage;-><init>()V

    const-string v4, "proguard"

    .line 353
    invoke-virtual {v3, v4}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v3, v2}, Lio/sentry/protocol/DebugImage;->setUuid(Ljava/lang/String;)V

    .line 355
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_2
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    :cond_3
    return-void
.end method

.method private setDevice(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 535
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v0

    if-nez v0, :cond_0

    .line 536
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    :cond_0
    return-void
.end method

.method private setDist(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    .line 362
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/lang/String;

    const-string v2, "dist.json"

    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V

    .line 367
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/lang/String;

    const-string v2, "release.json"

    .line 369
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v1, 0x2b

    const/4 v2, 0x1

    .line 372
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 375
    :catchall_0
    iget-object p1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 376
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Failed to parse release from scope cache: %s"

    .line 377
    invoke-interface {p1, v1, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setEnvironment(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 330
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 331
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/lang/String;

    const-string v2, "environment.json"

    .line 332
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setEnvironment(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setExceptions(Lio/sentry/SentryEvent;Ljava/lang/Object;)V
    .locals 3

    .line 450
    new-instance v0, Lio/sentry/protocol/Mechanism;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism;-><init>()V

    .line 451
    move-object v1, p2

    check-cast v1, Lio/sentry/hints/Backfillable;

    invoke-interface {v1}, Lio/sentry/hints/Backfillable;->shouldEnrich()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HistoricalAppExitInfo"

    .line 453
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppExitInfo"

    .line 455
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 458
    :goto_0
    invoke-direct {p0, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->isBackgroundAnr(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "ANR"

    if-eqz p2, :cond_1

    .line 461
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    :cond_1
    new-instance p2, Lio/sentry/android/core/ApplicationNotResponding;

    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 466
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/sentry/android/core/AnrV2EventProcessor;->findMainThread(Ljava/util/List;)Lio/sentry/protocol/SentryThread;

    move-result-object v1

    if-nez v1, :cond_2

    .line 470
    new-instance v1, Lio/sentry/protocol/SentryThread;

    invoke-direct {v1}, Lio/sentry/protocol/SentryThread;-><init>()V

    .line 471
    new-instance v2, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {v2}, Lio/sentry/protocol/SentryStackTrace;-><init>()V

    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryThread;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    .line 473
    :cond_2
    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    .line 474
    invoke-virtual {v2, v1, v0, p2}, Lio/sentry/SentryExceptionFactory;->getSentryExceptionsFromThread(Lio/sentry/protocol/SentryThread;Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p2

    .line 473
    invoke-virtual {p1, p2}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    return-void
.end method

.method private setExtras(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    .line 203
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/util/Map;

    const-string v2, "extras.json"

    .line 204
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setExtras(Ljava/util/Map;)V

    goto :goto_1

    .line 211
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 212
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 213
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setFingerprints(Lio/sentry/SentryEvent;)V
    .locals 3

    .line 167
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/util/List;

    const-string v2, "fingerprint.json"

    .line 168
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 169
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getFingerprints()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setFingerprints(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private setLevel(Lio/sentry/SentryEvent;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Lio/sentry/SentryLevel;

    const-string v2, "level.json"

    .line 159
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryLevel;

    .line 160
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    :cond_0
    return-void
.end method

.method private setOptionsTags(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    .line 393
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/util/Map;

    const-string v2, "tags.json"

    .line 395
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 401
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 403
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 404
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 405
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setPlatform(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 419
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getPlatform()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "java"

    .line 421
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setPlatform(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRelease(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 322
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/lang/String;

    const-string v2, "release.json"

    .line 324
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setRelease(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRequest(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 262
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Lio/sentry/protocol/Request;

    const-string v2, "request.json"

    .line 264
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Request;

    .line 265
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setRequest(Lio/sentry/protocol/Request;)V

    :cond_0
    return-void
.end method

.method private setScopeTags(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    .line 237
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/util/Map;

    const-string v2, "tags.json"

    .line 239
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 246
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 247
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 248
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setSdk(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 384
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Lio/sentry/protocol/SdkVersion;

    const-string v2, "sdk-version.json"

    .line 386
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SdkVersion;

    .line 387
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setSdk(Lio/sentry/protocol/SdkVersion;)V

    :cond_0
    return-void
.end method

.method private setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 520
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 521
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v0, v1, v2}, Lio/sentry/android/core/ContextUtils;->retrieveSideLoadedInfo(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->asTags()Ljava/util/Map;

    move-result-object v0

    .line 525
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 526
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 530
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting side loaded info."

    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private setStaticValues(Lio/sentry/SentryEvent;)V
    .locals 0

    .line 414
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->mergeUser(Lio/sentry/SentryBaseEvent;)V

    .line 415
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V

    return-void
.end method

.method private setTrace(Lio/sentry/SentryEvent;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Lio/sentry/SpanContext;

    const-string v2, "trace.json"

    .line 147
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SpanContext;

    .line 148
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    :cond_0
    return-void
.end method

.method private setTransaction(Lio/sentry/SentryEvent;)V
    .locals 3

    .line 175
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Ljava/lang/String;

    const-string v2, "transaction.json"

    .line 176
    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setTransaction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setUser(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 255
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-class v1, Lio/sentry/protocol/User;

    const-string v2, "user.json"

    invoke-static {v0, v2, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/User;

    .line 257
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 3

    .line 95
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object p2

    .line 96
    instance-of v0, p2, Lio/sentry/hints/Backfillable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97
    iget-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 98
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The event is not Backfillable, but has been passed to BackfillingEventProcessor, skipping."

    .line 99
    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 108
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->setExceptions(Lio/sentry/SentryEvent;Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setPlatform(Lio/sentry/SentryBaseEvent;)V

    .line 110
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->mergeOS(Lio/sentry/SentryBaseEvent;)V

    .line 111
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setDevice(Lio/sentry/SentryBaseEvent;)V

    .line 113
    move-object v0, p2

    check-cast v0, Lio/sentry/hints/Backfillable;

    invoke-interface {v0}, Lio/sentry/hints/Backfillable;->shouldEnrich()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 115
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The event is Backfillable, but should not be enriched, skipping."

    .line 116
    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->backfillScope(Lio/sentry/SentryEvent;)V

    .line 124
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->backfillOptions(Lio/sentry/SentryEvent;Ljava/lang/Object;)V

    .line 126
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setStaticValues(Lio/sentry/SentryEvent;)V

    return-object p1
.end method
