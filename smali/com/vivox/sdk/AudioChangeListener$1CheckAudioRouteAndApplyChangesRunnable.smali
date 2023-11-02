.class Lcom/vivox/sdk/AudioChangeListener$1CheckAudioRouteAndApplyChangesRunnable;
.super Ljava/lang/Object;
.source "AudioChangeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivox/sdk/AudioChangeListener;->registerAudioRouteChangeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckAudioRouteAndApplyChangesRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivox/sdk/AudioChangeListener;


# direct methods
.method constructor <init>(Lcom/vivox/sdk/AudioChangeListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/vivox/sdk/AudioChangeListener$1CheckAudioRouteAndApplyChangesRunnable;->this$0:Lcom/vivox/sdk/AudioChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/vivox/sdk/AudioChangeListener$1CheckAudioRouteAndApplyChangesRunnable;->this$0:Lcom/vivox/sdk/AudioChangeListener;

    invoke-virtual {v0}, Lcom/vivox/sdk/AudioChangeListener;->checkAudioRouteAndApplyChanges()V

    return-void
.end method
