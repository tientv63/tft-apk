.class public Lcom/vivox/sdk/jni/HttpRequestProcessorBase;
.super Ljava/lang/Object;
.source "HttpRequestProcessorBase.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->new_HttpRequestProcessorBase()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;-><init>(JZ)V

    .line 56
    iget-wide v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    invoke-static {p0, v0, v1, v2, v2}, Lcom/vivox/sdk/jni/androidsdkJNI;->HttpRequestProcessorBase_director_connect(Lcom/vivox/sdk/jni/HttpRequestProcessorBase;JZZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/vivox/sdk/jni/HttpRequestProcessorBase;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public cancel(I)Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->HttpRequestProcessorBase_cancel(JLcom/vivox/sdk/jni/HttpRequestProcessorBase;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->HttpRequestProcessorBase_cancelSwigExplicitHttpRequestProcessorBase(JLcom/vivox/sdk/jni/HttpRequestProcessorBase;I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 30
    :try_start_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 31
    iget-boolean v4, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/vivox/sdk/jni/androidsdkJNI;->delete_HttpRequestProcessorBase(J)V

    .line 35
    :cond_0
    iput-wide v2, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->delete()V

    return-void
.end method

.method public process(I[B[BI[B[B[BZJ[B[BI[B[I[I[[B[[B)Z
    .locals 21

    move-object/from16 v15, p0

    .line 60
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;

    if-ne v0, v1, :cond_0

    iget-wide v0, v15, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    invoke-static/range {v0 .. v20}, Lcom/vivox/sdk/jni/androidsdkJNI;->HttpRequestProcessorBase_process(JLcom/vivox/sdk/jni/HttpRequestProcessorBase;I[B[BI[B[B[BZJ[B[BI[B[I[I[[B[[B)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-wide v0, v15, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    invoke-static/range {v0 .. v20}, Lcom/vivox/sdk/jni/androidsdkJNI;->HttpRequestProcessorBase_processSwigExplicitHttpRequestProcessorBase(JLcom/vivox/sdk/jni/HttpRequestProcessorBase;I[B[BI[B[B[BZJ[B[BI[B[I[I[[B[[B)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public reuse(I)Z
    .locals 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->HttpRequestProcessorBase_reuse(JLcom/vivox/sdk/jni/HttpRequestProcessorBase;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->HttpRequestProcessorBase_reuseSwigExplicitHttpRequestProcessorBase(JLcom/vivox/sdk/jni/HttpRequestProcessorBase;I)Z

    move-result p1

    :goto_0
    return p1
.end method

.method protected swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCMemOwn:Z

    .line 41
    invoke-virtual {p0}, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCMemOwn:Z

    .line 46
    iget-wide v1, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->HttpRequestProcessorBase_change_ownership(Lcom/vivox/sdk/jni/HttpRequestProcessorBase;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCMemOwn:Z

    .line 51
    iget-wide v1, p0, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lcom/vivox/sdk/jni/androidsdkJNI;->HttpRequestProcessorBase_change_ownership(Lcom/vivox/sdk/jni/HttpRequestProcessorBase;JZ)V

    return-void
.end method
