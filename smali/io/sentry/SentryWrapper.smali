.class public final Lio/sentry/SentryWrapper;
.super Ljava/lang/Object;
.source "SentryWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$wrapCallable$0(Lio/sentry/IHub;Ljava/util/concurrent/Callable;Lio/sentry/IHub;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    .line 37
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-static {p2}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p2}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    .line 40
    throw p0
.end method

.method static synthetic lambda$wrapSupplier$1(Lio/sentry/IHub;Ljava/util/function/Supplier;Lio/sentry/IHub;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-static {p0}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    .line 61
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-static {p2}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p2}, Lio/sentry/Sentry;->setCurrentHub(Lio/sentry/IHub;)V

    .line 64
    throw p0
.end method

.method public static wrapCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object v1

    .line 34
    new-instance v2, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p0, v0}, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda1;-><init>(Lio/sentry/IHub;Ljava/util/concurrent/Callable;Lio/sentry/IHub;)V

    return-object v2
.end method

.method public static wrapSupplier(Ljava/util/function/Supplier;)Ljava/util/function/Supplier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TU;>;)",
            "Ljava/util/function/Supplier<",
            "TU;>;"
        }
    .end annotation

    .line 55
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object v1

    .line 58
    new-instance v2, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0, v0}, Lio/sentry/SentryWrapper$$ExternalSyntheticLambda0;-><init>(Lio/sentry/IHub;Ljava/util/function/Supplier;Lio/sentry/IHub;)V

    return-object v2
.end method
