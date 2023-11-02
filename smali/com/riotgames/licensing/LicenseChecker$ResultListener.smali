.class Lcom/riotgames/licensing/LicenseChecker$ResultListener;
.super Lcom/riotgames/licensing/ILicenseResultListener$Stub;
.source "LicenseChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/licensing/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/licensing/LicenseChecker;


# direct methods
.method private constructor <init>(Lcom/riotgames/licensing/LicenseChecker;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/riotgames/licensing/LicenseChecker$ResultListener;->this$0:Lcom/riotgames/licensing/LicenseChecker;

    invoke-direct {p0}, Lcom/riotgames/licensing/ILicenseResultListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/riotgames/licensing/LicenseChecker;Lcom/riotgames/licensing/LicenseChecker$1;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/riotgames/licensing/LicenseChecker$ResultListener;-><init>(Lcom/riotgames/licensing/LicenseChecker;)V

    return-void
.end method


# virtual methods
.method public verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/riotgames/licensing/LicenseChecker$ResultListener;->this$0:Lcom/riotgames/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/riotgames/licensing/LicenseChecker;->access$100(Lcom/riotgames/licensing/LicenseChecker;)Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/riotgames/licensing/LicenseApiWrapper$LicenseResultHandler;->handle(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
