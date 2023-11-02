.class Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioChangeListener.java"


# instance fields
.field private mAudioChangeListener:Lcom/vivox/sdk/AudioChangeListener;


# direct methods
.method public constructor <init>(Lcom/vivox/sdk/AudioChangeListener;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;->mAudioChangeListener:Lcom/vivox/sdk/AudioChangeListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/vivox/sdk/VxaAudioChangeBroadcastReceiver;->mAudioChangeListener:Lcom/vivox/sdk/AudioChangeListener;

    invoke-virtual {p1}, Lcom/vivox/sdk/AudioChangeListener;->checkAudioRouteAndApplyChanges()V

    return-void
.end method
