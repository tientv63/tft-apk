.class Lcom/riotgames/platformui/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/platformui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/riotgames/platformui/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/riotgames/platformui/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/riotgames/platformui/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .line 1168
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1690
    iput-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 1691
    iput-object v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 1169
    iput v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWidth:I

    .line 1170
    iput v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHeight:I

    .line 1171
    iput-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1172
    iput v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderMode:I

    .line 1173
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWantRenderNotification:Z

    .line 1174
    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1102(Lcom/riotgames/platformui/GLTextureView$GLThread;Z)Z
    .locals 0

    .line 1166
    iput-boolean p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1212
    new-instance v0, Lcom/riotgames/platformui/GLTextureView$EglHelper;

    iget-object v2, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/riotgames/platformui/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEglHelper:Lcom/riotgames/platformui/GLTextureView$EglHelper;

    const/4 v0, 0x0

    .line 1213
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1214
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1215
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWantRenderNotification:Z

    move v3, v0

    move v4, v3

    move v5, v4

    move v8, v5

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    .line 1231
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1233
    :goto_1
    :try_start_1
    iget-boolean v2, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_0

    .line 1234
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1483
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1484
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1485
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1486
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1236
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1237
    iget-object v2, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/Runnable;

    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1242
    :cond_1
    iget-boolean v2, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_2

    .line 1244
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mPaused:Z

    .line 1245
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 1251
    :goto_2
    iget-boolean v2, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v2, :cond_3

    .line 1255
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1256
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v2, 0x0

    .line 1257
    iput-boolean v2, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 1262
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1263
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 1267
    iget-boolean v2, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v2, :cond_5

    .line 1271
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_5
    if-eqz v0, :cond_7

    .line 1274
    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_7

    .line 1275
    iget-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/riotgames/platformui/GLTextureView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    .line 1277
    :cond_6
    invoke-static {v0}, Lcom/riotgames/platformui/GLTextureView;->access$900(Lcom/riotgames/platformui/GLTextureView;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_7

    .line 1279
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1286
    :cond_7
    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_9

    .line 1290
    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_8

    .line 1291
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_8
    const/4 v0, 0x1

    .line 1293
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    .line 1294
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1295
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1298
    :cond_9
    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1302
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1303
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v4, :cond_b

    const/4 v0, 0x0

    .line 1309
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWantRenderNotification:Z

    const/4 v0, 0x1

    .line 1311
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1312
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    .line 1314
    :cond_b
    iget-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 1316
    iput-object v2, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object v6, v0

    .line 1319
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1321
    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglContext:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v0, :cond_e

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_4

    .line 1326
    :cond_d
    :try_start_4
    iget-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEglHelper:Lcom/riotgames/platformui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x1

    .line 1331
    :try_start_5
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1333
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v8, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1328
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/riotgames/platformui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/riotgames/platformui/GLTextureView$GLThread;)V

    .line 1329
    throw v0

    .line 1336
    :cond_e
    :goto_4
    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 1337
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 1342
    :cond_f
    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_1f

    .line 1343
    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_10

    .line 1345
    iget v13, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWidth:I

    .line 1346
    iget v14, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHeight:I

    const/4 v0, 0x1

    .line 1347
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWantRenderNotification:Z

    const/4 v0, 0x0

    .line 1355
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    .line 1357
    :goto_5
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1358
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 1359
    iget-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWantRenderNotification:Z

    if-eqz v0, :cond_11

    const/4 v12, 0x1

    .line 1389
    :cond_11
    :goto_6
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v15, :cond_13

    .line 1391
    :try_start_6
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    move-object v15, v2

    :cond_12
    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    if-eqz v9, :cond_15

    .line 1399
    iget-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEglHelper:Lcom/riotgames/platformui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$EglHelper;->createSurface()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1400
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v9

    monitor-enter v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v0, 0x1

    .line 1401
    :try_start_7
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1402
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1403
    monitor-exit v9

    const/4 v9, 0x0

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 1405
    :cond_14
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v16

    monitor-enter v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v0, 0x1

    .line 1406
    :try_start_9
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1407
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1408
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1409
    monitor-exit v16

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_15
    :goto_8
    if-eqz v10, :cond_16

    .line 1415
    iget-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEglHelper:Lcom/riotgames/platformui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljavax/microedition/khronos/opengles/GL10;

    const/4 v10, 0x0

    :cond_16
    if-eqz v8, :cond_18

    .line 1422
    iget-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/riotgames/platformui/GLTextureView;

    if-eqz v0, :cond_17

    .line 1424
    invoke-static {v0}, Lcom/riotgames/platformui/GLTextureView;->access$1000(Lcom/riotgames/platformui/GLTextureView;)Lcom/riotgames/platformui/GLTextureView$Renderer;

    move-result-object v0

    iget-object v8, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEglHelper:Lcom/riotgames/platformui/GLTextureView$EglHelper;

    iget-object v8, v8, Lcom/riotgames/platformui/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v7, v8}, Lcom/riotgames/platformui/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_17
    const/4 v8, 0x0

    :cond_18
    if-eqz v11, :cond_1a

    .line 1433
    iget-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/riotgames/platformui/GLTextureView;

    if-eqz v0, :cond_19

    .line 1435
    invoke-static {v0}, Lcom/riotgames/platformui/GLTextureView;->access$1000(Lcom/riotgames/platformui/GLTextureView;)Lcom/riotgames/platformui/GLTextureView$Renderer;

    move-result-object v0

    invoke-interface {v0, v7, v13, v14}, Lcom/riotgames/platformui/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_19
    const/4 v11, 0x0

    .line 1443
    :cond_1a
    iget-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/riotgames/platformui/GLTextureView;

    if-eqz v0, :cond_1b

    .line 1445
    invoke-static {v0}, Lcom/riotgames/platformui/GLTextureView;->access$1000(Lcom/riotgames/platformui/GLTextureView;)Lcom/riotgames/platformui/GLTextureView$Renderer;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/riotgames/platformui/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    if-eqz v6, :cond_1b

    .line 1447
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    move-object v6, v2

    .line 1452
    :cond_1b
    iget-object v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEglHelper:Lcom/riotgames/platformui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$EglHelper;->swap()I

    move-result v0

    const/16 v2, 0x3000

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_1c

    const-string v2, "GLThread"

    move/from16 v18, v3

    const-string v3, "eglSwapBuffers"

    .line 1467
    invoke-static {v2, v3, v0}, Lcom/riotgames/platformui/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1468
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v0, 0x1

    .line 1469
    :try_start_b
    iput-boolean v0, v1, Lcom/riotgames/platformui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1470
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1471
    monitor-exit v2

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_1c
    const/4 v0, 0x1

    move v3, v0

    goto :goto_a

    :cond_1d
    move/from16 v18, v3

    const/4 v0, 0x1

    :goto_9
    move/from16 v3, v18

    :goto_a
    if-eqz v12, :cond_12

    move v4, v0

    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_1e
    if-eqz v6, :cond_1f

    :try_start_d
    const-string v0, "GLTextureView"

    const-string v2, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    .line 1366
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    const/4 v6, 0x0

    .line 1387
    :cond_1f
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    .line 1389
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 1483
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1484
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1485
    invoke-direct/range {p0 .. p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1486
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1487
    throw v0

    :catchall_6
    move-exception v0

    .line 1486
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1493
    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1205
    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEglHelper:Lcom/riotgames/platformui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 1207
    iput-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1208
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/riotgames/platformui/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/riotgames/platformui/GLTextureView$GLThread;)V

    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1195
    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1196
    iput-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1197
    iget-object v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEglHelper:Lcom/riotgames/platformui/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/riotgames/platformui/GLTextureView$EglHelper;->destroySurface()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1490
    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    .line 1507
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1508
    :try_start_0
    iget v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1509
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 2

    .line 1569
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1573
    :try_start_0
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1574
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1575
    :goto_0
    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1580
    :try_start_1
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1582
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1585
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    .line 1588
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1592
    :try_start_0
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 1593
    iput-boolean v2, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1594
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1595
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1596
    :goto_0
    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1601
    :try_start_1
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1603
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1606
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 1

    .line 1609
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1610
    :try_start_0
    iput p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWidth:I

    .line 1611
    iput p2, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 1612
    iput-boolean p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1613
    iput-boolean p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 1614
    iput-boolean p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1620
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 1621
    monitor-exit v0

    return-void

    .line 1623
    :cond_0
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1625
    :goto_0
    iget-boolean p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mExited:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mPaused:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_1

    .line 1626
    invoke-virtual {p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->ableToDraw()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1631
    :try_start_1
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1633
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1636
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1665
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1666
    :try_start_0
    iget-object v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1668
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1663
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestExitAndWait()V
    .locals 2

    .line 1641
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1642
    :try_start_0
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mShouldExit:Z

    .line 1643
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1644
    :goto_0
    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1646
    :try_start_1
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1648
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1651
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    const/4 v0, 0x1

    .line 1654
    iput-boolean v0, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1655
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1512
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1513
    :try_start_0
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestRender:Z

    .line 1514
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1515
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 2

    .line 1518
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1523
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1524
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1526
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWantRenderNotification:Z

    .line 1527
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x0

    .line 1528
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1529
    iput-object p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1530
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1531
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 3

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    .line 1183
    :try_start_0
    invoke-direct {p0}, Lcom/riotgames/platformui/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    :catch_0
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/riotgames/platformui/GLTextureView$GLThreadManager;->threadExiting(Lcom/riotgames/platformui/GLTextureView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/riotgames/platformui/GLTextureView$GLThreadManager;->threadExiting(Lcom/riotgames/platformui/GLTextureView$GLThread;)V

    .line 1188
    throw v0

    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1501
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1502
    :try_start_0
    iput p1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mRenderMode:I

    .line 1503
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1504
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1499
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceCreated()V
    .locals 2

    .line 1534
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1538
    :try_start_0
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    .line 1539
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1540
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1541
    :goto_0
    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1545
    :try_start_1
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1547
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1550
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 2

    .line 1553
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1557
    :try_start_0
    iput-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mHasSurface:Z

    .line 1558
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1559
    :goto_0
    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/riotgames/platformui/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1561
    :try_start_1
    invoke-static {}, Lcom/riotgames/platformui/GLTextureView;->access$800()Lcom/riotgames/platformui/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1563
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1566
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
