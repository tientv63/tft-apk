.class Lcom/riotgames/platformui/GLTextureView$SimpleEGLConfigChooser;
.super Lcom/riotgames/platformui/GLTextureView$ComponentSizeChooser;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/platformui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/riotgames/platformui/GLTextureView;Z)V
    .locals 8

    .line 952
    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView$SimpleEGLConfigChooser;->this$0:Lcom/riotgames/platformui/GLTextureView;

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v6, p2

    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 953
    invoke-direct/range {v0 .. v7}, Lcom/riotgames/platformui/GLTextureView$ComponentSizeChooser;-><init>(Lcom/riotgames/platformui/GLTextureView;IIIIII)V

    return-void
.end method
