.class public interface abstract Lio/sentry/MeasurementUnit;
.super Ljava/lang/Object;
.source "MeasurementUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/MeasurementUnit$Custom;,
        Lio/sentry/MeasurementUnit$Fraction;,
        Lio/sentry/MeasurementUnit$Information;,
        Lio/sentry/MeasurementUnit$Duration;
    }
.end annotation


# static fields
.field public static final NONE:Ljava/lang/String; = "none"


# virtual methods
.method public apiName()Ljava/lang/String;
    .locals 2

    .line 130
    invoke-interface {p0}, Lio/sentry/MeasurementUnit;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract name()Ljava/lang/String;
.end method
