.class public Lcom/vivox/sdk/jni/JavaServices;
.super Ljava/lang/Object;
.source "JavaServices.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->new_JavaServices()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vivox/sdk/jni/JavaServices;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/vivox/sdk/jni/JavaServices;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/vivox/sdk/jni/JavaServices;->swigCPtr:J

    return-void
.end method

.method public static Initialize(Lcom/vivox/sdk/jni/HttpRequestProcessorBase;Lcom/vivox/sdk/jni/ICryptoFunctions;Lcom/vivox/sdk/jni/IHttpUrl;Lcom/vivox/sdk/jni/INetwork;Lcom/vivox/sdk/jni/IAndroidAudioBridge;Lcom/vivox/sdk/jni/IJniServices;[I)V
    .locals 19

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move-object/from16 v14, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/vivox/sdk/jni/HttpRequestProcessorBase;->getCPtr(Lcom/vivox/sdk/jni/HttpRequestProcessorBase;)J

    move-result-wide v0

    invoke-static/range {p1 .. p1}, Lcom/vivox/sdk/jni/ICryptoFunctions;->getCPtr(Lcom/vivox/sdk/jni/ICryptoFunctions;)J

    move-result-wide v3

    invoke-static/range {p2 .. p2}, Lcom/vivox/sdk/jni/IHttpUrl;->getCPtr(Lcom/vivox/sdk/jni/IHttpUrl;)J

    move-result-wide v6

    invoke-static/range {p3 .. p3}, Lcom/vivox/sdk/jni/INetwork;->getCPtr(Lcom/vivox/sdk/jni/INetwork;)J

    move-result-wide v9

    invoke-static/range {p4 .. p4}, Lcom/vivox/sdk/jni/IAndroidAudioBridge;->getCPtr(Lcom/vivox/sdk/jni/IAndroidAudioBridge;)J

    move-result-wide v12

    invoke-static/range {p5 .. p5}, Lcom/vivox/sdk/jni/IJniServices;->getCPtr(Lcom/vivox/sdk/jni/IJniServices;)J

    move-result-wide v15

    invoke-static/range {v0 .. v18}, Lcom/vivox/sdk/jni/androidsdkJNI;->JavaServices_Initialize(JLcom/vivox/sdk/jni/HttpRequestProcessorBase;JLcom/vivox/sdk/jni/ICryptoFunctions;JLcom/vivox/sdk/jni/IHttpUrl;JLcom/vivox/sdk/jni/INetwork;JLcom/vivox/sdk/jni/IAndroidAudioBridge;JLcom/vivox/sdk/jni/IJniServices;[I)V

    return-void
.end method

.method protected static getCPtr(Lcom/vivox/sdk/jni/JavaServices;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/JavaServices;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 25
    :try_start_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/JavaServices;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/vivox/sdk/jni/JavaServices;->swigCMemOwn:Z

    if-nez v0, :cond_0

    .line 30
    iput-wide v2, p0, Lcom/vivox/sdk/jni/JavaServices;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/vivox/sdk/jni/JavaServices;->swigCMemOwn:Z

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
