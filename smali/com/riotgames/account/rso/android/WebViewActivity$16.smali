.class Lcom/riotgames/account/rso/android/WebViewActivity$16;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/account/rso/android/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/WebViewActivity;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$16;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 801
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$16;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-static {p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$1101(Lcom/riotgames/account/rso/android/WebViewActivity;)V

    .line 802
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$16;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
