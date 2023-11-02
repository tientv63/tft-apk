.class Lcom/vivox/sdk/CallsAudioInterruptionListener$2;
.super Ljava/lang/Object;
.source "CallsAudioInterruptionListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivox/sdk/CallsAudioInterruptionListener;->unregisterAudioInterruptionListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;


# direct methods
.method constructor <init>(Lcom/vivox/sdk/CallsAudioInterruptionListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$2;->this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$2;->this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    invoke-static {v0}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->access$100(Lcom/vivox/sdk/CallsAudioInterruptionListener;)V

    return-void
.end method
