.class final Lcom/vivox/sdk/JniServices;
.super Lcom/vivox/sdk/jni/IJniServices;
.source "JniServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivox/sdk/JniServices$JniServicesHolder;
    }
.end annotation


# instance fields
.field private mCacheDir:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/vivox/sdk/jni/IJniServices;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivox/sdk/JniServices;
    .locals 1

    .line 21
    invoke-static {}, Lcom/vivox/sdk/JniServices$JniServicesHolder;->access$000()Lcom/vivox/sdk/JniServices;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/vivox/sdk/JniServices;->mCacheDir:Ljava/io/File;

    return-void
.end method
