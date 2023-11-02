.class public Lio/sentry/android/core/internal/util/FirstDrawDoneListener;
.super Ljava/lang/Object;
.source "FirstDrawDoneListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private final viewReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->mainThreadHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->viewReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    iput-object p2, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->callback:Ljava/lang/Runnable;

    return-void
.end method

.method private static isAliveAndAttached(Landroid/view/View;Lio/sentry/android/core/BuildInfoProvider;)Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->isAttachedToWindow(Landroid/view/View;Lio/sentry/android/core/BuildInfoProvider;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAttachedToWindow(Landroid/view/View;Lio/sentry/android/core/BuildInfoProvider;)Z
    .locals 1

    .line 94
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static registerForNextDraw(Landroid/view/View;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 2

    .line 34
    new-instance v0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_0

    .line 39
    invoke-static {p0, p2}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->isAliveAndAttached(Landroid/view/View;Lio/sentry/android/core/BuildInfoProvider;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$1;

    invoke-direct {p1, v0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$1;-><init>(Lio/sentry/android/core/internal/util/FirstDrawDoneListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onDraw$0$io-sentry-android-core-internal-util-FirstDrawDoneListener(Landroid/view/View;)V
    .locals 0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 3

    .line 66
    iget-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->viewReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/internal/util/FirstDrawDoneListener;Landroid/view/View;)V

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    iget-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
