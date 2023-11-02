.class final Lcom/vivox/sdk/HttpRequestProcessor;
.super Ljava/lang/Object;
.source "HttpRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;,
        Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;,
        Lcom/vivox/sdk/HttpRequestProcessor$HttpRequestProcessorHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_POST_FILE_TIMEOUT:I = 0xea60

.field private static final DEFAULT_READ_TIMEOUT:I = 0x3a98

.field private static final EMPTY_CONTENT:[B

.field public static final MAX_DATA_SIZE:I = 0x100000

.field public static final MAX_UPLOAD_FILE_SIZE:I = 0x100000

.field private static final mSocksProxyServerSchemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mCancelled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFutures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/util/concurrent/Future<",
            "Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mSslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/vivox/sdk/HttpRequestProcessor;->EMPTY_CONTENT:[B

    .line 202
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessor$1;

    invoke-direct {v0}, Lcom/vivox/sdk/HttpRequestProcessor$1;-><init>()V

    sput-object v0, Lcom/vivox/sdk/HttpRequestProcessor;->mSocksProxyServerSchemes:Ljava/util/Set;

    .line 580
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/vivox/sdk/HttpRequestProcessor;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 582
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mCancelled:Ljava/util/Map;

    .line 81
    invoke-static {}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;->getProperties()Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;->isCookieManagerAvail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/vivox/sdk/HttpRequestProcessor;->setupCookieManager()V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/vivox/sdk/HttpRequestProcessor$1;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/vivox/sdk/HttpRequestProcessor;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/vivox/sdk/HttpRequestProcessor;Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->process_via_future(Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private downloadData(Ljava/net/HttpURLConnection;Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget v0, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mRequestType:I

    const/16 v1, 0xc8

    const-string v2, "GET"

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_0

    .line 411
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    const/16 p2, 0x2711

    invoke-direct {p1, p2}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    .line 372
    :cond_0
    iget v0, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPostFileTimeout:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 373
    iget p2, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPostFileTimeout:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 374
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 377
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 379
    invoke-static {}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;->getProperties()Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;->getOutputDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 383
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 390
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 391
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 392
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 393
    :try_start_3
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    :try_start_4
    invoke-static {v0, v8}, Lcom/vivox/sdk/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-array v4, v5, [Ljava/io/Closeable;

    aput-object v8, v4, v3

    aput-object v7, v4, v6

    .line 396
    invoke-static {v4}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array v4, v5, [Ljava/io/Closeable;

    aput-object v0, v4, v3

    aput-object p2, v4, v6

    .line 397
    invoke-static {v4}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 400
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    if-eq p2, v1, :cond_3

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to delete file "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/String;)V

    .line 405
    :cond_2
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    sget-object v0, Lcom/vivox/sdk/HttpRequestProcessor;->EMPTY_CONTENT:[B

    invoke-direct {p1, p2, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I[B)V

    return-object p1

    .line 408
    :cond_3
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/vivox/sdk/HttpRequestProcessor;->EMPTY_CONTENT:[B

    invoke-direct {v0, p2, p1, v1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(ILjava/lang/String;[B)V

    return-object v0

    :catchall_0
    move-exception p1

    move-object v4, v8

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v7, v4

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object v0, v4

    goto :goto_0

    :catchall_4
    move-exception p1

    move-object p2, v4

    move-object v0, p2

    :goto_0
    move-object v7, v0

    :goto_1
    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v4, v1, v3

    aput-object v7, v1, v6

    .line 396
    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object v0, v1, v3

    aput-object p2, v1, v6

    .line 397
    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 398
    throw p1

    .line 381
    :cond_4
    :goto_2
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    const/16 p2, 0x2717

    invoke-direct {p1, p2}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    :cond_5
    const-string v0, "POST"

    .line 348
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 350
    iget-object v0, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPostData:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "Content-Type"

    if-eqz v0, :cond_6

    const-string v0, "application/x-www-form-urlencoded"

    .line 351
    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object p2, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mParamsList:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string v0, "text/xml"

    .line 354
    invoke-virtual {p1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object p2, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPostData:Ljava/lang/String;

    .line 358
    :goto_3
    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 359
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 363
    :try_start_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 364
    :try_start_6
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 365
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    new-array p2, v5, [Ljava/io/Closeable;

    aput-object v2, p2, v3

    aput-object v0, p2, v6

    .line 367
    invoke-static {p2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_5
    move-exception p1

    move-object v4, v2

    goto :goto_4

    :catchall_6
    move-exception p1

    goto :goto_4

    :catchall_7
    move-exception p1

    move-object v0, v4

    :goto_4
    new-array p2, v5, [Ljava/io/Closeable;

    aput-object v4, p2, v3

    aput-object v0, p2, v6

    invoke-static {p2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 368
    throw p1

    .line 344
    :cond_7
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 415
    :goto_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v0, 0x190

    if-lt p2, v0, :cond_8

    .line 417
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    sget-object v0, Lcom/vivox/sdk/HttpRequestProcessor;->EMPTY_CONTENT:[B

    invoke-direct {p1, p2, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I[B)V

    return-object p1

    .line 420
    :cond_8
    invoke-direct {p0, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->getContent(Ljava/net/HttpURLConnection;)[B

    move-result-object v0

    if-nez v0, :cond_9

    .line 422
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    const/16 p2, 0x2715

    invoke-direct {p1, p2}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    .line 425
    :cond_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    if-eq v1, p2, :cond_a

    .line 427
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, p2, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I[B)V

    return-object p1

    .line 429
    :cond_a
    new-instance v1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {v1, p2, p1, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(ILjava/lang/String;[B)V

    return-object v1
.end method

.method private getContent(Ljava/net/HttpURLConnection;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 237
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 238
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 239
    :try_start_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    :try_start_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    const/high16 v8, 0x100000

    if-le v7, v8, :cond_0

    .line 242
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v6, p1, v2

    .line 264
    invoke-static {p1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v5, p1, v2

    aput-object v4, p1, v3

    .line 265
    invoke-static {p1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object v1

    .line 251
    :cond_0
    :try_start_4
    invoke-static {v5, v6, v8}, Lcom/vivox/sdk/Utils;->copyNoMoreThan(Ljava/io/InputStream;Ljava/io/OutputStream;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 252
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v6, p1, v2

    .line 264
    invoke-static {p1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v5, p1, v2

    aput-object v4, p1, v3

    .line 265
    invoke-static {p1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object v1

    .line 262
    :cond_1
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    new-array v1, v3, [Ljava/io/Closeable;

    aput-object v6, v1, v2

    .line 264
    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v5, v0, v2

    aput-object v4, v0, v3

    .line 265
    invoke-static {v0}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v6

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v5, v1

    goto :goto_0

    :catchall_3
    move-exception p1

    move-object v4, v1

    move-object v5, v4

    :goto_0
    new-array v6, v3, [Ljava/io/Closeable;

    aput-object v1, v6, v2

    .line 264
    invoke-static {v6}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v5, v0, v2

    aput-object v4, v0, v3

    .line 265
    invoke-static {v0}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 266
    throw p1
.end method

.method public static getInstance()Lcom/vivox/sdk/HttpRequestProcessor;
    .locals 1

    .line 91
    invoke-static {}, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequestProcessorHolder;->access$100()Lcom/vivox/sdk/HttpRequestProcessor;

    move-result-object v0

    return-object v0
.end method

.method private getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 9

    .line 436
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mSslContext:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    :try_start_0
    invoke-static {}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;->getProperties()Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;

    move-result-object v3

    invoke-interface {v3}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;->getCertFile()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_0

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    .line 502
    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    return-object v2

    .line 447
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v5, "X.509"

    .line 448
    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 449
    invoke-virtual {v5, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 452
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    .line 454
    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 455
    invoke-virtual {v6, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v7, "ca"

    .line 456
    invoke-virtual {v6, v7, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 459
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 461
    invoke-virtual {v5, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v6, "TLS"

    .line 464
    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 465
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    .line 493
    invoke-virtual {v6, v2, v5, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 495
    iput-object v6, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mSslContext:Ljavax/net/ssl/SSLContext;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-array v2, v1, [Ljava/io/Closeable;

    aput-object v4, v2, v0

    .line 497
    invoke-static {v2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    .line 502
    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    :goto_0
    :try_start_4
    new-array v5, v1, [Ljava/io/Closeable;

    aput-object v4, v5, v0

    .line 497
    invoke-static {v5}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 498
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_2

    :catchall_2
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_1

    :catch_6
    move-exception v3

    goto :goto_1

    :catch_7
    move-exception v3

    goto :goto_1

    :catch_8
    move-exception v3

    goto :goto_1

    :catch_9
    move-exception v3

    :goto_1
    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 500
    :goto_2
    :try_start_5
    invoke-static {v2}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    .line 502
    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_3
    move-exception v2

    :goto_3
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 503
    throw v2

    .line 506
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mSslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private isCancelled(I)Z
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mCancelled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 589
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private process_via_future(Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;
    .locals 5

    const/16 v0, 0x271c

    const/16 v1, 0x275d

    .line 516
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->getProxy(Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    .line 518
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-nez v3, :cond_0

    .line 519
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    const/16 v2, 0x2713

    invoke-direct {p1, v2}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    .line 521
    :cond_0
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 523
    iget v3, p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mConnectionTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 524
    iget v3, p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mReadTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    .line 526
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v3, "User-Agent"

    .line 527
    iget-object v4, p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_1

    .line 530
    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 531
    invoke-direct {p0}, Lcom/vivox/sdk/HttpRequestProcessor;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 533
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 544
    :cond_1
    iget-object v3, p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 545
    invoke-direct {p0, v2, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->uploadFile(Ljava/net/HttpURLConnection;Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    move-result-object p1

    return-object p1

    .line 547
    :cond_2
    invoke-direct {p0, v2, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->downloadData(Ljava/net/HttpURLConnection;Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 570
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 571
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "^Hostname \'.*\' was not verified$"

    .line 572
    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 573
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, v1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    .line 575
    :cond_3
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    :catch_1
    move-exception p1

    .line 567
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 568
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    :catch_2
    move-exception p1

    .line 562
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 563
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    const/16 v0, 0x272c

    invoke-direct {p1, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    :catch_3
    move-exception p1

    .line 559
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 560
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, v1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    :catch_4
    move-exception p1

    .line 556
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 557
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, v1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    :catch_5
    move-exception p1

    .line 553
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 554
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    const/16 v0, 0x271b

    invoke-direct {p1, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    .line 551
    :catch_6
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    const/16 v0, 0x2716

    invoke-direct {p1, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1
.end method

.method private static setupCookieManager()V
    .locals 1

    .line 77
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    return-void
.end method

.method private uploadFile(Ljava/net/HttpURLConnection;Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 271
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "PUT"

    .line 272
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v4, v2, v4

    const/16 v5, 0x2715

    if-lez v4, :cond_0

    .line 275
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, v5}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    .line 277
    :cond_0
    iget-boolean v4, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mEncodeFileAsBase64:Z

    if-eqz v4, :cond_1

    const-wide/16 v6, 0x3

    mul-long/2addr v2, v6

    add-long/2addr v2, v6

    const-wide/16 v6, 0x4

    .line 278
    div-long/2addr v2, v6

    .line 281
    :cond_1
    iget-object v4, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPrologue:Ljava/lang/String;

    invoke-static {v4}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    iget-object v4, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPrologue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    .line 284
    :cond_2
    iget-object v4, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mEpilogue:Ljava/lang/String;

    invoke-static {v4}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 285
    iget-object v4, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mEpilogue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v6, v4

    add-long/2addr v2, v6

    :cond_3
    long-to-int v2, v2

    .line 287
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v2, "Content-Type"

    const-string v3, "text/xml"

    .line 289
    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 297
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 298
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 299
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 300
    :try_start_3
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 301
    :try_start_4
    iget-object v2, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPrologue:Ljava/lang/String;

    invoke-static {v2}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 302
    iget-object v2, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPrologue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 304
    :cond_4
    iget-boolean v2, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mEncodeFileAsBase64:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 307
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_5

    .line 308
    invoke-static {v2, v4, v9, v3}, Landroid/util/Base64;->encode([BIII)[B

    move-result-object v9

    .line 309
    array-length v10, v9

    invoke-virtual {v7, v9, v4, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 311
    :cond_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    .line 313
    :cond_6
    invoke-static {v0, v8}, Lcom/vivox/sdk/Utils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 315
    :goto_1
    iget-object v2, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mEpilogue:Ljava/lang/String;

    invoke-static {v2}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 316
    iget-object p2, p2, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mEpilogue:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    new-array p2, v3, [Ljava/io/Closeable;

    aput-object v8, p2, v4

    aput-object v7, p2, v1

    .line 319
    invoke-static {p2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array p2, v3, [Ljava/io/Closeable;

    aput-object v0, p2, v4

    aput-object v6, p2, v1

    .line 320
    invoke-static {p2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 323
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v0, 0x190

    if-lt p2, v0, :cond_8

    .line 325
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    sget-object v0, Lcom/vivox/sdk/HttpRequestProcessor;->EMPTY_CONTENT:[B

    invoke-direct {p1, p2, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I[B)V

    return-object p1

    .line 328
    :cond_8
    invoke-direct {p0, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->getContent(Ljava/net/HttpURLConnection;)[B

    move-result-object v0

    if-nez v0, :cond_9

    .line 330
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, v5}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    return-object p1

    .line 333
    :cond_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xc8

    if-eq v1, p2, :cond_a

    .line 335
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, p2, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I[B)V

    return-object p1

    .line 337
    :cond_a
    new-instance v1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {v1, p2, p1, v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(ILjava/lang/String;[B)V

    return-object v1

    :catchall_0
    move-exception p1

    move-object v2, v8

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v7, v2

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v0, v2

    move-object v7, v0

    goto :goto_2

    :catchall_4
    move-exception p1

    move-object v0, v2

    move-object v6, v0

    move-object v7, v6

    :goto_2
    new-array p2, v3, [Ljava/io/Closeable;

    aput-object v2, p2, v4

    aput-object v7, p2, v1

    .line 319
    invoke-static {p2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    new-array p2, v3, [Ljava/io/Closeable;

    aput-object v0, p2, v4

    aput-object v6, p2, v1

    .line 320
    invoke-static {p2}, Lcom/vivox/sdk/Utils;->close([Ljava/io/Closeable;)V

    .line 321
    throw p1
.end method


# virtual methods
.method public cancel(I)V
    .locals 4

    .line 635
    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mCancelled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 639
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 642
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getProxy(Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Ljava/net/Proxy;
    .locals 3

    .line 213
    iget-object v0, p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mHttpProxyServer:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mHttpProxyServer:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mHttpProxyServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 219
    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iget p1, p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mHttpProxyPort:I

    invoke-direct {v1, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 220
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    .line 221
    sget-object v0, Lcom/vivox/sdk/HttpRequestProcessor;->mSocksProxyServerSchemes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    new-instance p1, Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    invoke-direct {p1, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object p1

    .line 224
    :cond_1
    new-instance p1, Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {p1, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 226
    invoke-static {p1}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 229
    :cond_2
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object p1
.end method

.method public process(ILcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;
    .locals 4

    .line 594
    monitor-enter p0

    .line 595
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->isCancelled(I)Z

    move-result v0

    const/16 v1, 0x1389

    if-eqz v0, :cond_0

    .line 596
    new-instance p1, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {p1, v1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    monitor-exit p0

    return-object p1

    .line 598
    :cond_0
    sget-object v0, Lcom/vivox/sdk/HttpRequestProcessor;->sExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/vivox/sdk/HttpRequestProcessor$2;

    invoke-direct {v2, p0, p2}, Lcom/vivox/sdk/HttpRequestProcessor$2;-><init>(Lcom/vivox/sdk/HttpRequestProcessor;Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 604
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_1
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 611
    :try_start_1
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    .line 612
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 613
    :try_start_2
    invoke-direct {p0, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->isCancelled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {v0, v1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 628
    monitor-enter p0

    .line 629
    :try_start_3
    iget-object v1, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 630
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 616
    :cond_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 628
    monitor-enter p0

    .line 629
    :try_start_5
    iget-object v1, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 630
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception v0

    .line 616
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 625
    :try_start_8
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 626
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    const/16 v1, 0x2742

    invoke-direct {v0, v1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 628
    monitor-enter p0

    .line 629
    :try_start_9
    iget-object v1, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 630
    monitor-exit p0

    return-object v0

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p1

    :catch_1
    move-exception v0

    .line 622
    :try_start_a
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 623
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {v0, v1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 628
    monitor-enter p0

    .line 629
    :try_start_b
    iget-object v1, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 630
    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw p1

    :catch_2
    move-exception v0

    .line 619
    :try_start_c
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    .line 620
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    invoke-direct {v0, v1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;-><init>(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 628
    monitor-enter p0

    .line 629
    :try_start_d
    iget-object v1, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 630
    monitor-exit p0

    return-object v0

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p1

    .line 628
    :goto_0
    monitor-enter p0

    .line 629
    :try_start_e
    iget-object v1, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mFutures:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 630
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 631
    throw v0

    :catchall_7
    move-exception p1

    .line 630
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw p1

    :catchall_8
    move-exception p1

    .line 608
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw p1
.end method

.method resetSslContext()V
    .locals 1

    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mSslContext:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public reuse(I)V
    .locals 1

    .line 646
    monitor-enter p0

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor;->mCancelled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
