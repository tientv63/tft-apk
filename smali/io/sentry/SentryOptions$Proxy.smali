.class public final Lio/sentry/SentryOptions$Proxy;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private host:Ljava/lang/String;

.field private pass:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2419
    invoke-direct {p0, v0, v0, v0, v0}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2423
    invoke-direct {p0, p1, p2, v0, v0}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2412
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->host:Ljava/lang/String;

    .line 2413
    iput-object p2, p0, Lio/sentry/SentryOptions$Proxy;->port:Ljava/lang/String;

    .line 2414
    iput-object p3, p0, Lio/sentry/SentryOptions$Proxy;->user:Ljava/lang/String;

    .line 2415
    iput-object p4, p0, Lio/sentry/SentryOptions$Proxy;->pass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 2427
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPass()Ljava/lang/String;
    .locals 1

    .line 2451
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .line 2435
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->port:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 2443
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 2431
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->host:Ljava/lang/String;

    return-void
.end method

.method public setPass(Ljava/lang/String;)V
    .locals 0

    .line 2455
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->pass:Ljava/lang/String;

    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0

    .line 2439
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->port:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 2447
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->user:Ljava/lang/String;

    return-void
.end method
