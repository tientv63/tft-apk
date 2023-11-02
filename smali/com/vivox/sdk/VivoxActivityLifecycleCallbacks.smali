.class public Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "VivoxActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks$VivoxActivityLifecycleCallbacksHolder;
    }
.end annotation


# instance fields
.field private mCallbacksEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;->mCallbacksEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;
    .locals 1

    .line 20
    invoke-static {}, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks$VivoxActivityLifecycleCallbacksHolder;->access$100()Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 37
    iget-boolean p1, p0, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;->mCallbacksEnabled:Z

    if-eqz p1, :cond_0

    .line 38
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdk;->vxa_recover_audio_recorder()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;->mCallbacksEnabled:Z

    return-void
.end method
