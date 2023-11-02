.class public Lcom/riotgames/licensing/LicenseChecker;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/licensing/LicenseChecker$ResultListener;
    }
.end annotation


# static fields
.field private static final ERROR_RESPONSE_CODE:I = -0x1

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private final handler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/riotgames/licensing/ILicensingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/riotgames/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/riotgames/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/riotgames/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/riotgames/licensing/LicenseChecker;->handler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/riotgames/licensing/LicenseChecker;)Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/riotgames/licensing/LicenseChecker;->handler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    return-object p0
.end method

.method private cleanupService()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/riotgames/licensing/LicenseChecker;->mService:Lcom/riotgames/licensing/ILicensingService;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/riotgames/licensing/LicenseChecker;->mService:Lcom/riotgames/licensing/ILicensingService;

    :cond_0
    return-void
.end method

.method private generateNonce()I
    .locals 1

    .line 155
    sget-object v0, Lcom/riotgames/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkAccess()V
    .locals 12

    .line 71
    iget-object v0, p0, Lcom/riotgames/licensing/LicenseChecker;->mService:Lcom/riotgames/licensing/ILicensingService;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Exception: %s, Message: %s"

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.riotgames.licensing.ILicensingService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.riotgames.licensing"

    .line 86
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 74
    invoke-virtual {v0, v7, p0, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/riotgames/licensing/LicenseChecker;->handler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    const-string v7, "Binding failed"

    invoke-virtual {v0, v6, v7, v4}, Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    iget-object v7, p0, Lcom/riotgames/licensing/LicenseChecker;->handler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v6, v0, v4}, Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/riotgames/licensing/LicenseChecker;->generateNonce()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Lcom/riotgames/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    new-instance v10, Lcom/riotgames/licensing/LicenseChecker$ResultListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/riotgames/licensing/LicenseChecker$ResultListener;-><init>(Lcom/riotgames/licensing/LicenseChecker;Lcom/riotgames/licensing/LicenseChecker$1;)V

    invoke-interface {v0, v7, v8, v9, v10}, Lcom/riotgames/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/riotgames/licensing/ILicenseResultListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 99
    iget-object v7, p0, Lcom/riotgames/licensing/LicenseChecker;->handler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v6, v0, v4}, Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/riotgames/licensing/LicenseChecker;->cleanupService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-static {p2}, Lcom/riotgames/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/riotgames/licensing/ILicensingService;

    move-result-object p1

    iput-object p1, p0, Lcom/riotgames/licensing/LicenseChecker;->mService:Lcom/riotgames/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    invoke-direct {p0}, Lcom/riotgames/licensing/LicenseChecker;->generateNonce()I

    move-result p2

    int-to-long v0, p2

    iget-object p2, p0, Lcom/riotgames/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    new-instance v2, Lcom/riotgames/licensing/LicenseChecker$ResultListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/riotgames/licensing/LicenseChecker$ResultListener;-><init>(Lcom/riotgames/licensing/LicenseChecker;Lcom/riotgames/licensing/LicenseChecker$1;)V

    invoke-interface {p1, v0, v1, p2, v2}, Lcom/riotgames/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/riotgames/licensing/ILicenseResultListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    :try_start_2
    iget-object p2, p0, Lcom/riotgames/licensing/LicenseChecker;->handler:Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    const/4 v0, -0x1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p2, v0, p1, v1}, Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/riotgames/licensing/LicenseChecker;->mService:Lcom/riotgames/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
