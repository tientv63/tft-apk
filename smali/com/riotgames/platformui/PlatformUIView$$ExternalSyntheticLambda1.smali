.class public final synthetic Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/riotgames/platformui/PlatformUIView;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lcom/riotgames/platformui/PlatformUIView;IILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;->f$0:Lcom/riotgames/platformui/PlatformUIView;

    iput p2, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;->f$3:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;->f$0:Lcom/riotgames/platformui/PlatformUIView;

    iget v1, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;->f$3:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/riotgames/platformui/PlatformUIView;->lambda$setBackgroundTexture$1$com-riotgames-platformui-PlatformUIView(IILjava/nio/ByteBuffer;)V

    return-void
.end method
