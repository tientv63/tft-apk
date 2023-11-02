.class final Lcom/android/billingclient/api/zzg;
.super Landroid/content/BroadcastReceiver;
.source "com.android.billingclient:billing@@6.0.1"


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/zzh;

.field private final zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private final zzc:Lcom/android/billingclient/api/zzaz;

.field private final zzd:Lcom/android/billingclient/api/AlternativeBillingListener;

.field private final zze:Lcom/android/billingclient/api/zzar;

.field private zzf:Z


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/AlternativeBillingListener;Lcom/android/billingclient/api/zzar;Lcom/android/billingclient/api/zzf;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p4, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    iput-object p3, p0, Lcom/android/billingclient/api/zzg;->zzd:Lcom/android/billingclient/api/AlternativeBillingListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zzc:Lcom/android/billingclient/api/zzaz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzh;Lcom/android/billingclient/api/zzaz;Lcom/android/billingclient/api/zzar;Lcom/android/billingclient/api/zzf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zzd:Lcom/android/billingclient/api/AlternativeBillingListener;

    iput-object p1, p0, Lcom/android/billingclient/api/zzg;->zzc:Lcom/android/billingclient/api/zzaz;

    iput-object p3, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/zzg;)Lcom/android/billingclient/api/zzaz;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzg;->zzc:Lcom/android/billingclient/api/zzaz;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/zzg;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-object p0
.end method

.method private final zze(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V
    .locals 2

    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbn;->zza()Lcom/google/android/gms/internal/play_billing/zzbn;

    move-result-object p3

    .line 4
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzfb;->zzx([BLcom/google/android/gms/internal/play_billing/zzbn;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p1

    .line 5
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "BillingBroadcastManager"

    const-string p2, "Failed parsing Api failure."

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    const/16 v0, 0x17

    .line 7
    invoke-static {v0, p3, p2}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "BillingBroadcastManager"

    if-nez p1, :cond_1

    const-string p1, "Bundle is null."

    .line 2
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    const/16 p2, 0xb

    .line 3
    sget-object v1, Lcom/android/billingclient/api/zzat;->zzj:Lcom/android/billingclient/api/BillingResult;

    .line 4
    invoke-static {p2, v0, v1}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/android/billingclient/api/zzat;->zzj:Lcom/android/billingclient/api/BillingResult;

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzd(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v3, "INTENT_SOURCE"

    .line 8
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LAUNCH_BILLING_FLOW"

    const/4 v5, 0x2

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v5, v0

    :cond_3
    :goto_0
    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 10
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzh(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    .line 12
    invoke-static {v5}, Lcom/android/billingclient/api/zzaq;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzar;->zzb(Lcom/google/android/gms/internal/play_billing/zzff;)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-direct {p0, p1, v2, v5}, Lcom/android/billingclient/api/zzg;->zze(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 14
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_5
    const-string v3, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 15
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {v2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    invoke-direct {p0, p1, v2, v5}, Lcom/android/billingclient/api/zzg;->zze(Landroid/os/Bundle;Lcom/android/billingclient/api/BillingResult;I)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzk()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object p2

    .line 18
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_6
    iget-object p2, p0, Lcom/android/billingclient/api/zzg;->zzd:Lcom/android/billingclient/api/AlternativeBillingListener;

    if-nez p2, :cond_7

    const-string p1, "AlternativeBillingListener is null."

    .line 19
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    const/16 p2, 0xf

    .line 20
    sget-object v0, Lcom/android/billingclient/api/zzat;->zzj:Lcom/android/billingclient/api/BillingResult;

    .line 21
    invoke-static {p2, v5, v0}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    .line 20
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    sget-object p2, Lcom/android/billingclient/api/zzat;->zzj:Lcom/android/billingclient/api/BillingResult;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzk()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v0

    .line 23
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_7
    const-string p2, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "Couldn\'t find alternative billing user choice data in bundle."

    .line 25
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    const/16 p2, 0x10

    .line 26
    sget-object v0, Lcom/android/billingclient/api/zzat;->zzj:Lcom/android/billingclient/api/BillingResult;

    .line 27
    invoke-static {p2, v5, v0}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    .line 26
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    sget-object p2, Lcom/android/billingclient/api/zzat;->zzj:Lcom/android/billingclient/api/BillingResult;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzk()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v0

    .line 29
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    :cond_8
    :try_start_0
    new-instance p2, Lcom/android/billingclient/api/AlternativeChoiceDetails;

    .line 30
    invoke-direct {p2, p1}, Lcom/android/billingclient/api/AlternativeChoiceDetails;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    .line 37
    invoke-static {v5}, Lcom/android/billingclient/api/zzaq;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzff;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/zzar;->zzb(Lcom/google/android/gms/internal/play_billing/zzff;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zzd:Lcom/android/billingclient/api/AlternativeBillingListener;

    .line 38
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingListener;->userSelectedAlternativeBilling(Lcom/android/billingclient/api/AlternativeChoiceDetails;)V

    return-void

    :catch_0
    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "Error when parsing invalid alternative choice data: [%s]"

    .line 31
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zze:Lcom/android/billingclient/api/zzar;

    const/16 p2, 0x11

    .line 33
    sget-object v0, Lcom/android/billingclient/api/zzat;->zzj:Lcom/android/billingclient/api/BillingResult;

    .line 34
    invoke-static {p2, v5, v0}, Lcom/android/billingclient/api/zzaq;->zza(IILcom/android/billingclient/api/BillingResult;)Lcom/google/android/gms/internal/play_billing/zzfb;

    move-result-object p2

    .line 33
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/zzar;->zza(Lcom/google/android/gms/internal/play_billing/zzfb;)V

    iget-object p1, p0, Lcom/android/billingclient/api/zzg;->zzb:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    sget-object p2, Lcom/android/billingclient/api/zzat;->zzj:Lcom/android/billingclient/api/BillingResult;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzk()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v0

    .line 36
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method public final zzc(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzg;->zzf:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-static {v0}, Lcom/android/billingclient/api/zzh;->zza(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-static {v0}, Lcom/android/billingclient/api/zzh;->zza(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/zzg;->zzf:Z

    :cond_1
    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzg;->zzf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzg;->zza:Lcom/android/billingclient/api/zzh;

    invoke-static {v0}, Lcom/android/billingclient/api/zzh;->zza(Lcom/android/billingclient/api/zzh;)Lcom/android/billingclient/api/zzg;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzg;->zzf:Z

    return-void

    :cond_0
    const-string p1, "BillingBroadcastManager"

    const-string v0, "Receiver is not registered."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
