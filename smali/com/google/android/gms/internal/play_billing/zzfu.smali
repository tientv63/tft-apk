.class public final Lcom/google/android/gms/internal/play_billing/zzfu;
.super Lcom/google/android/gms/internal/play_billing/zzbx;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzw()Lcom/google/android/gms/internal/play_billing/zzfw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzbx;-><init>(Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzft;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzw()Lcom/google/android/gms/internal/play_billing/zzfw;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzbx;-><init>(Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method


# virtual methods
.method public final zzi(I)Lcom/google/android/gms/internal/play_billing/zzfu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbx;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfu;->zza:Lcom/google/android/gms/internal/play_billing/zzcb;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfw;->zzx(Lcom/google/android/gms/internal/play_billing/zzfw;I)V

    return-object p0
.end method
