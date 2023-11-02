.class Lcom/riotgames/platformui/PlatformUIRenderer;
.super Ljava/lang/Object;
.source "PlatformUIView.java"

# interfaces
.implements Lcom/riotgames/platformui/GLTextureView$Renderer;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformUIRenderer"

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private mBackgroundTexturePtr:J

.field private mDevicePtr:J

.field final mDoClear:Z

.field final mHandlers:Lcom/riotgames/platformui/PlatformUIViewHandlers;

.field mHeight:I

.field private mRendererPtr:J

.field mUnsatisfiedLinkErrorLogged:Z

.field private mViewPtr:J

.field final mViewType:I

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/riotgames/platformui/PlatformUIRenderer;->lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/riotgames/platformui/PlatformUIViewHandlers;IZ)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mBackgroundTexturePtr:J

    .line 34
    iput-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mRendererPtr:J

    .line 35
    iput-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    .line 36
    iput-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mDevicePtr:J

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mWidth:I

    .line 38
    iput v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mHeight:I

    .line 44
    iput-boolean v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mUnsatisfiedLinkErrorLogged:Z

    .line 47
    iput-object p1, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mHandlers:Lcom/riotgames/platformui/PlatformUIViewHandlers;

    .line 48
    iput p2, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewType:I

    .line 49
    iput-boolean p3, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mDoClear:Z

    return-void
.end method

.method private ensureInitialized()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 86
    :try_start_0
    invoke-static {}, Lcom/riotgames/platformui/PlatformUIAssets;->ensureAssetHandler()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 92
    iget v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewType:I

    invoke-static {v0}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_Create(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mHandlers:Lcom/riotgames/platformui/PlatformUIViewHandlers;

    invoke-interface {v4, v0, v1}, Lcom/riotgames/platformui/PlatformUIViewHandlers;->onViewCreated(J)V

    .line 99
    :cond_0
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-wide v7, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mRendererPtr:J

    cmp-long v4, v7, v2

    if-nez v4, :cond_1

    .line 100
    invoke-static {v0, v1}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_GetRenderer(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mRendererPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    .line 106
    :goto_0
    iget-wide v7, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mDevicePtr:J

    cmp-long v1, v7, v2

    if-nez v1, :cond_2

    .line 107
    invoke-static {v6}, Lcom/riotgames/platformui/PlatformUIApi;->Native_Device_Create(Z)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mDevicePtr:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    if-eqz v5, :cond_3

    .line 113
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mDevicePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mRendererPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing renderer with renderer 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mRendererPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and device 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mDevicePtr:J

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformUIRenderer"

    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mRendererPtr:J

    iget-wide v2, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mDevicePtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/riotgames/platformui/PlatformUIApi;->Native_Renderer_Init(JJ)V

    :catch_0
    :cond_3
    return-void
.end method

.method private logUnsatisfiedLinkError(Ljava/lang/UnsatisfiedLinkError;)V
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mUnsatisfiedLinkErrorLogged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mUnsatisfiedLinkErrorLogged:Z

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsatisfiedLinkError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlatformUIRenderer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static setDefaultRenderTarget(Ljavax/microedition/khronos/opengles/GL10;IIZ)V
    .locals 2

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 159
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 160
    invoke-interface {p0, v1, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/16 p1, 0xc11

    .line 161
    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 162
    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    if-eqz p3, :cond_0

    const/16 p1, 0x4400

    const/4 p2, 0x1

    .line 168
    invoke-interface {p0, p2, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    const/4 p2, 0x0

    .line 169
    invoke-interface {p0, p2, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x400

    .line 171
    :goto_0
    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    return-void
.end method


# virtual methods
.method GetDevicePtr()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mDevicePtr:J

    return-wide v0
.end method

.method GetViewPtr()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    return-wide v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    :try_start_0
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, v2, v3}, Lcom/riotgames/platformui/PlatformUIRenderer;->setBackgroundTexture(J)V

    .line 59
    :cond_0
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mRendererPtr:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 60
    invoke-static {v0, v1}, Lcom/riotgames/platformui/PlatformUIApi;->Native_Renderer_Shutdown(J)V

    .line 61
    iput-wide v2, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mRendererPtr:J

    .line 63
    :cond_1
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 64
    invoke-static {v0, v1}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_Destroy(J)V

    .line 65
    iput-wide v2, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    invoke-direct {p0, v0}, Lcom/riotgames/platformui/PlatformUIRenderer;->logUnsatisfiedLinkError(Ljava/lang/UnsatisfiedLinkError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 178
    sget-object v0, Lcom/riotgames/platformui/PlatformUIRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/riotgames/platformui/PlatformUIRenderer;->ensureInitialized()V

    .line 182
    iget-wide v1, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 183
    iget v3, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mWidth:I

    iget v4, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/riotgames/platformui/PlatformUIApi;->Native_View_SetSize(JII)V

    .line 184
    iget-wide v1, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    invoke-static {v1, v2}, Lcom/riotgames/platformui/PlatformUIApi;->Native_Update(J)Z

    .line 185
    iget-wide v1, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    invoke-static {v1, v2}, Lcom/riotgames/platformui/PlatformUIApi;->Native_RenderOffscreen(J)V

    .line 186
    iget v1, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mWidth:I

    iget v2, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mHeight:I

    iget-boolean v3, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mDoClear:Z

    invoke-static {p1, v1, v2, v3}, Lcom/riotgames/platformui/PlatformUIRenderer;->setDefaultRenderTarget(Ljavax/microedition/khronos/opengles/GL10;IIZ)V

    .line 187
    iget-wide v1, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    const/4 p1, 0x0

    invoke-static {v1, v2, p1}, Lcom/riotgames/platformui/PlatformUIApi;->Native_RenderOnscreen(JZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 190
    :try_start_1
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/PlatformUIRenderer;->logUnsatisfiedLinkError(Ljava/lang/UnsatisfiedLinkError;)V

    .line 192
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceChanged width: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " height: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlatformUIRenderer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput p2, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mWidth:I

    .line 155
    iput p3, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mHeight:I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 142
    sget-object p1, Lcom/riotgames/platformui/PlatformUIRenderer;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 144
    :try_start_0
    invoke-direct {p0}, Lcom/riotgames/platformui/PlatformUIRenderer;->ensureInitialized()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 146
    :try_start_1
    invoke-direct {p0, p2}, Lcom/riotgames/platformui/PlatformUIRenderer;->logUnsatisfiedLinkError(Ljava/lang/UnsatisfiedLinkError;)V

    .line 148
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method setBackgroundTexture(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 121
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mBackgroundTexturePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 122
    invoke-static {v0, v1}, Lcom/riotgames/platformui/PlatformUIApi;->Native_BaseComponent_Release(J)V

    .line 125
    :cond_0
    iput-wide p1, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mBackgroundTexturePtr:J

    .line 127
    iget-wide v0, p0, Lcom/riotgames/platformui/PlatformUIRenderer;->mViewPtr:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 128
    invoke-static {v0, v1, p1, p2}, Lcom/riotgames/platformui/PlatformUIApi;->Native_SetBackgroundTexture(JJ)Z

    :cond_1
    return-void
.end method
