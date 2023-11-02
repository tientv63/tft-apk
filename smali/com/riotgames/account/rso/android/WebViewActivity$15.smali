.class Lcom/riotgames/account/rso/android/WebViewActivity$15;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;->setNavigationBarDisplay()V
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

    .line 688
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$15;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$15;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$802(Lcom/riotgames/account/rso/android/WebViewActivity;Z)Z

    .line 692
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$15;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-static {p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$800(Lcom/riotgames/account/rso/android/WebViewActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 693
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$15;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-static {p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$1000(Lcom/riotgames/account/rso/android/WebViewActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$15;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-static {v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$900(Lcom/riotgames/account/rso/android/WebViewActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
