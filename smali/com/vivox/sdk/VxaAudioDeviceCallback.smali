.class Lcom/vivox/sdk/VxaAudioDeviceCallback;
.super Landroid/media/AudioDeviceCallback;
.source "AudioChangeListener.java"


# instance fields
.field private mAudioChangeListener:Lcom/vivox/sdk/AudioChangeListener;


# direct methods
.method constructor <init>(Lcom/vivox/sdk/AudioChangeListener;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/vivox/sdk/VxaAudioDeviceCallback;->mAudioChangeListener:Lcom/vivox/sdk/AudioChangeListener;

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/vivox/sdk/VxaAudioDeviceCallback;->mAudioChangeListener:Lcom/vivox/sdk/AudioChangeListener;

    invoke-virtual {p1}, Lcom/vivox/sdk/AudioChangeListener;->checkAudioRouteAndApplyChanges()V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/vivox/sdk/VxaAudioDeviceCallback;->mAudioChangeListener:Lcom/vivox/sdk/AudioChangeListener;

    invoke-virtual {p1}, Lcom/vivox/sdk/AudioChangeListener;->checkAudioRouteAndApplyChanges()V

    return-void
.end method
