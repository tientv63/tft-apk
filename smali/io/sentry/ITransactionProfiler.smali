.class public interface abstract Lio/sentry/ITransactionProfiler;
.super Ljava/lang/Object;
.source "ITransactionProfiler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract onTransactionFinish(Lio/sentry/ITransaction;Ljava/util/List;)Lio/sentry/ProfilingTraceData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;)",
            "Lio/sentry/ProfilingTraceData;"
        }
    .end annotation
.end method

.method public abstract onTransactionStart(Lio/sentry/ITransaction;)V
.end method
