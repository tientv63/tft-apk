.class public final Lio/sentry/protocol/MeasurementValue;
.super Ljava/lang/Object;
.source "MeasurementValue.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/MeasurementValue$JsonKeys;,
        Lio/sentry/protocol/MeasurementValue$Deserializer;
    }
.end annotation


# static fields
.field public static final KEY_APP_START_COLD:Ljava/lang/String; = "app_start_cold"

.field public static final KEY_APP_START_WARM:Ljava/lang/String; = "app_start_warm"

.field public static final KEY_FRAMES_FROZEN:Ljava/lang/String; = "frames_frozen"

.field public static final KEY_FRAMES_SLOW:Ljava/lang/String; = "frames_slow"

.field public static final KEY_FRAMES_TOTAL:Ljava/lang/String; = "frames_total"

.field public static final KEY_TIME_TO_FULL_DISPLAY:Ljava/lang/String; = "time_to_full_display"

.field public static final KEY_TIME_TO_INITIAL_DISPLAY:Ljava/lang/String; = "time_to_initial_display"


# instance fields
.field private final unit:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/sentry/protocol/MeasurementValue;->value:Ljava/lang/Number;

    .line 40
    iput-object p2, p0, Lio/sentry/protocol/MeasurementValue;->unit:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/sentry/protocol/MeasurementValue;->value:Ljava/lang/Number;

    .line 49
    iput-object p2, p0, Lio/sentry/protocol/MeasurementValue;->unit:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lio/sentry/protocol/MeasurementValue;->unknown:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/sentry/protocol/MeasurementValue;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lio/sentry/protocol/MeasurementValue;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getValue()Ljava/lang/Number;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/sentry/protocol/MeasurementValue;->value:Ljava/lang/Number;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "value"

    .line 84
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/MeasurementValue;->value:Ljava/lang/Number;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 86
    iget-object v0, p0, Lio/sentry/protocol/MeasurementValue;->unit:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "unit"

    .line 87
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/MeasurementValue;->unit:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 90
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/MeasurementValue;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lio/sentry/protocol/MeasurementValue;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 94
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lio/sentry/protocol/MeasurementValue;->unknown:Ljava/util/Map;

    return-void
.end method
