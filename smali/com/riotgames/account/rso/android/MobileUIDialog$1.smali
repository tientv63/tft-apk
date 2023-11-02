.class Lcom/riotgames/account/rso/android/MobileUIDialog$1;
.super Landroid/text/style/ClickableSpan;
.source "MobileUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/MobileUIDialog;->setClickable(JILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$i:I

.field final synthetic val$ptr:J


# direct methods
.method constructor <init>(JI)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$1;->val$ptr:J

    iput p3, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$1;->val$i:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$1;->val$ptr:J

    iget p1, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$1;->val$i:I

    invoke-static {v0, v1, p1}, Lcom/riotgames/account/rso/android/MobileUIDialog;->onLinkClick(JI)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MobileUIDialog"

    const-string v1, "Error finding onLinkClick handler"

    .line 34
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
