.class Lcom/singular/sdk/internal/ApiGDPRConsent$Params;
.super Lcom/singular/sdk/internal/SingularParamsBase;
.source "ApiGDPRConsent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singular/sdk/internal/ApiGDPRConsent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Params"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularParamsBase;-><init>()V

    return-void
.end method

.method static build(Lcom/singular/sdk/internal/SingularInstance;)Lcom/singular/sdk/internal/ApiGDPRConsent$Params;
    .locals 2

    .line 50
    new-instance v0, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;

    invoke-direct {v0}, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;-><init>()V

    .line 51
    invoke-direct {v0}, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;->withBaseParams()Lcom/singular/sdk/internal/ApiGDPRConsent$Params;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getSingularConfig()Lcom/singular/sdk/SingularConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;->withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiGDPRConsent$Params;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/singular/sdk/internal/SingularInstance;->getDeviceInfo()Lcom/singular/sdk/internal/DeviceInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiGDPRConsent$Params;

    move-result-object p0

    return-object p0
.end method

.method private withBaseParams()Lcom/singular/sdk/internal/ApiGDPRConsent$Params;
    .locals 2

    const-string v0, "op"

    const-string v1, "consent"

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method private withSingularConfig(Lcom/singular/sdk/SingularConfig;)Lcom/singular/sdk/internal/ApiGDPRConsent$Params;
    .locals 1

    .line 63
    iget-object p1, p1, Lcom/singular/sdk/SingularConfig;->apiKey:Ljava/lang/String;

    const-string v0, "a"

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiGDPRConsent$Params;
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;

    .line 69
    invoke-static {}, Lcom/singular/sdk/internal/Utils;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdk"

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method protected bridge synthetic withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/ApiGDPRConsent$Params;->withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/ApiGDPRConsent$Params;

    move-result-object p1

    return-object p1
.end method
