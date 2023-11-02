.class public interface abstract Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;
.super Ljava/lang/Object;
.source "HttpRequestProcessorPropertiesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpRequestProcessorProperties"
.end annotation


# virtual methods
.method public abstract getCertFile()Ljava/io/InputStream;
.end method

.method public abstract getOutputDir()Ljava/io/File;
.end method

.method public abstract isCookieManagerAvail()Z
.end method
