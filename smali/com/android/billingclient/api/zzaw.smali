.class final Lcom/android/billingclient/api/zzaw;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/android/billingclient/api/zzar;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzfm;

.field private final zzb:Lcom/android/billingclient/api/zzay;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzfm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/billingclient/api/zzay;

    invoke-direct {v0, p1}, Lcom/android/billingclient/api/zzay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/billingclient/api/zzaw;->zzb:Lcom/android/billingclient/api/zzay;

    iput-object p2, p0, Lcom/android/billingclient/api/zzaw;->zza:Lcom/google/android/gms/internal/play_billing/zzfm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzv()Lcom/google/android/gms/internal/play_billing/zzfy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzaw;->zza:Lcom/google/android/gms/internal/play_billing/zzfm;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzk(Lcom/google/android/gms/internal/play_billing/zzfm;)Lcom/google/android/gms/internal/play_billing/zzfy;

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzi(Lcom/google/android/gms/internal/play_billing/zzfb;)Lcom/google/android/gms/internal/play_billing/zzfy;

    iget-object p1, p0, Lcom/android/billingclient/api/zzaw;->zzb:Lcom/android/billingclient/api/zzay;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzc()Lcom/google/android/gms/internal/play_billing/zzcb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfz;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/zzay;->zza(Lcom/google/android/gms/internal/play_billing/zzfz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "BillingLogger"

    const-string v0, "Unable to log."

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/play_billing/zzff;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzv()Lcom/google/android/gms/internal/play_billing/zzfy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzaw;->zza:Lcom/google/android/gms/internal/play_billing/zzfm;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzk(Lcom/google/android/gms/internal/play_billing/zzfm;)Lcom/google/android/gms/internal/play_billing/zzfy;

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzj(Lcom/google/android/gms/internal/play_billing/zzff;)Lcom/google/android/gms/internal/play_billing/zzfy;

    iget-object p1, p0, Lcom/android/billingclient/api/zzaw;->zzb:Lcom/android/billingclient/api/zzay;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzc()Lcom/google/android/gms/internal/play_billing/zzcb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfz;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/zzay;->zza(Lcom/google/android/gms/internal/play_billing/zzfz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "BillingLogger"

    const-string v0, "Unable to log."

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_billing/zzgd;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzv()Lcom/google/android/gms/internal/play_billing/zzfy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzaw;->zza:Lcom/google/android/gms/internal/play_billing/zzfm;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzk(Lcom/google/android/gms/internal/play_billing/zzfm;)Lcom/google/android/gms/internal/play_billing/zzfy;

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfy;->zzl(Lcom/google/android/gms/internal/play_billing/zzgd;)Lcom/google/android/gms/internal/play_billing/zzfy;

    iget-object p1, p0, Lcom/android/billingclient/api/zzaw;->zzb:Lcom/android/billingclient/api/zzay;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzc()Lcom/google/android/gms/internal/play_billing/zzcb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfz;

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/zzay;->zza(Lcom/google/android/gms/internal/play_billing/zzfz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "BillingLogger"

    const-string v0, "Unable to log."

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
