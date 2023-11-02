.class public Lcom/singular/sdk/internal/SingularParamsBase;
.super Lcom/singular/sdk/internal/SingularMap;
.source "SingularParamsBase.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected withDeviceInfo(Lcom/singular/sdk/internal/DeviceInfo;)Lcom/singular/sdk/internal/SingularParamsBase;
    .locals 6

    .line 10
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->packageName:Ljava/lang/String;

    const-string v1, "i"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->platform:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->amid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "aifa"

    const-string v2, "asid"

    const-string v3, "u"

    const-string v4, "k"

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->amid:Ljava/lang/String;

    const-string v5, "amid"

    invoke-virtual {p0, v5, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "AMID"

    .line 15
    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->amid:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 21
    :cond_0
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 22
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 24
    :cond_1
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "AIFA"

    .line 26
    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->aifa:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 28
    :cond_2
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->oaid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "OAID"

    .line 29
    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->oaid:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->oaid:Ljava/lang/String;

    const-string v1, "oaid"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 33
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_3
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 36
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->imei:Ljava/lang/String;

    const-string v1, "imei"

    invoke-virtual {p0, v1, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "IMEI"

    .line 37
    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_4
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ASID"

    .line 40
    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->asid:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_5
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->andi:Ljava/lang/String;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ANDI"

    .line 44
    invoke-virtual {p0, v4, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/singular/sdk/internal/DeviceInfo;->andi:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    iget-object p1, p1, Lcom/singular/sdk/internal/DeviceInfo;->andi:Ljava/lang/String;

    const-string v0, "andi"

    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/SingularParamsBase;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    :goto_0
    return-object p0
.end method
