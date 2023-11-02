.class public Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;
.super Ljava/lang/Object;
.source "SWIGTYPE_p_VxaRenderRoute.java"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;->swigCPtr:J

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;->swigCPtr:J

    :goto_0
    return-wide v0
.end method
