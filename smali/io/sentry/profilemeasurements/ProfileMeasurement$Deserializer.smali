.class public final Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;
.super Ljava/lang/Object;
.source "ProfileMeasurement.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/profilemeasurements/ProfileMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/profilemeasurements/ProfileMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/profilemeasurements/ProfileMeasurement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 123
    new-instance v0, Lio/sentry/profilemeasurements/ProfileMeasurement;

    invoke-direct {v0}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>()V

    const/4 v1, 0x0

    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v2, v3, :cond_4

    .line 127
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "values"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "unit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_1

    .line 144
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 146
    :cond_1
    invoke-virtual {p1, p2, v1, v2}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-static {v0, v2}, Lio/sentry/profilemeasurements/ProfileMeasurement;->access$002(Lio/sentry/profilemeasurements/ProfileMeasurement;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_3
    new-instance v2, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;

    invoke-direct {v2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue$Deserializer;-><init>()V

    .line 137
    invoke-virtual {p1, p2, v2}, Lio/sentry/JsonObjectReader;->nextList(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    invoke-static {v0, v2}, Lio/sentry/profilemeasurements/ProfileMeasurement;->access$102(Lio/sentry/profilemeasurements/ProfileMeasurement;Ljava/util/Collection;)Ljava/util/Collection;

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {v0, v1}, Lio/sentry/profilemeasurements/ProfileMeasurement;->setUnknown(Ljava/util/Map;)V

    .line 151
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1, p2}, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/profilemeasurements/ProfileMeasurement;

    move-result-object p1

    return-object p1
.end method
