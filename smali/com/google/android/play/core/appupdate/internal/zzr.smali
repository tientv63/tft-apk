.class final Lcom/google/android/play/core/appupdate/internal/zzr;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "com.google.android.play:app-update@@2.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzx;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzd(Lcom/google/android/play/core/appupdate/internal/zzx;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf(Lcom/google/android/play/core/appupdate/internal/zzx;)Lcom/google/android/play/core/appupdate/internal/zzm;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zza(Lcom/google/android/play/core/appupdate/internal/zzx;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzb(Lcom/google/android/play/core/appupdate/internal/zzx;)Landroid/content/ServiceConnection;

    move-result-object v0

    .line 2
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzj(Lcom/google/android/play/core/appupdate/internal/zzx;Z)V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzk(Lcom/google/android/play/core/appupdate/internal/zzx;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzi(Lcom/google/android/play/core/appupdate/internal/zzx;Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 6
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzl(Lcom/google/android/play/core/appupdate/internal/zzx;)V

    return-void
.end method
