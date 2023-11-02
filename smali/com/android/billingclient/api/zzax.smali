.class public final synthetic Lcom/android/billingclient/api/zzax;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/google/android/datatransport/Transformer;


# static fields
.field public static final synthetic zza:Lcom/android/billingclient/api/zzax;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/billingclient/api/zzax;

    invoke-direct {v0}, Lcom/android/billingclient/api/zzax;-><init>()V

    sput-object v0, Lcom/android/billingclient/api/zzax;->zza:Lcom/android/billingclient/api/zzax;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzfz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzak;->zzc()[B

    move-result-object p1

    return-object p1
.end method
