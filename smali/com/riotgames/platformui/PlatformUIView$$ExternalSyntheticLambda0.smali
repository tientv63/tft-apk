.class public final synthetic Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/riotgames/platformui/PlatformUIView;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/riotgames/platformui/PlatformUIView;ILandroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda0;->f$0:Lcom/riotgames/platformui/PlatformUIView;

    iput p2, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda0;->f$2:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda0;->f$0:Lcom/riotgames/platformui/PlatformUIView;

    iget v1, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda0;->f$2:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2}, Lcom/riotgames/platformui/PlatformUIView;->lambda$onKeyDown$5$com-riotgames-platformui-PlatformUIView(ILandroid/view/KeyEvent;)V

    return-void
.end method
