.class Lcom/singular/sdk/internal/ExternalAIFAHelper;
.super Ljava/lang/Object;
.source "ExternalAIFAHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingInfo;,
        Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Singular/ExtAIFAHelper"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAIFA(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "Singular/ExtAIFAHelper"

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/singular/sdk/internal/ExternalAIFAHelper;->queryAdvertisingIdFromService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Got AIFA by querying Google Play service"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, "Could not determine AIFA"

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static queryAdvertisingIdFromService(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;-><init>(Lcom/singular/sdk/internal/ExternalAIFAHelper$1;)V

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 59
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v0}, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->Create(Landroid/os/IBinder;)Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingInfo;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Lcom/singular/sdk/internal/ExternalAIFAHelper$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method
