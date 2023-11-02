.class Lio/sentry/DefaultTransactionPerformanceCollector$2;
.super Ljava/util/TimerTask;
.source "DefaultTransactionPerformanceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/DefaultTransactionPerformanceCollector;->start(Lio/sentry/ITransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/DefaultTransactionPerformanceCollector;


# direct methods
.method constructor <init>(Lio/sentry/DefaultTransactionPerformanceCollector;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector$2;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    new-instance v0, Lio/sentry/PerformanceCollectionData;

    invoke-direct {v0}, Lio/sentry/PerformanceCollectionData;-><init>()V

    .line 88
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector$2;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    invoke-static {v1}, Lio/sentry/DefaultTransactionPerformanceCollector;->access$000(Lio/sentry/DefaultTransactionPerformanceCollector;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ICollector;

    .line 89
    invoke-interface {v2, v0}, Lio/sentry/ICollector;->collect(Lio/sentry/PerformanceCollectionData;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector$2;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    invoke-static {v1}, Lio/sentry/DefaultTransactionPerformanceCollector;->access$100(Lio/sentry/DefaultTransactionPerformanceCollector;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 93
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method
