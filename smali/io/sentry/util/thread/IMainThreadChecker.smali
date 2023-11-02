.class public interface abstract Lio/sentry/util/thread/IMainThreadChecker;
.super Ljava/lang/Object;
.source "IMainThreadChecker.java"


# virtual methods
.method public isMainThread()Z
    .locals 1

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public abstract isMainThread(J)Z
.end method

.method public isMainThread(Lio/sentry/protocol/SentryThread;)Z
    .locals 2

    .line 38
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMainThread(Ljava/lang/Thread;)Z
    .locals 2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread(J)Z

    move-result p1

    return p1
.end method
