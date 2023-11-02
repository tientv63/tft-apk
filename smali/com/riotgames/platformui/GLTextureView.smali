.class public Lcom/riotgames/platformui/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/platformui/GLTextureView$Renderer;,
        Lcom/riotgames/platformui/GLTextureView$GLThreadManager;,
        Lcom/riotgames/platformui/GLTextureView$GLWrapper;,
        Lcom/riotgames/platformui/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/riotgames/platformui/GLTextureView$EGLContextFactory;,
        Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;,
        Lcom/riotgames/platformui/GLTextureView$GLThread;,
        Lcom/riotgames/platformui/GLTextureView$SimpleEGLConfigChooser;,
        Lcom/riotgames/platformui/GLTextureView$DefaultContextFactory;,
        Lcom/riotgames/platformui/GLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/riotgames/platformui/GLTextureView$ComponentSizeChooser;,
        Lcom/riotgames/platformui/GLTextureView$LogWriter;,
        Lcom/riotgames/platformui/GLTextureView$EglHelper;,
        Lcom/riotgames/platformui/GLTextureView$BaseConfigChooser;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLTextureView"

.field private static final sGLThreadManager:Lcom/riotgames/platformui/GLTextureView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/riotgames/platformui/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/riotgames/platformui/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

.field private mGLWrapper:Lcom/riotgames/platformui/GLTextureView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/riotgames/platformui/GLTextureView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/riotgames/platformui/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1750
    new-instance v0, Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/riotgames/platformui/GLTextureView$GLThreadManager;-><init>(Lcom/riotgames/platformui/GLTextureView$1;)V

    sput-object v0, Lcom/riotgames/platformui/GLTextureView;->sGLThreadManager:Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1751
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 217
    invoke-direct {p0}, Lcom/riotgames/platformui/GLTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1751
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 222
    invoke-direct {p0}, Lcom/riotgames/platformui/GLTextureView;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/riotgames/platformui/GLTextureView;)Lcom/riotgames/platformui/GLTextureView$Renderer;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/riotgames/platformui/GLTextureView;->mRenderer:Lcom/riotgames/platformui/GLTextureView$Renderer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/riotgames/platformui/GLTextureView;)I
    .locals 0

    .line 172
    iget p0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLContextClientVersion:I

    return p0
.end method

.method static synthetic access$300(Lcom/riotgames/platformui/GLTextureView;)Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLConfigChooser:Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;

    return-object p0
.end method

.method static synthetic access$400(Lcom/riotgames/platformui/GLTextureView;)Lcom/riotgames/platformui/GLTextureView$EGLContextFactory;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLContextFactory:Lcom/riotgames/platformui/GLTextureView$EGLContextFactory;

    return-object p0
.end method

.method static synthetic access$500(Lcom/riotgames/platformui/GLTextureView;)Lcom/riotgames/platformui/GLTextureView$EGLWindowSurfaceFactory;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/riotgames/platformui/GLTextureView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static synthetic access$600(Lcom/riotgames/platformui/GLTextureView;)Lcom/riotgames/platformui/GLTextureView$GLWrapper;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLWrapper:Lcom/riotgames/platformui/GLTextureView$GLWrapper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/riotgames/platformui/GLTextureView;)I
    .locals 0

    .line 172
    iget p0, p0, Lcom/riotgames/platformui/GLTextureView;->mDebugFlags:I

    return p0
.end method

.method static synthetic access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;
    .locals 1

    .line 172
    sget-object v0, Lcom/riotgames/platformui/GLTextureView;->sGLThreadManager:Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/riotgames/platformui/GLTextureView;)Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/riotgames/platformui/GLTextureView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .line 1728
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    if-nez v0, :cond_0

    return-void

    .line 1729
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 1

    .line 226
    invoke-virtual {p0, p0}, Lcom/riotgames/platformui/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 228
    new-instance v0, Lcom/riotgames/platformui/GLTextureView$1;

    invoke-direct {v0, p0}, Lcom/riotgames/platformui/GLTextureView$1;-><init>(Lcom/riotgames/platformui/GLTextureView;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/GLTextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 246
    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/riotgames/platformui/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 564
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 568
    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mRenderer:Lcom/riotgames/platformui/GLTextureView$Renderer;

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 573
    :goto_0
    new-instance v2, Lcom/riotgames/platformui/GLTextureView$GLThread;

    iget-object v3, p0, Lcom/riotgames/platformui/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/riotgames/platformui/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    if-eq v0, v1, :cond_1

    .line 575
    invoke-virtual {v2, v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->setRenderMode(I)V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView;->mDetached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView;->mDetached:Z

    .line 590
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->onResume()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "GLTextureView"

    const-string v1, "onSurfaceTextureAvailable"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/GLTextureView;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/riotgames/platformui/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string v0, "GLTextureView"

    const-string v1, "onSurfaceTextureDestroyed"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/GLTextureView;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "GLTextureView"

    const-string v1, "onSurfaceTextureSizeChanged"

    .line 602
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/riotgames/platformui/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/riotgames/platformui/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->requestRender()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/riotgames/platformui/GLTextureView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    .line 429
    new-instance v8, Lcom/riotgames/platformui/GLTextureView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/riotgames/platformui/GLTextureView$ComponentSizeChooser;-><init>(Lcom/riotgames/platformui/GLTextureView;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/riotgames/platformui/GLTextureView;->setEGLConfigChooser(Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;)V
    .locals 0

    .line 394
    invoke-direct {p0}, Lcom/riotgames/platformui/GLTextureView;->checkRenderThreadState()V

    .line 395
    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLConfigChooser:Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .line 412
    new-instance v0, Lcom/riotgames/platformui/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/platformui/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/riotgames/platformui/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/GLTextureView;->setEGLConfigChooser(Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .line 459
    invoke-direct {p0}, Lcom/riotgames/platformui/GLTextureView;->checkRenderThreadState()V

    .line 460
    iput p1, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/riotgames/platformui/GLTextureView$EGLContextFactory;)V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/riotgames/platformui/GLTextureView;->checkRenderThreadState()V

    .line 366
    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLContextFactory:Lcom/riotgames/platformui/GLTextureView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/riotgames/platformui/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0

    .line 378
    invoke-direct {p0}, Lcom/riotgames/platformui/GLTextureView;->checkRenderThreadState()V

    .line 379
    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/riotgames/platformui/GLTextureView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Lcom/riotgames/platformui/GLTextureView$GLWrapper;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mGLWrapper:Lcom/riotgames/platformui/GLTextureView$GLWrapper;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lcom/riotgames/platformui/GLTextureView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/riotgames/platformui/GLTextureView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lcom/riotgames/platformui/GLTextureView$Renderer;)V
    .locals 2

    .line 340
    invoke-direct {p0}, Lcom/riotgames/platformui/GLTextureView;->checkRenderThreadState()V

    .line 341
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLConfigChooser:Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/riotgames/platformui/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/riotgames/platformui/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/riotgames/platformui/GLTextureView;Z)V

    iput-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLConfigChooser:Lcom/riotgames/platformui/GLTextureView$EGLConfigChooser;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLContextFactory:Lcom/riotgames/platformui/GLTextureView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 345
    new-instance v0, Lcom/riotgames/platformui/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Lcom/riotgames/platformui/GLTextureView$DefaultContextFactory;-><init>(Lcom/riotgames/platformui/GLTextureView;Lcom/riotgames/platformui/GLTextureView$1;)V

    iput-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLContextFactory:Lcom/riotgames/platformui/GLTextureView$EGLContextFactory;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/riotgames/platformui/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 348
    new-instance v0, Lcom/riotgames/platformui/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Lcom/riotgames/platformui/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/riotgames/platformui/GLTextureView$1;)V

    iput-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/riotgames/platformui/GLTextureView$EGLWindowSurfaceFactory;

    .line 350
    :cond_2
    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mRenderer:Lcom/riotgames/platformui/GLTextureView$Renderer;

    .line 351
    new-instance p1, Lcom/riotgames/platformui/GLTextureView$GLThread;

    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    .line 352
    invoke-virtual {p1}, Lcom/riotgames/platformui/GLTextureView$GLThread;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/graphics/SurfaceTexture;III)V
    .locals 0

    .line 521
    iget-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {p1, p3, p4}, Lcom/riotgames/platformui/GLTextureView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 506
    iget-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {p1}, Lcom/riotgames/platformui/GLTextureView$GLThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 514
    iget-object p1, p0, Lcom/riotgames/platformui/GLTextureView;->mGLThread:Lcom/riotgames/platformui/GLTextureView$GLThread;

    invoke-virtual {p1}, Lcom/riotgames/platformui/GLTextureView$GLThread;->surfaceDestroyed()V

    return-void
.end method
