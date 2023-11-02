.class public final synthetic Lio/sentry/HostnameCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/sentry/HostnameCache;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/HostnameCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/HostnameCache$$ExternalSyntheticLambda1;->f$0:Lio/sentry/HostnameCache;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/sentry/HostnameCache$$ExternalSyntheticLambda1;->f$0:Lio/sentry/HostnameCache;

    invoke-virtual {v0}, Lio/sentry/HostnameCache;->lambda$updateCache$1$io-sentry-HostnameCache()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
