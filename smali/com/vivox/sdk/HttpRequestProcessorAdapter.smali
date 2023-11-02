.class public final Lcom/vivox/sdk/HttpRequestProcessorAdapter;
.super Lcom/vivox/sdk/jni/HttpRequestProcessorBase;
.source "HttpRequestProcessorAdapter.java"


# static fields
.field private static final sInstance:Lcom/vivox/sdk/HttpRequestProcessorAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessorAdapter;

    invoke-direct {v0}, Lcom/vivox/sdk/HttpRequestProcessorAdapter;-><init>()V

    sput-object v0, Lcom/vivox/sdk/HttpRequestProcessorAdapter;->sInstance:Lcom/vivox/sdk/HttpRequestProcessorAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivox/sdk/HttpRequestProcessorAdapter;
    .locals 1

    .line 9
    sget-object v0, Lcom/vivox/sdk/HttpRequestProcessorAdapter;->sInstance:Lcom/vivox/sdk/HttpRequestProcessorAdapter;

    return-object v0
.end method


# virtual methods
.method public cancel(I)Z
    .locals 1

    .line 66
    invoke-static {}, Lcom/vivox/sdk/HttpRequestProcessor;->getInstance()Lcom/vivox/sdk/HttpRequestProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->cancel(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public process(I[B[BI[B[B[BZJ[B[BI[B[I[I[[B[[B)Z
    .locals 3

    .line 38
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;

    invoke-direct {v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;-><init>()V

    .line 40
    new-instance v1, Ljava/lang/String;

    move-object v2, p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mUrl:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/lang/String;

    move-object v2, p3

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mParamsList:Ljava/lang/String;

    move v1, p4

    .line 42
    iput v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mRequestType:I

    .line 43
    new-instance v1, Ljava/lang/String;

    move-object v2, p5

    invoke-direct {v1, p5}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPrologue:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/lang/String;

    move-object v2, p6

    invoke-direct {v1, p6}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mEpilogue:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/String;

    move-object v2, p7

    invoke-direct {v1, p7}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mFilePath:Ljava/lang/String;

    move v1, p8

    .line 46
    iput-boolean v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mEncodeFileAsBase64:Z

    move-wide v1, p9

    .line 47
    iput-wide v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mUploadSpeed:J

    .line 48
    new-instance v1, Ljava/lang/String;

    move-object v2, p11

    invoke-direct {v1, p11}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPostData:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/lang/String;

    move-object v2, p12

    invoke-direct {v1, p12}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mHttpProxyServer:Ljava/lang/String;

    move/from16 v1, p13

    .line 50
    iput v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mHttpProxyPort:I

    .line 51
    new-instance v1, Ljava/lang/String;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mUserAgent:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/vivox/sdk/HttpRequestProcessor;->getInstance()Lcom/vivox/sdk/HttpRequestProcessor;

    move-result-object v1

    move v2, p1

    invoke-virtual {v1, p1, v0}, Lcom/vivox/sdk/HttpRequestProcessor;->process(ILcom/vivox/sdk/HttpRequestProcessor$HttpRequest;)Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;

    move-result-object v0

    .line 56
    iget v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mErrorCode:I

    const/4 v2, 0x0

    aput v1, p15, v2

    .line 57
    iget v1, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mResponseCode:I

    aput v1, p16, v2

    .line 58
    invoke-virtual {v0}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->getContentType()[B

    move-result-object v1

    aput-object v1, p17, v2

    .line 59
    iget-object v0, v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mContent:[B

    aput-object v0, p18, v2

    const/4 v0, 0x1

    return v0
.end method

.method public reuse(I)Z
    .locals 1

    .line 72
    invoke-static {}, Lcom/vivox/sdk/HttpRequestProcessor;->getInstance()Lcom/vivox/sdk/HttpRequestProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivox/sdk/HttpRequestProcessor;->reuse(I)V

    const/4 p1, 0x1

    return p1
.end method
