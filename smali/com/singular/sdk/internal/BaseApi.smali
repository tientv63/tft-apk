.class abstract Lcom/singular/sdk/internal/BaseApi;
.super Lcom/singular/sdk/internal/SingularMap;
.source "BaseApi.java"

# interfaces
.implements Lcom/singular/sdk/internal/Api;


# static fields
.field static final TIMESTAMP_KEY:Ljava/lang/String; = "__TIMESTAMP__"

.field static final TYPE_KEY:Ljava/lang/String; = "__TYPE__"

.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BaseApi"

    .line 48
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/BaseApi;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/singular/sdk/internal/SingularMap;-><init>()V

    const-string v0, "__TYPE__"

    .line 55
    invoke-virtual {p0, v0, p1}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "__TIMESTAMP__"

    invoke-virtual {p0, p2, p1}, Lcom/singular/sdk/internal/BaseApi;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/singular/sdk/internal/BaseApi;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 144
    invoke-static {p0}, Lcom/singular/sdk/internal/BaseApi;->fromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "__TYPE__"

    .line 145
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "__TIMESTAMP__"

    .line 146
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    invoke-static {v1}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    const-string v3, "EVENT"

    .line 150
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    new-instance v0, Lcom/singular/sdk/internal/ApiSubmitEvent;

    invoke-direct {v0, v1, v2}, Lcom/singular/sdk/internal/ApiSubmitEvent;-><init>(J)V

    .line 152
    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/BaseApi;->addParams(Ljava/util/Map;)V

    return-object v0

    :cond_1
    const-string v3, "SESSION_START"

    .line 156
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    new-instance v0, Lcom/singular/sdk/internal/ApiStartSession;

    invoke-direct {v0, v1, v2}, Lcom/singular/sdk/internal/ApiStartSession;-><init>(J)V

    .line 158
    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/BaseApi;->addParams(Ljava/util/Map;)V

    return-object v0

    :cond_2
    const-string v3, "GDPR_CONSENT"

    .line 162
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    new-instance v0, Lcom/singular/sdk/internal/ApiGDPRConsent;

    invoke-direct {v0, v1, v2}, Lcom/singular/sdk/internal/ApiGDPRConsent;-><init>(J)V

    .line 164
    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/BaseApi;->addParams(Ljava/util/Map;)V

    return-object v0

    :cond_3
    const-string v3, "GDPR_UNDER_13"

    .line 168
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 169
    new-instance v0, Lcom/singular/sdk/internal/ApiGDPRUnder13;

    invoke-direct {v0, v1, v2}, Lcom/singular/sdk/internal/ApiGDPRUnder13;-><init>(J)V

    .line 170
    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/BaseApi;->addParams(Ljava/util/Map;)V

    return-object v0

    :cond_4
    const-string v3, "CUSTOM_USER_ID"

    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 175
    new-instance v0, Lcom/singular/sdk/internal/ApiCustomUserId;

    invoke-direct {v0, v1, v2}, Lcom/singular/sdk/internal/ApiCustomUserId;-><init>(J)V

    .line 176
    invoke-virtual {v0, p0}, Lcom/singular/sdk/internal/BaseApi;->addParams(Ljava/util/Map;)V

    return-object v0

    .line 180
    :cond_5
    new-instance p0, Ljava/util/InvalidPropertiesFormatException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Unknown type = %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/InvalidPropertiesFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "api string cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static fromString(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 196
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 197
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 204
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method addParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/singular/sdk/internal/BaseApi;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method getParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "__TYPE__"

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "__TIMESTAMP__"

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    const-string v0, "__TIMESTAMP__"

    .line 110
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/BaseApi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "__TYPE__"

    .line 105
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/BaseApi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sdk-api-v1.singular.net/api/v1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/singular/sdk/internal/BaseApi;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdmonEvent()Z
    .locals 2

    :try_start_0
    const-string v0, "e"

    .line 76
    invoke-virtual {p0, v0}, Lcom/singular/sdk/internal/BaseApi;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "is_admon_revenue"

    .line 80
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/singular/sdk/internal/BaseApi;->logger:Lcom/singular/sdk/internal/SingularLog;

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeRequest(Lcom/singular/sdk/internal/SingularInstance;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/singular/sdk/internal/BaseApi;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/singular/sdk/internal/BaseApi;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/singular/sdk/internal/BaseApi;->getTimestamp()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/singular/sdk/internal/BaseApi;->getOnApiCallback()Lcom/singular/sdk/internal/Api$OnApiCallback;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/singular/sdk/internal/SingularRequestHandler;->makeRequest(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;Ljava/util/Map;JLcom/singular/sdk/internal/Api$OnApiCallback;)Z

    move-result p1

    return p1
.end method

.method public toJsonAsString()Ljava/lang/String;
    .locals 1

    .line 126
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
