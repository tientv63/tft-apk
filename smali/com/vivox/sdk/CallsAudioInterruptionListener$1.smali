.class Lcom/vivox/sdk/CallsAudioInterruptionListener$1;
.super Ljava/lang/Object;
.source "CallsAudioInterruptionListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivox/sdk/CallsAudioInterruptionListener;->registerAudioInterruptionListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vivox/sdk/CallsAudioInterruptionListener;Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$1;->this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    iput-object p2, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$1;->this$0:Lcom/vivox/sdk/CallsAudioInterruptionListener;

    iget-object v1, p0, Lcom/vivox/sdk/CallsAudioInterruptionListener$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vivox/sdk/CallsAudioInterruptionListener;->access$000(Lcom/vivox/sdk/CallsAudioInterruptionListener;Landroid/content/Context;)V

    return-void
.end method
