.class Lcom/riotgames/platformui/GLTextureView$1;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/GLTextureView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/GLTextureView;


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/GLTextureView;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView$1;->this$0:Lcom/riotgames/platformui/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/riotgames/platformui/GLTextureView$1;->this$0:Lcom/riotgames/platformui/GLTextureView;

    invoke-virtual {p1}, Lcom/riotgames/platformui/GLTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p6

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p6, p2, p4, p5}, Lcom/riotgames/platformui/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method
