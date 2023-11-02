.class final Lcom/vivox/sdk/Network;
.super Lcom/vivox/sdk/jni/INetwork;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/Network$NetworkHolder;,
        Lcom/vivox/sdk/Network$TlsSocket;
    }
.end annotation


# static fields
.field private static sSockets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/vivox/sdk/Network$TlsSocket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInetAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 441
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/vivox/sdk/Network;->sSockets:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/vivox/sdk/jni/INetwork;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivox/sdk/Network;->mInetAddresses:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/vivox/sdk/Network;
    .locals 1

    .line 503
    invoke-static {}, Lcom/vivox/sdk/Network$NetworkHolder;->access$300()Lcom/vivox/sdk/Network;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createTlsSocket(ILjava/lang/String;JZ)I
    .locals 1

    .line 448
    :try_start_0
    new-instance v0, Lcom/vivox/sdk/Network$TlsSocket;

    long-to-int p3, p3

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/vivox/sdk/Network$TlsSocket;-><init>(ILjava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    monitor-enter p0

    .line 454
    :try_start_1
    sget-object p2, Lcom/vivox/sdk/Network;->sSockets:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    .line 450
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public declared-synchronized destroyTlsSocket(I)V
    .locals 1

    monitor-enter p0

    .line 491
    :try_start_0
    sget-object v0, Lcom/vivox/sdk/Network;->sSockets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivox/sdk/Network$TlsSocket;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/vivox/sdk/Network$TlsSocket;->close()V

    .line 494
    sget-object v0, Lcom/vivox/sdk/Network;->sSockets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush(I)V
    .locals 1

    monitor-enter p0

    .line 483
    :try_start_0
    sget-object v0, Lcom/vivox/sdk/Network;->sSockets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivox/sdk/Network$TlsSocket;

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/vivox/sdk/Network$TlsSocket;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getApplicationUUID()[B
    .locals 11

    .line 124
    iget-object v0, p0, Lcom/vivox/sdk/Network;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vivox_uuid.txt"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 128
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v7, 0x20

    :try_start_2
    new-array v8, v7, [B

    .line 131
    invoke-virtual {v6, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    if-ne v9, v7, :cond_0

    invoke-static {v8}, Lcom/vivox/sdk/Utils;->isValidHexString([B)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_0

    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v6, v1, v2

    aput-object v0, v1, v5

    .line 152
    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object v8

    :cond_0
    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v6, v3, v2

    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    goto/16 :goto_4

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :catch_1
    move-exception v6

    move-object v10, v6

    move-object v6, v3

    move-object v3, v10

    goto :goto_0

    :catch_2
    move-object v6, v3

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v0, v3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    .line 150
    :goto_0
    :try_start_3
    invoke-static {v3}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v6, v3, v2

    aput-object v0, v3, v5

    .line 152
    invoke-static {v3}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v3, v6

    goto :goto_3

    :catch_4
    move-object v0, v3

    move-object v6, v0

    .line 137
    :catch_5
    :goto_1
    :try_start_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    .line 138
    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    const-string v9, ""

    .line 139
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 141
    iget-object v8, p0, Lcom/vivox/sdk/Network;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 142
    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v3, v1, v2

    .line 147
    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v6, v1, v2

    aput-object v0, v1, v5

    .line 152
    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object v7

    :catchall_3
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v7

    .line 145
    :try_start_6
    invoke-static {v7}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    new-array v7, v5, [Ljava/io/Closeable;

    aput-object v3, v7, v2

    .line 147
    invoke-static {v7}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    new-array v3, v4, [Ljava/io/Closeable;

    aput-object v6, v3, v2

    aput-object v0, v3, v5

    .line 152
    invoke-static {v3}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    goto :goto_4

    :goto_2
    :try_start_8
    new-array v7, v5, [Ljava/io/Closeable;

    aput-object v3, v7, v2

    .line 147
    invoke-static {v7}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 148
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v3, v4, v2

    aput-object v0, v4, v5

    .line 152
    invoke-static {v4}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 153
    throw v1

    .line 155
    :cond_1
    :goto_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "failed to delete UUID file"

    .line 158
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/String;)V

    :cond_2
    new-array v0, v2, [B

    return-object v0
.end method

.method public getCacheFolder()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/vivox/sdk/Network;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "."

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getCarrier()[B
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/vivox/sdk/Network;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "phone"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getCountry()[B
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/vivox/sdk/Network;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "phone"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    .line 68
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(I)[B
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/vivox/sdk/Network;->mInetAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vivox/sdk/Network;->mInetAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public getNetworkType()[B
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/vivox/sdk/Network;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "connectivity"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getNumIpAddresses()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/vivox/sdk/Network;->mInetAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public refreshIpAddresses()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/vivox/sdk/Network;->mInetAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 91
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 95
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 98
    iget-object v3, p0, Lcom/vivox/sdk/Network;->mInetAddresses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/vivox/sdk/Network;->mContext:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized upgradeToSsl(ILjava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 474
    :try_start_0
    sget-object v0, Lcom/vivox/sdk/Network;->sSockets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivox/sdk/Network$TlsSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 476
    monitor-exit p0

    return p1

    .line 478
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/vivox/sdk/Network$TlsSocket;->upgradeToSsl(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeData(I[B)I
    .locals 1

    monitor-enter p0

    .line 462
    :try_start_0
    sget-object v0, Lcom/vivox/sdk/Network;->sSockets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivox/sdk/Network$TlsSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 464
    monitor-exit p0

    return v0

    .line 466
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/vivox/sdk/Network$TlsSocket;->writeData([B)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 467
    monitor-exit p0

    return v0

    .line 469
    :cond_1
    :try_start_2
    array-length p1, p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
