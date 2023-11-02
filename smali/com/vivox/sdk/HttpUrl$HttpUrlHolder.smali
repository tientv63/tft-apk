.class Lcom/vivox/sdk/HttpUrl$HttpUrlHolder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpUrlHolder"
.end annotation


# static fields
.field private static final instance:Lcom/vivox/sdk/HttpUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/vivox/sdk/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivox/sdk/HttpUrl;-><init>(Lcom/vivox/sdk/HttpUrl$1;)V

    sput-object v0, Lcom/vivox/sdk/HttpUrl$HttpUrlHolder;->instance:Lcom/vivox/sdk/HttpUrl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/vivox/sdk/HttpUrl;
    .locals 1

    .line 11
    sget-object v0, Lcom/vivox/sdk/HttpUrl$HttpUrlHolder;->instance:Lcom/vivox/sdk/HttpUrl;

    return-object v0
.end method
