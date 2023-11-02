.class public Lcom/vivox/sdk/VivoxSDKApplication;
.super Landroid/app/Application;
.source "VivoxSDKApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 8
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 9
    invoke-static {}, Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;->getInstance()Lcom/vivox/sdk/VivoxActivityLifecycleCallbacks;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivox/sdk/VivoxSDKApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
