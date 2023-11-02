.class public final Lcom/vivox/sdk/HttpUrlAdapter;
.super Lcom/vivox/sdk/jni/IHttpUrl;
.source "HttpUrlAdapter.java"


# static fields
.field private static final ourInstance:Lcom/vivox/sdk/HttpUrlAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/vivox/sdk/HttpUrlAdapter;

    invoke-direct {v0}, Lcom/vivox/sdk/HttpUrlAdapter;-><init>()V

    sput-object v0, Lcom/vivox/sdk/HttpUrlAdapter;->ourInstance:Lcom/vivox/sdk/HttpUrlAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/vivox/sdk/jni/IHttpUrl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivox/sdk/HttpUrlAdapter;
    .locals 1

    .line 9
    sget-object v0, Lcom/vivox/sdk/HttpUrlAdapter;->ourInstance:Lcom/vivox/sdk/HttpUrlAdapter;

    return-object v0
.end method


# virtual methods
.method public urlDecode([B)[B
    .locals 2

    .line 22
    invoke-static {}, Lcom/vivox/sdk/HttpUrl;->getInstance()Lcom/vivox/sdk/HttpUrl;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/vivox/sdk/HttpUrl;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public urlEncode([B)[B
    .locals 2

    .line 17
    invoke-static {}, Lcom/vivox/sdk/HttpUrl;->getInstance()Lcom/vivox/sdk/HttpUrl;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/vivox/sdk/HttpUrl;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method
