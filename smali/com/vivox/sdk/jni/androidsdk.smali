.class public Lcom/vivox/sdk/jni/androidsdk;
.super Ljava/lang/Object;
.source "androidsdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete_vxaRenderRouteArray(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;)V
    .locals 2

    .line 34
    invoke-static {p0}, Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;->getCPtr(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/vivox/sdk/jni/androidsdkJNI;->delete_vxaRenderRouteArray(J)V

    return-void
.end method

.method public static new_vxaRenderRouteArray(I)Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;
    .locals 4

    .line 29
    invoke-static {p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->new_vxaRenderRouteArray(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;-><init>(JZ)V

    :goto_0
    return-object p0
.end method

.method public static report_absent_initialization()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->report_absent_initialization()V

    return-void
.end method

.method public static vxaRenderRouteArray_getitem(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;I)Lcom/vivox/sdk/jni/VxaRenderRoute;
    .locals 2

    .line 38
    invoke-static {p0}, Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;->getCPtr(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->vxaRenderRouteArray_getitem(JI)I

    move-result p0

    invoke-static {p0}, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigToEnum(I)Lcom/vivox/sdk/jni/VxaRenderRoute;

    move-result-object p0

    return-object p0
.end method

.method public static vxaRenderRouteArray_setitem(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;ILcom/vivox/sdk/jni/VxaRenderRoute;)V
    .locals 2

    .line 42
    invoke-static {p0}, Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;->getCPtr(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;)J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigValue()I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Lcom/vivox/sdk/jni/androidsdkJNI;->vxaRenderRouteArray_setitem(JII)V

    return-void
.end method

.method public static vxa_get_current_render_route()Lcom/vivox/sdk/jni/VxaRenderRoute;
    .locals 1

    .line 25
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->vxa_get_current_render_route()I

    move-result v0

    invoke-static {v0}, Lcom/vivox/sdk/jni/VxaRenderRoute;->swigToEnum(I)Lcom/vivox/sdk/jni/VxaRenderRoute;

    move-result-object v0

    return-object v0
.end method

.method public static vxa_notify_audio_route_changed(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;I)V
    .locals 2

    .line 13
    invoke-static {p0}, Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;->getCPtr(Lcom/vivox/sdk/jni/SWIGTYPE_p_VxaRenderRoute;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vivox/sdk/jni/androidsdkJNI;->vxa_notify_audio_route_changed(JI)V

    return-void
.end method

.method public static vxa_recover_audio_recorder()V
    .locals 0

    .line 21
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->vxa_recover_audio_recorder()V

    return-void
.end method

.method public static vxa_recover_from_audio_interruption()V
    .locals 0

    .line 17
    invoke-static {}, Lcom/vivox/sdk/jni/androidsdkJNI;->vxa_recover_from_audio_interruption()V

    return-void
.end method
