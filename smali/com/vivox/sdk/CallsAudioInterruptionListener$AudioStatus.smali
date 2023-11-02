.class public Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;
.super Ljava/lang/Object;
.source "CallsAudioInterruptionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivox/sdk/CallsAudioInterruptionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioStatus"
.end annotation


# instance fields
.field public mIntendedAudioMode:I

.field public mIntendedSpeakerphoneState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;->mIntendedAudioMode:I

    .line 129
    iput-boolean v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$AudioStatus;->mIntendedSpeakerphoneState:Z

    return-void
.end method
