.class public Lcom/vivox/sdk/CallsAudioInterruptionListener$CheckAudioAndApplyChangesRunnable;
.super Ljava/lang/Object;
.source "CallsAudioInterruptionListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/CallsAudioInterruptionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckAudioAndApplyChangesRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;


# direct methods
.method public constructor <init>(Lcom/vivox/sdk/CallsAudioInterruptionListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$CheckAudioAndApplyChangesRunnable;->this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$CheckAudioAndApplyChangesRunnable;->this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    invoke-static {v0}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->access$200(Lcom/vivox/sdk/CallsAudioInterruptionListener;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$CheckAudioAndApplyChangesRunnable;->this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    invoke-static {v0}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->access$300(Lcom/vivox/sdk/CallsAudioInterruptionListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$CheckAudioAndApplyChangesRunnable;->this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    invoke-static {v0}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->access$400(Lcom/vivox/sdk/CallsAudioInterruptionListener;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 91
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdk;->vxa_recover_from_audio_interruption()V

    :cond_0
    return-void
.end method
