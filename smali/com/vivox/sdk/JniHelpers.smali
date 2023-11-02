.class public final Lcom/vivox/sdk/JniHelpers;
.super Ljava/lang/Object;
.source "JniHelpers.java"


# static fields
.field private static sInitialized:Z = false

.field private static sMemoryConsumptionTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/vivox/sdk/JniHelpers;->sMemoryConsumptionTimer:Ljava/util/Timer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 29
    invoke-static {v1, p0, v1, v0}, Lcom/vivox/sdk/JniHelpers;->init(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 33
    invoke-static {v1, p0, p1, v0}, Lcom/vivox/sdk/JniHelpers;->init(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {v0, p0, p1, p2}, Lcom/vivox/sdk/JniHelpers;->init(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 41
    invoke-static {p0, p1, v1, v0}, Lcom/vivox/sdk/JniHelpers;->init(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    invoke-static {p0, p1, p2, v0}, Lcom/vivox/sdk/JniHelpers;->init(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    .line 49
    sget-boolean v0, Lcom/vivox/sdk/JniHelpers;->sInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 55
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "vivox-sdk"

    .line 57
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    :goto_0
    array-length p0, p3

    move v2, v0

    :goto_1
    if-ge v2, p0, :cond_4

    aget-object v3, p3, v2

    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 62
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4}, Ljava/io/File;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_2
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    :cond_4
    invoke-static {}, Lcom/vivox/sdk/AndroidAudioBridge;->getInstance()Lcom/vivox/sdk/AndroidAudioBridge;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/vivox/sdk/AndroidAudioBridge;->setContext(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/vivox/sdk/Network;->getInstance()Lcom/vivox/sdk/Network;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/vivox/sdk/Network;->setContext(Landroid/content/Context;)V

    .line 77
    invoke-static {}, Lcom/vivox/sdk/JniServices;->getInstance()Lcom/vivox/sdk/JniServices;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/vivox/sdk/JniServices;->setContext(Landroid/content/Context;)V

    .line 78
    new-instance p0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;

    invoke-direct {p0, p1, p2}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;->setProperties(Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;)V

    if-eqz p2, :cond_5

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    .line 87
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "/ca-bundle.crt"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 89
    :try_start_3
    invoke-static {p2, v2}, Lcom/vivox/sdk/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    .line 96
    invoke-static {p0}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p2, p0, v0

    .line 97
    invoke-static {p0}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object p3, v2

    goto :goto_4

    :catch_0
    move-exception p0

    move-object p3, v2

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p2, p3

    goto :goto_4

    :catch_2
    move-exception p0

    move-object p2, p3

    .line 93
    :goto_3
    :try_start_4
    invoke-static {p0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p3, p0, v0

    .line 96
    invoke-static {p0}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p2, p0, v0

    .line 97
    invoke-static {p0}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return v0

    :catchall_2
    move-exception p0

    :goto_4
    new-array p1, v1, [Ljava/io/Closeable;

    aput-object p3, p1, v0

    .line 96
    invoke-static {p1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object p2, p1, v0

    .line 97
    invoke-static {p1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 98
    throw p0

    :cond_5
    :goto_5
    new-array p0, v1, [I

    aput v0, p0, v0

    .line 104
    invoke-static {}, Lcom/vivox/sdk/HttpRequestProcessorAdapter;->getInstance()Lcom/vivox/sdk/HttpRequestProcessorAdapter;

    move-result-object v2

    .line 105
    invoke-static {}, Lcom/vivox/sdk/CryptoFunctionsAdapter;->getInstance()Lcom/vivox/sdk/CryptoFunctionsAdapter;

    move-result-object v3

    .line 106
    invoke-static {}, Lcom/vivox/sdk/HttpUrlAdapter;->getInstance()Lcom/vivox/sdk/HttpUrlAdapter;

    move-result-object v4

    .line 107
    invoke-static {}, Lcom/vivox/sdk/Network;->getInstance()Lcom/vivox/sdk/Network;

    move-result-object v5

    .line 108
    invoke-static {}, Lcom/vivox/sdk/AndroidAudioBridge;->getInstance()Lcom/vivox/sdk/AndroidAudioBridge;

    move-result-object v6

    .line 109
    invoke-static {}, Lcom/vivox/sdk/JniServices;->getInstance()Lcom/vivox/sdk/JniServices;

    move-result-object v7

    move-object v8, p0

    .line 103
    invoke-static/range {v2 .. v8}, Lcom/vivox/sdk/jni/JavaServices;->Initialize(Lcom/vivox/sdk/jni/HttpRequestProcessorBase;Lcom/vivox/sdk/jni/ICryptoFunctions;Lcom/vivox/sdk/jni/IHttpUrl;Lcom/vivox/sdk/jni/INetwork;Lcom/vivox/sdk/jni/IAndroidAudioBridge;Lcom/vivox/sdk/jni/IJniServices;[I)V

    aget p2, p0, v0

    if-lez p2, :cond_6

    .line 113
    sget-object v2, Lcom/vivox/sdk/JniHelpers;->sMemoryConsumptionTimer:Ljava/util/Timer;

    new-instance v3, Lcom/vivox/sdk/JniHelpers$1;

    invoke-direct {v3, p1}, Lcom/vivox/sdk/JniHelpers$1;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x3e8

    aget p0, p0, v0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v6, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 134
    :cond_6
    sput-boolean v1, Lcom/vivox/sdk/JniHelpers;->sInitialized:Z

    return v1

    :catch_3
    move-exception p0

    .line 71
    invoke-static {p0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    return v0
.end method
