.class public final synthetic Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/ActivityFramesTracker;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityFramesTracker;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/ActivityFramesTracker;

    iput-object p2, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/ActivityFramesTracker;

    iget-object v1, p0, Lio/sentry/android/core/ActivityFramesTracker$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lio/sentry/android/core/ActivityFramesTracker;->lambda$addActivity$0$io-sentry-android-core-ActivityFramesTracker(Landroid/app/Activity;)V

    return-void
.end method
