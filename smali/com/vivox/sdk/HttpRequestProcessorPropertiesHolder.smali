.class Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;
.super Ljava/lang/Object;
.source "HttpRequestProcessorPropertiesHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesDummy;,
        Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesAndroid;,
        Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;
    }
.end annotation


# static fields
.field private static mProperties:Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesDummy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorPropertiesDummy;-><init>(Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$1;)V

    sput-object v0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;->mProperties:Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProperties()Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;
    .locals 1

    .line 71
    sget-object v0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;->mProperties:Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;

    return-object v0
.end method

.method public static setProperties(Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;)V
    .locals 0

    .line 75
    sput-object p0, Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder;->mProperties:Lcom/vivox/sdk/HttpRequestProcessorPropertiesHolder$HttpRequestProcessorProperties;

    return-void
.end method
