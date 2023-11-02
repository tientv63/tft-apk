.class Lcom/riotgames/account/rso/android/MobileUIDialog$2$1;
.super Ljava/lang/Object;
.source "MobileUIDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/MobileUIDialog$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/account/rso/android/MobileUIDialog$2;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/MobileUIDialog$2;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2$1;->this$0:Lcom/riotgames/account/rso/android/MobileUIDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 80
    :try_start_0
    iget-object p2, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2$1;->this$0:Lcom/riotgames/account/rso/android/MobileUIDialog$2;

    iget-wide v0, p2, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$ptr:J

    invoke-static {v0, v1}, Lcom/riotgames/account/rso/android/MobileUIDialog;->onAccept(J)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MobileUIDialog"

    const-string v0, "Error finding onAccept handler"

    .line 84
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
