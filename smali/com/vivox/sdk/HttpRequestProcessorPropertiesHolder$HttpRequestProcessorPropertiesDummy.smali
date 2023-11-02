.class Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesDummy;
.super Ljava/lang/Object;
.source "HttpRequestProcessorPropertiesHolder.java"

# interfaces
.implements Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpRequestProcessorPropertiesDummy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesDummy;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertFile()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputDir()Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCookieManagerAvail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
