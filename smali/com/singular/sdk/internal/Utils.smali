.class public Lcom/singular/sdk/internal/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/Utils$Reflection;
    }
.end annotation


# static fields
.field private static asidScope:I

.field private static asidTimeinterval:D

.field private static imei:Ljava/lang/String;

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;

.field private static outputStream:Ljava/io/FileOutputStream;

.field private static wrapperName:Ljava/lang/String;

.field private static wrapperVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Utils"

    .line 66
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/Utils;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 v0, 0x0

    .line 661
    sput-object v0, Lcom/singular/sdk/internal/Utils;->wrapperName:Ljava/lang/String;

    .line 662
    sput-object v0, Lcom/singular/sdk/internal/Utils;->wrapperVersion:Ljava/lang/String;

    .line 663
    sput-object v0, Lcom/singular/sdk/internal/Utils;->imei:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 64
    sput p0, Lcom/singular/sdk/internal/Utils;->asidScope:I

    return p0
.end method

.method static synthetic access$102(D)D
    .locals 0

    .line 64
    sput-wide p0, Lcom/singular/sdk/internal/Utils;->asidTimeinterval:D

    return-wide p0
.end method

.method static appMovedToBackground()Z
    .locals 2

    .line 658
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/singular/sdk/SingularConfig;->isOpenedWithDeepLink:Z

    return v1
.end method

.method static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 142
    fill-array-data v0, :array_0

    .line 144
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 146
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 147
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    .line 148
    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 149
    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static createSingularId(Landroid/content/SharedPreferences;)Ljava/util/UUID;
    .locals 3

    .line 413
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 415
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 416
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "singular-id"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v0
.end method

.method static extractDeepLink(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 596
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isESPLink(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sng.link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "_android_dl"

    .line 600
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, "_dl"

    .line 605
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static extractPassthroughFromSingularLink(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "_p"

    .line 609
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static fetchDTReferrerDetails(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "com.singular.preinstall"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "trackers"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "content://%s/%s"

    .line 788
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 791
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 792
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "encrypted_data"

    .line 794
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "package_name=?"

    new-array v9, v4, [Ljava/lang/String;

    .line 796
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v9, v3

    const/4 v10, 0x0

    .line 797
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    .line 801
    sget-object p0, Lcom/singular/sdk/internal/Utils;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v5, "Read content provider cursor null content uri [%s]"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    .line 805
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    .line 806
    sget-object v5, Lcom/singular/sdk/internal/Utils;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v6, "Read content provider cursor empty content uri [%s]"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v1, v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 807
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 811
    :cond_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 812
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    :catchall_0
    move-exception p0

    .line 815
    sget-object v5, Lcom/singular/sdk/internal/Utils;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "Exception read content provider uri [%s] error [%s]"

    invoke-virtual {v5, p0, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2
.end method

.method public static formatException(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 760
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nStack trace: \n"

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 762
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 763
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static formatTimestamp(J)Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getASIDScope()I
    .locals 1

    .line 299
    sget v0, Lcom/singular/sdk/internal/Utils;->asidScope:I

    return v0
.end method

.method public static getASIDTimeInterval()D
    .locals 2

    .line 295
    sget-wide v0, Lcom/singular/sdk/internal/Utils;->asidTimeinterval:D

    return-wide v0
.end method

.method static getAdmonEventIndex(Landroid/content/Context;)J
    .locals 3

    const-string v0, "pref-admon-event-index"

    const/4 v1, 0x0

    .line 436
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "admon-event-index"

    const-wide/16 v1, -0x1

    .line 438
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 440
    invoke-static {p0, v0, v1}, Lcom/singular/sdk/internal/Utils;->increaseAdmonEventIndex(Landroid/content/SharedPreferences;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 201
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v2, "getAdvertisingIdInfo"

    invoke-static {p0, v2, v1, v0}, Lcom/singular/sdk/internal/Utils$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getAmazonId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 249
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "advertising_id"

    .line 250
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 232
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getInvalidDeviceIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "None"

    :goto_0
    return-object p0
.end method

.method static getAppSetId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 268
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object p0

    .line 269
    invoke-interface {p0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 271
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 273
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 274
    new-instance v4, Lcom/singular/sdk/internal/Utils$1;

    invoke-direct {v4, v1, v2, v3}, Lcom/singular/sdk/internal/Utils$1;-><init>(Ljava/util/concurrent/BlockingQueue;J)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    const-wide/16 v2, 0x1

    .line 287
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, p0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 288
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :catchall_0
    :goto_0
    return-object v0
.end method

.method static getBatchSendId(Landroid/content/Context;)J
    .locals 3

    const-string v0, "batch_send_id"

    const/4 v1, 0x0

    .line 783
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "sendId"

    const-wide/16 v1, 0x0

    .line 784
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getCSIReferrer(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "install-openUri"

    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "openUri"

    const/4 v1, 0x0

    .line 377
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 344
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "wifi"

    if-eqz v0, :cond_0

    const-string/jumbo v1, "wwan"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isConnectedWifi(Landroid/content/Context;)Z

    :goto_0
    return-object v1
.end method

.method static getCpuAbi()Ljava/lang/String;
    .locals 1

    .line 362
    invoke-static {}, Lcom/singular/sdk/internal/Utils$Reflection;->getCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTimeMillis()J
    .locals 2

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 741
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 745
    sget-object p1, Lcom/singular/sdk/internal/Utils;->logger:Lcom/singular/sdk/internal/SingularLog;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    const-string p0, "Security violation occured "

    invoke-virtual {p1, p0, p2}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 743
    :catch_1
    sget-object p2, Lcom/singular/sdk/internal/Utils;->logger:Lcom/singular/sdk/internal/SingularLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " was not found in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/singular/sdk/internal/SingularLog;->debug(Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method

.method static getEventIndex(Landroid/content/Context;)J
    .locals 3

    const-string v0, "pref-event-index"

    const/4 v1, 0x0

    .line 424
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "event-index"

    const-wide/16 v1, -0x1

    .line 426
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 428
    invoke-static {p0, v0, v1}, Lcom/singular/sdk/internal/Utils;->increaseEventIndex(Landroid/content/SharedPreferences;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    .line 679
    sget-object v0, Lcom/singular/sdk/internal/Utils;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public static getInvalidDeviceIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, ""

    .line 305
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "9774d56d682e549c"

    .line 306
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "unknown"

    .line 307
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "000000000000000"

    .line 308
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Android"

    .line 309
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "DEFACE"

    .line 310
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "00000000-0000-0000-0000-000000000000"

    .line 311
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 1

    .line 349
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils$Reflection;->getLocaleFromLocaleList(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 353
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils$Reflection;->getLocaleFromField(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "connectivity"

    .line 318
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 319
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayStoreAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 209
    :try_start_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 210
    invoke-static {p0, v1, v0, v2}, Lcom/singular/sdk/internal/Utils$Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getInvalidDeviceIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move-object v0, p0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static getPlayStoreAdIdByBackupMethod(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 575
    :try_start_0
    invoke-static {p0}, Lcom/singular/sdk/internal/ExternalAIFAHelper;->getAIFA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 576
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getInvalidDeviceIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move-object v0, p0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method static getSdkVersion()Ljava/lang/String;
    .locals 5

    .line 684
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/singular/sdk/internal/DeviceInfo;->sdkVersion:Ljava/lang/String;

    .line 686
    sget-object v1, Lcom/singular/sdk/internal/Utils;->wrapperName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/singular/sdk/internal/Utils;->wrapperVersion:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s-%s/%s"

    .line 687
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static getSingularId(Landroid/content/Context;)Ljava/util/UUID;
    .locals 2

    const-string v0, "pref-singular-id"

    const/4 v1, 0x0

    .line 401
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "singular-id"

    const/4 v1, 0x0

    .line 403
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    return-object p0

    .line 409
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->createSingularId(Landroid/content/SharedPreferences;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 752
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 753
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 754
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 755
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSupportedAbis()[Ljava/lang/String;
    .locals 1

    .line 358
    invoke-static {}, Lcom/singular/sdk/internal/Utils$Reflection;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWrapperName()Ljava/lang/String;
    .locals 1

    .line 671
    sget-object v0, Lcom/singular/sdk/internal/Utils;->wrapperName:Ljava/lang/String;

    return-object v0
.end method

.method static handleDeepLink(Lcom/singular/sdk/SingularLinkParams;)Z
    .locals 2

    .line 620
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->linkCallback:Lcom/singular/sdk/SingularLinkHandler;

    .line 622
    invoke-virtual {p0}, Lcom/singular/sdk/SingularLinkParams;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 623
    new-instance v1, Lcom/singular/sdk/internal/Utils$2;

    invoke-direct {v1, v0, p0}, Lcom/singular/sdk/internal/Utils$2;-><init>(Lcom/singular/sdk/SingularLinkHandler;Lcom/singular/sdk/SingularLinkParams;)V

    .line 628
    invoke-virtual {v1}, Lcom/singular/sdk/internal/Utils$2;->run()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static handleSingularLink(Landroid/net/Uri;)V
    .locals 3

    .line 613
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->extractDeepLink(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    new-instance v1, Lcom/singular/sdk/SingularLinkParams;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->extractPassthroughFromSingularLink(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/singular/sdk/SingularLinkParams;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->handleDeepLink(Lcom/singular/sdk/SingularLinkParams;)Z

    :cond_0
    return-void
.end method

.method public static incBatchSendId(Landroid/content/Context;)J
    .locals 4

    .line 768
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->getBatchSendId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :try_start_0
    const-string v2, "batch_send_id"

    const/4 v3, 0x0

    .line 770
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 771
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "sendId"

    .line 772
    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 773
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 775
    sget-object v2, Lcom/singular/sdk/internal/Utils;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_0
    return-wide v0
.end method

.method private static increaseAdmonEventIndex(Landroid/content/SharedPreferences;J)J
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 456
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "admon-event-index"

    .line 457
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-wide p1
.end method

.method private static increaseEventIndex(Landroid/content/SharedPreferences;J)J
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 448
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "event-index"

    .line 449
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-wide p1
.end method

.method static isAmazonAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 238
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "limit_ad_tracking"

    .line 239
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static isAmazonLimitAdTracking(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "limit_ad_tracking"

    .line 259
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method static isConnected(Landroid/content/Context;)Z
    .locals 0

    .line 323
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 324
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isConnectedMobile(Landroid/content/Context;)Z
    .locals 1

    .line 333
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isConnectedWifi(Landroid/content/Context;)Z
    .locals 2

    .line 328
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isESPLink(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 694
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 695
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 696
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->espDomains:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 697
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->espDomains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 706
    :cond_1
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/singular/sdk/SingularConfig;->espDomains:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/singular/sdk/internal/Utils;->isUrlInDomains(Landroid/net/Uri;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEmptyOrNull(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isFirstInstall(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "singular-first-install"

    const/4 v1, 0x0

    .line 382
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "wasOpenedAfterInstall"

    .line 383
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 387
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->saveFirstInstallInfo(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method static isGooglePlayServicesAvailable()Z
    .locals 1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 195
    invoke-static {v0}, Lcom/singular/sdk/internal/Utils$Reflection;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLicenseRetrieved(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "singular-licensing-api"

    const/4 v1, 0x0

    .line 463
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 464
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isLimitedTrackingEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->getAdvertisingInfoObject(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "isLimitAdTrackingEnabled"

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 220
    invoke-static {p0, v1, v2, v3}, Lcom/singular/sdk/internal/Utils$Reflection;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 223
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method static isMainThread()Z
    .locals 2

    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isOpenedWithDeeplink()Z
    .locals 1

    .line 654
    invoke-static {}, Lcom/singular/sdk/internal/SingularInstance;->getInstance()Lcom/singular/sdk/internal/SingularInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/singular/sdk/SingularConfig;->isOpenedWithDeepLink:Z

    return v0
.end method

.method static isShortLink(Landroid/net/Uri;)Z
    .locals 3

    .line 585
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->isESPLink(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sng.link"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 588
    :cond_0
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->extractDeepLink(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isUrlInDomains(Landroid/net/Uri;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 731
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 732
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static lagSince(J)D
    .locals 2

    .line 111
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    long-to-double p0, v0

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method static varargs permissionsDeclaredInManifest(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 165
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 167
    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    .line 168
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 169
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_2
    array-length p0, p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, p0, :cond_3

    const/4 v0, 0x1

    :catch_0
    :cond_3
    return v0
.end method

.method static resolveESPLink(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    .line 711
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string v2, "https"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 713
    invoke-static {v1}, Lcom/singular/sdk/internal/SingularRequestHandler;->getHttpsConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    goto :goto_0

    .line 714
    :cond_0
    invoke-static {v1}, Lcom/singular/sdk/internal/SingularRequestHandler;->getHttpConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    .line 716
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 717
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    const-string v1, "Location"

    .line 718
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 724
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static saveCSIReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "install-openUri"

    const/4 v1, 0x0

    .line 368
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 369
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "openUri"

    .line 370
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static saveFirstInstallInfo(Landroid/content/Context;)V
    .locals 2

    const-string v0, "singular-first-install"

    const/4 v1, 0x0

    .line 393
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 394
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "wasOpenedAfterInstall"

    const/4 v1, 0x1

    .line 395
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveLicenseInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "singular-licensing-api"

    const/4 v1, 0x0

    .line 468
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 469
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    .line 470
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setImei(Ljava/lang/String;)V
    .locals 0

    .line 675
    sput-object p0, Lcom/singular/sdk/internal/Utils;->imei:Ljava/lang/String;

    return-void
.end method

.method public static setWrapperNameAndVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 666
    sput-object p0, Lcom/singular/sdk/internal/Utils;->wrapperName:Ljava/lang/String;

    .line 667
    sput-object p1, Lcom/singular/sdk/internal/Utils;->wrapperVersion:Ljava/lang/String;

    return-void
.end method

.method static sha1Hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "UTF-8"

    :try_start_0
    const-string v1, "SHA-1"

    .line 123
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 126
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 127
    invoke-static {p0}, Lcom/singular/sdk/internal/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 129
    sget-object p1, Lcom/singular/sdk/internal/Utils;->logger:Lcom/singular/sdk/internal/SingularLog;

    const-string v0, "error in sha1Hash()"

    invoke-virtual {p1, v0, p0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static validateSingularLink(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 642
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 646
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method
