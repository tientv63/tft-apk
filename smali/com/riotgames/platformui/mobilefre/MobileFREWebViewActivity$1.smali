.class Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity$1;
.super Ljava/lang/Object;
.source "MobileFREWebViewActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity$1;->this$0:Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity$1;->this$0:Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;

    invoke-static {p1}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->access$001(Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;)V

    .line 91
    iget-object p1, p0, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity$1;->this$0:Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->overridePendingTransition(II)V

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
