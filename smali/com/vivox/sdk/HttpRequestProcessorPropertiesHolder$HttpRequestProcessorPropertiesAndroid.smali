.class public Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;
.super Ljava/lang/Object;
.source "HttpRequestProcessorPropertiesHolder.java"

# interfaces
.implements Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestProcessorPropertiesAndroid"
.end annotation


# instance fields
.field private final mCertFile:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;->mCertFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCertFile()Ljava/io/InputStream;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;->mCertFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivox/sdk/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 36
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;->mCertFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/vivox/sdk/Log;->e(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getOutputDir()Ljava/io/File;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public isCookieManagerAvail()Z
    .locals 2

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
