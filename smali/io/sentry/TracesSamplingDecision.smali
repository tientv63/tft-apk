.class public final Lio/sentry/TracesSamplingDecision;
.super Ljava/lang/Object;
.source "TracesSamplingDecision.java"


# instance fields
.field private final profileSampleRate:Ljava/lang/Double;

.field private final profileSampled:Ljava/lang/Boolean;

.field private final sampleRate:Ljava/lang/Double;

.field private final sampled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;)V
    .locals 2

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lio/sentry/TracesSamplingDecision;->sampled:Ljava/lang/Boolean;

    .line 29
    iput-object p2, p0, Lio/sentry/TracesSamplingDecision;->sampleRate:Ljava/lang/Double;

    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/TracesSamplingDecision;->profileSampled:Ljava/lang/Boolean;

    .line 32
    iput-object p4, p0, Lio/sentry/TracesSamplingDecision;->profileSampleRate:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getProfileSampleRate()Ljava/lang/Double;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->profileSampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getProfileSampled()Ljava/lang/Boolean;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->profileSampled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/Double;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->sampleRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getSampled()Ljava/lang/Boolean;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->sampled:Ljava/lang/Boolean;

    return-object v0
.end method
