.class public final Lio/sentry/FullyDisplayedReporter;
.super Ljava/lang/Object;
.source "FullyDisplayedReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;
    }
.end annotation


# static fields
.field private static final instance:Lio/sentry/FullyDisplayedReporter;


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lio/sentry/FullyDisplayedReporter;

    invoke-direct {v0}, Lio/sentry/FullyDisplayedReporter;-><init>()V

    sput-object v0, Lio/sentry/FullyDisplayedReporter;->instance:Lio/sentry/FullyDisplayedReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/FullyDisplayedReporter;->listeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lio/sentry/FullyDisplayedReporter;
    .locals 1

    .line 20
    sget-object v0, Lio/sentry/FullyDisplayedReporter;->instance:Lio/sentry/FullyDisplayedReporter;

    return-object v0
.end method


# virtual methods
.method public registerFullyDrawnListener(Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lio/sentry/FullyDisplayedReporter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportFullyDrawn()V
    .locals 2

    .line 29
    iget-object v0, p0, Lio/sentry/FullyDisplayedReporter;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lio/sentry/FullyDisplayedReporter;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;

    invoke-interface {v1}, Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;->onFullyDrawn()V

    goto :goto_0

    :cond_0
    return-void
.end method
