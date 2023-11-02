.class final Lcom/vivox/sdk/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs close([Ljava/io/Closeable;)V
    .locals 3

    .line 68
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 71
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 73
    invoke-static {p0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 29
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method static copyNoMoreThan(Ljava/io/InputStream;Ljava/io/OutputStream;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 56
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    sub-int v4, p2, v2

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v0, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    if-le v2, p2, :cond_0

    return v1

    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/4 p0, 0x1

    return p0
.end method

.method static fileContent(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 98
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-static {v4}, Lcom/vivox/sdk/Utils;->streamContent(Ljava/io/InputStream;)[B

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v1

    aput-object p0, v2, v0

    .line 106
    invoke-static {v2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object v3

    :catch_0
    move-exception v5

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v4, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v4, v3

    move-object v3, p0

    move-object p0, v4

    goto :goto_1

    :catch_2
    move-exception v5

    move-object p0, v3

    move-object v4, p0

    .line 103
    :goto_0
    :try_start_3
    invoke-static {v5}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v1

    aput-object p0, v2, v0

    .line 106
    invoke-static {v2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object v3

    :catchall_2
    move-exception v3

    :goto_1
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v1

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 107
    throw v3
.end method

.method static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 112
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 114
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 115
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 19
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

.method static isEmpty([B)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 23
    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    if-ne v2, v1, :cond_1

    aget-byte p0, p0, v0

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method static isValidHexString([B)Z
    .locals 5

    .line 121
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 124
    :cond_0
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-byte v3, p0, v2

    const/16 v4, 0x30

    if-gt v4, v3, :cond_1

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x61

    if-gt v4, v3, :cond_2

    const/16 v4, 0x66

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x41

    if-gt v4, v3, :cond_4

    const/16 v4, 0x46

    if-le v3, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method static streamContent(Ljava/io/InputStream;)[B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    invoke-static {p0, v3}, Lcom/vivox/sdk/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 85
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v3, v0, v1

    .line 90
    invoke-static {v0}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v3, v0

    .line 87
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    .line 90
    invoke-static {p0}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v3

    :goto_1
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 91
    throw p0
.end method
