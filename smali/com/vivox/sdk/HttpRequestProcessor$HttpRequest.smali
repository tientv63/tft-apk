.class public Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/HttpRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequest"
.end annotation


# static fields
.field public static final HTTP_REQUEST_TYPE_FILE:I = 0x2

.field public static final HTTP_REQUEST_TYPE_GET:I = 0x0

.field public static final HTTP_REQUEST_TYPE_INVALID:I = 0x3

.field public static final HTTP_REQUEST_TYPE_POST:I = 0x1


# instance fields
.field public mConnectionTimeout:I

.field public mEncodeFileAsBase64:Z

.field public mEpilogue:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mHttpProxyPort:I

.field public mHttpProxyServer:Ljava/lang/String;

.field public mParamsList:Ljava/lang/String;

.field public mPostData:Ljava/lang/String;

.field public mPostFileTimeout:I

.field public mPrologue:Ljava/lang/String;

.field public mReadTimeout:I

.field public mRequestType:I

.field public mUploadSpeed:J

.field public mUrl:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 128
    iput v0, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mConnectionTimeout:I

    .line 129
    iput v0, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mReadTimeout:I

    const v0, 0xea60

    .line 130
    iput v0, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mPostFileTimeout:I

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequest;->mRequestType:I

    return-void
.end method
