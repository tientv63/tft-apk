.class final Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
.super Ljava/lang/Object;
.source "SentryGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/gestures/SentryGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScrollState"
.end annotation


# instance fields
.field private startX:F

.field private startY:F

.field private target:Lio/sentry/internal/gestures/UiElement;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->type:Ljava/lang/String;

    const/4 v0, 0x0

    .line 338
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startX:F

    .line 339
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startY:F

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener$1;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/internal/gestures/UiElement;
    .locals 0

    .line 335
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->target:Lio/sentry/internal/gestures/UiElement;

    return-object p0
.end method

.method static synthetic access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Ljava/lang/String;
    .locals 0

    .line 335
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 335
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->calculateDirection(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->reset()V

    return-void
.end method

.method static synthetic access$502(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;F)F
    .locals 0

    .line 335
    iput p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startX:F

    return p1
.end method

.method static synthetic access$602(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;F)F
    .locals 0

    .line 335
    iput p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startY:F

    return p1
.end method

.method static synthetic access$700(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/internal/gestures/UiElement;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->setTarget(Lio/sentry/internal/gestures/UiElement;)V

    return-void
.end method

.method private calculateDirection(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 3

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startX:F

    sub-float/2addr v0, v1

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startY:F

    sub-float/2addr p1, v1

    .line 355
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_1

    cmpl-float p1, v0, v2

    if-lez p1, :cond_0

    const-string p1, "right"

    goto :goto_0

    :cond_0
    const-string p1, "left"

    goto :goto_0

    :cond_1
    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    const-string p1, "down"

    goto :goto_0

    :cond_2
    const-string p1, "up"

    :goto_0
    return-object p1
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->target:Lio/sentry/internal/gestures/UiElement;

    .line 373
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->type:Ljava/lang/String;

    const/4 v0, 0x0

    .line 374
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startX:F

    .line 375
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startY:F

    return-void
.end method

.method private setTarget(Lio/sentry/internal/gestures/UiElement;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->target:Lio/sentry/internal/gestures/UiElement;

    return-void
.end method
