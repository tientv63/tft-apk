.class Lcom/vivox/sdk/HttpRequestProcessor$HttpRequestProcessorHolder;
.super Ljava/lang/Object;
.source "HttpRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/HttpRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpRequestProcessorHolder"
.end annotation


# static fields
.field private static final instance:Lcom/vivox/sdk/HttpRequestProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivox/sdk/HttpRequestProcessor;-><init>(Lcom/vivox/sdk/HttpRequestProcessor$1;)V

    sput-object v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequestProcessorHolder;->instance:Lcom/vivox/sdk/HttpRequestProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/vivox/sdk/HttpRequestProcessor;
    .locals 1

    .line 86
    sget-object v0, Lcom/vivox/sdk/HttpRequestProcessor$HttpRequestProcessorHolder;->instance:Lcom/vivox/sdk/HttpRequestProcessor;

    return-object v0
.end method
