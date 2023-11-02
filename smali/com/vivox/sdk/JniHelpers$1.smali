.class Lcom/vivox/sdk/JniHelpers$1;
.super Ljava/util/TimerTask;
.source "JniHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivox/sdk/JniHelpers;->init(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/vivox/sdk/JniHelpers$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/vivox/sdk/JniHelpers$1;->val$appContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 118
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    .line 119
    aget-object v3, v0, v4

    iget v3, v3, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget-object v3, v0, v4

    iget v3, v3, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aget-object v1, v0, v4

    iget v1, v1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    aget-object v1, v0, v4

    iget v1, v1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    aget-object v1, v0, v4

    iget v1, v1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    aget-object v1, v0, v4

    iget v1, v1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v2, v3

    aget-object v1, v0, v4

    iget v1, v1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v2, v3

    aget-object v1, v0, v4

    iget v1, v1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v2, v3

    aget-object v0, v0, v4

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v2, v1

    const-string v0, "%d/%d/%d/%d/%d/%d/%d/%d/%d"

    .line 119
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java_memory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
