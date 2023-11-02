.class public Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;
.super Lcom/riotgames/platformui/webview/WebViewActivity;
.source "MobileFREWebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;)V
    .locals 0

    .line 21
    invoke-super {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->finish()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-static {v0, p1, p2}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->setActivityIntentInfo(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected configureWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->configureWebView(Landroid/webkit/WebView;)V

    const/4 v0, -0x1

    .line 51
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method protected findWebViewCancelToolbar()Landroid/view/View;
    .locals 1

    .line 31
    sget v0, Lcom/riotgames/pp/sdk/R$id;->mobilefre_webviewCancelToolbar:I

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected findWebViewCancelToolbarButton()Landroid/view/View;
    .locals 1

    .line 34
    sget v0, Lcom/riotgames/pp/sdk/R$id;->mobilefre_webviewCancelToolbarButton:I

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected findWebViewLoadingIndicator()Landroid/view/View;
    .locals 1

    .line 39
    sget v0, Lcom/riotgames/pp/sdk/R$id;->mobilefre_webviewLoadingIndicator:I

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected findWebViewModal()Landroid/widget/RelativeLayout;
    .locals 1

    .line 28
    sget v0, Lcom/riotgames/pp/sdk/R$id;->mobilefre_webviewModal:I

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected findWebViewModalView()Landroid/widget/RelativeLayout;
    .locals 1

    .line 25
    sget v0, Lcom/riotgames/pp/sdk/R$id;->mobilefre_webviewModalView:I

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected findWebViewNativeWebView()Landroid/webkit/WebView;
    .locals 1

    .line 37
    sget v0, Lcom/riotgames/pp/sdk/R$id;->mobilefre_webviewNativeWebview:I

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method protected findWebViewRoot()Landroid/view/View;
    .locals 1

    .line 23
    sget v0, Lcom/riotgames/pp/sdk/R$id;->mobilefre_webviewRoot:I

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 3

    .line 81
    sget v0, Lcom/riotgames/pp/sdk/R$anim;->mobilefre_login_slide_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 82
    sget v1, Lcom/riotgames/pp/sdk/R$anim;->mobilefre_login_fade_out:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 83
    new-instance v2, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity$1;-><init>(Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findWebViewModalView()Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    invoke-virtual {p0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findWebViewModal()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "displayCancel"

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x103022e

    .line 67
    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->setTheme(I)V

    .line 69
    :cond_0
    sget v0, Lcom/riotgames/pp/sdk/R$layout;->activity_webview_mobilefre:I

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->setContentView(I)V

    .line 70
    invoke-super {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget p1, Lcom/riotgames/pp/sdk/R$anim;->mobilefre_login_slide_in:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 72
    sget v0, Lcom/riotgames/pp/sdk/R$anim;->mobilefre_login_fade_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findWebViewModalView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findWebViewModal()Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 75
    invoke-virtual {v2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected setLoadingIndicator(Ljava/lang/Boolean;)V
    .locals 5

    .line 56
    invoke-virtual {p0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findWebViewLoadingIndicator()Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/riotgames/platformui/mobilefre/MobileFREWebViewActivity;->findWebViewNativeWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
