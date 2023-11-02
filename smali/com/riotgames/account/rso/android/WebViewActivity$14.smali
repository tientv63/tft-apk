.class Lcom/riotgames/account/rso/android/WebViewActivity$14;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;->setSystemUIResizeListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousHeight:I

.field final synthetic this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$displayCancel:Z


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 651
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$14;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    iput-object p2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$14;->val$decorView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/riotgames/account/rso/android/WebViewActivity$14;->val$displayCancel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 655
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$14;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    sget v1, Lcom/riotgames/pp/sdk/R$id;->loginRoot:I

    invoke-virtual {v0, v1}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 656
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 657
    iget-object v2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$14;->val$decorView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 658
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    .line 660
    iget v1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$14;->previousHeight:I

    if-eq v2, v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$14;->val$decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v3, v1, v2

    .line 664
    div-int/lit8 v1, v1, 0x4

    const/4 v4, 0x0

    if-le v3, v1, :cond_0

    iget-boolean v1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$14;->val$displayCancel:Z

    if-nez v1, :cond_0

    .line 665
    invoke-virtual {v0, v4, v4, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 670
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 671
    iput v2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$14;->previousHeight:I

    :cond_1
    return-void
.end method
