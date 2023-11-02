.class public final Lcom/google/android/gms/internal/play_billing/zzfz;
.super Lcom/google/android/gms/internal/play_billing/zzcb;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzfz;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzfm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzfz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:Lcom/google/android/gms/internal/play_billing/zzfz;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzfz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzp(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zze:I

    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/play_billing/zzfz;Lcom/google/android/gms/internal/play_billing/zzff;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zze:I

    return-void
.end method

.method public static zzv()Lcom/google/android/gms/internal/play_billing/zzfy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:Lcom/google/android/gms/internal/play_billing/zzfz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzg()Lcom/google/android/gms/internal/play_billing/zzbx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfy;

    return-object v0
.end method

.method static synthetic zzw()Lcom/google/android/gms/internal/play_billing/zzfz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:Lcom/google/android/gms/internal/play_billing/zzfz;

    return-object v0
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/play_billing/zzfz;Lcom/google/android/gms/internal/play_billing/zzgd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zze:I

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/play_billing/zzfz;Lcom/google/android/gms/internal/play_billing/zzfm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zzg:Lcom/google/android/gms/internal/play_billing/zzfm;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zzd:I

    return-void
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/play_billing/zzfz;Lcom/google/android/gms/internal/play_billing/zzfb;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfz;->zze:I

    return-void
.end method


# virtual methods
.method protected final zzu(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:Lcom/google/android/gms/internal/play_billing/zzfz;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfy;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfy;-><init>(Lcom/google/android/gms/internal/play_billing/zzfx;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzfz;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "zzf"

    aput-object v4, p1, v3

    const-string/jumbo v3, "zze"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zzd"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v1

    .line 2
    const-class p2, Lcom/google/android/gms/internal/play_billing/zzfb;

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/play_billing/zzff;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-class p3, Lcom/google/android/gms/internal/play_billing/zzgd;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzfz;->zzb:Lcom/google/android/gms/internal/play_billing/zzfz;

    const-string p3, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfz;->zzm(Lcom/google/android/gms/internal/play_billing/zzdf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
