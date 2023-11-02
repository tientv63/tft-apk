.class public Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;
.super Ljava/lang/Object;
.source "HttpRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/HttpRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpResponse"
.end annotation


# static fields
.field public static final HTTPS_ERROR_InvalidCertificate:I = 0x275d

.field public static final HTTPS_ERROR_Timeout:I = 0x272c

.field public static final HTTP_ERROR_BASE:I = 0x2710

.field public static final HTTP_ERROR_Cancelled:I = 0x1389

.field public static final HTTP_ERROR_FileIsTooBig:I = 0x2715

.field public static final HTTP_ERROR_IOException:I = 0x271c

.field public static final HTTP_ERROR_Internal:I = 0x2742

.field public static final HTTP_ERROR_MalformedUrlException:I = 0x271b

.field public static final HTTP_ERROR_OutputDirIsNotSet:I = 0x2717

.field public static final HTTP_ERROR_UnknownHostException:I = 0x2716

.field public static final HTTP_ERROR_WrongRequest:I = 0x2711

.field public static final HTTP_ERROR_WrongResponse:I = 0x2712

.field public static final HTTP_ERROR_WrongUrl:I = 0x2713


# instance fields
.field public final mContent:[B

.field public final mContentType:Ljava/lang/String;

.field public final mErrorCode:I

.field public final mResponseCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p1, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mErrorCode:I

    const/4 p1, 0x0

    .line 160
    iput p1, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mResponseCode:I

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mContentType:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mContent:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {p1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->getErrorFromResponseCode(I)I

    move-result v0

    iput v0, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mErrorCode:I

    .line 174
    iput p1, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mResponseCode:I

    .line 175
    iput-object p2, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mContentType:Ljava/lang/String;

    .line 176
    iput-object p3, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mContent:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->getErrorFromResponseCode(I)I

    move-result v0

    iput v0, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mErrorCode:I

    .line 167
    iput p1, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mResponseCode:I

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mContentType:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mContent:[B

    return-void
.end method

.method private static getErrorFromResponseCode(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getContentType()[B
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpResponse;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
