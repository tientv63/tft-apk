.class Lcom/riotgames/account/rso/android/SocialLoginActivity$1;
.super Ljava/lang/Object;
.source "SocialLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/SocialLoginActivity;->Destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/account/rso/android/SocialLoginActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/SocialLoginActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/riotgames/account/rso/android/SocialLoginActivity$1;->this$0:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/riotgames/account/rso/android/SocialLoginActivity$1;->this$0:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    invoke-virtual {v0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    invoke-static {}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/riotgames/account/rso/android/SocialLoginActivity$1;->this$0:Lcom/riotgames/account/rso/android/SocialLoginActivity;

    invoke-virtual {v0}, Lcom/riotgames/account/rso/android/SocialLoginActivity;->finish()V

    return-void
.end method
