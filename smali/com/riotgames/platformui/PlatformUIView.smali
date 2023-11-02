.class public abstract Lcom/riotgames/platformui/PlatformUIView;
.super Lcom/riotgames/platformui/GLTextureView;
.source "PlatformUIView.java"

# interfaces
.implements Lcom/riotgames/platformui/PlatformUIViewHandlers;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformUIView"


# instance fields
.field private final mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;


# direct methods
.method public constructor <init>(IZLandroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 201
    invoke-direct {p0, p3, p4}, Lcom/riotgames/platformui/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p4, 0x0

    .line 202
    invoke-virtual {p0, p4}, Lcom/riotgames/platformui/PlatformUIView;->setOpaque(Z)V

    .line 203
    invoke-static {p3}, Lcom/riotgames/platformui/PlatformUIAssets;->registerAssetHandlerContext(Landroid/content/Context;)V

    const/4 p3, 0x3

    .line 204
    invoke-virtual {p0, p3}, Lcom/riotgames/platformui/PlatformUIView;->setEGLContextClientVersion(I)V

    .line 205
    new-instance p3, Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-direct {p3, p0, p1, p2}, Lcom/riotgames/platformui/PlatformUIRenderer;-><init>(Lcom/riotgames/platformui/PlatformUIViewHandlers;IZ)V

    iput-object p3, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    .line 206
    invoke-virtual {p0, p3}, Lcom/riotgames/platformui/PlatformUIView;->setRenderer(Lcom/riotgames/platformui/GLTextureView$Renderer;)V

    const/4 p1, 0x1

    .line 207
    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/PlatformUIView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public GetViewPtr()J
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-virtual {v0}, Lcom/riotgames/platformui/PlatformUIRenderer;->GetViewPtr()J

    move-result-wide v0

    return-wide v0
.end method

.method synthetic lambda$onKeyDown$5$com-riotgames-platformui-PlatformUIView(ILandroid/view/KeyEvent;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-virtual {v0}, Lcom/riotgames/platformui/PlatformUIRenderer;->GetViewPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_OnKeyDown(JI)Z

    .line 290
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    if-eqz p1, :cond_0

    .line 295
    iget-object p2, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-virtual {p2}, Lcom/riotgames/platformui/PlatformUIRenderer;->GetViewPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_OnChar(JI)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$onKeyUp$6$com-riotgames-platformui-PlatformUIView(I)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-virtual {v0}, Lcom/riotgames/platformui/PlatformUIRenderer;->GetViewPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_OnKeyUp(JI)Z

    return-void
.end method

.method synthetic lambda$onTouchEvent$2$com-riotgames-platformui-PlatformUIView(III)V
    .locals 7

    .line 244
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-virtual {v0}, Lcom/riotgames/platformui/PlatformUIRenderer;->GetViewPtr()J

    move-result-wide v1

    int-to-long v5, p3

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_TouchDown(JIIJ)Z

    return-void
.end method

.method synthetic lambda$onTouchEvent$3$com-riotgames-platformui-PlatformUIView(III)V
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-virtual {v0}, Lcom/riotgames/platformui/PlatformUIRenderer;->GetViewPtr()J

    move-result-wide v1

    int-to-long v5, p3

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_TouchUp(JIIJ)Z

    return-void
.end method

.method synthetic lambda$onTouchEvent$4$com-riotgames-platformui-PlatformUIView(III)V
    .locals 7

    .line 269
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-virtual {v0}, Lcom/riotgames/platformui/PlatformUIRenderer;->GetViewPtr()J

    move-result-wide v1

    int-to-long v5, p3

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_TouchMove(JIIJ)Z

    return-void
.end method

.method synthetic lambda$setBackgroundTexture$1$com-riotgames-platformui-PlatformUIView(IILjava/nio/ByteBuffer;)V
    .locals 8

    .line 227
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-virtual {v0}, Lcom/riotgames/platformui/PlatformUIRenderer;->GetDevicePtr()J

    move-result-wide v1

    .line 228
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    const-string v3, "BackgroundTexture"

    const/4 v6, 0x1

    move v4, p1

    move v5, p2

    .line 227
    invoke-static/range {v1 .. v7}, Lcom/riotgames/platformui/PlatformUIApi;->Native_Device_CreateTexture(JLjava/lang/String;III[B)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/riotgames/platformui/PlatformUIRenderer;->setBackgroundTexture(J)V

    return-void
.end method

.method synthetic lambda$setStyleOverrides$0$com-riotgames-platformui-PlatformUIView(Ljava/lang/String;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIView;->mRenderer:Lcom/riotgames/platformui/PlatformUIRenderer;

    invoke-virtual {v0}, Lcom/riotgames/platformui/PlatformUIRenderer;->GetViewPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/riotgames/platformui/PlatformUIApi;->Native_Style_SetOverrides(JLjava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformUIView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v0, Lcom/riotgames/platformui/KeyboardKeyMap;->AndroidKeyToNoesisKeyMap:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance p1, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0, p2}, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda0;-><init>(Lcom/riotgames/platformui/PlatformUIView;ILandroid/view/KeyEvent;)V

    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/PlatformUIView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 301
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/riotgames/platformui/GLTextureView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformUIView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v0, Lcom/riotgames/platformui/KeyboardKeyMap;->AndroidKeyToNoesisKeyMap:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    new-instance p1, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda2;-><init>(Lcom/riotgames/platformui/PlatformUIView;I)V

    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/PlatformUIView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 315
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/riotgames/platformui/GLTextureView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 236
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    .line 278
    invoke-super {p0, p1}, Lcom/riotgames/platformui/GLTextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 265
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 266
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 267
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 268
    new-instance v6, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v4, v5, v2}, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda6;-><init>(Lcom/riotgames/platformui/PlatformUIView;III)V

    invoke-virtual {p0, v6}, Lcom/riotgames/platformui/PlatformUIView;->queueEvent(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3

    .line 251
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 252
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 254
    new-instance v1, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda5;-><init>(Lcom/riotgames/platformui/PlatformUIView;III)V

    invoke-virtual {p0, v1}, Lcom/riotgames/platformui/PlatformUIView;->queueEvent(Ljava/lang/Runnable;)V

    return v3

    .line 240
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 241
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 243
    new-instance v1, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda4;-><init>(Lcom/riotgames/platformui/PlatformUIView;III)V

    invoke-virtual {p0, v1}, Lcom/riotgames/platformui/PlatformUIView;->queueEvent(Ljava/lang/Runnable;)V

    return v3
.end method

.method public abstract onViewCreated(J)V
.end method

.method protected setBackgroundTexture(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 222
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 226
    new-instance v2, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda1;-><init>(Lcom/riotgames/platformui/PlatformUIView;IILjava/nio/ByteBuffer;)V

    invoke-virtual {p0, v2}, Lcom/riotgames/platformui/PlatformUIView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setStyleOverrides(Ljava/lang/String;)V
    .locals 1

    .line 216
    new-instance v0, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/platformui/PlatformUIView$$ExternalSyntheticLambda3;-><init>(Lcom/riotgames/platformui/PlatformUIView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/PlatformUIView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method
