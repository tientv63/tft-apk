.class public abstract Lcom/riotgames/platformui/webview/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;,
        Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;,
        Lcom/riotgames/platformui/webview/WebViewActivity$RiotSDKJSBridge;
    }
.end annotation


# static fields
.field private static final BRIDGE_MESSAGE_HANDLER:Ljava/lang/String; = "onRiotSDKMessage"

.field private static final BRIDGE_NAME:Ljava/lang/String; = "riotSDK"

.field private static final FILE_PATH:Ljava/lang/String; = "file:///android_asset"

.field protected static final KEY_ACTIVITY_ID:Ljava/lang/String; = "activityId"

.field protected static final KEY_BUNDLE_ID:Ljava/lang/String; = "bundleId"

.field protected static final KEY_DEBUG:Ljava/lang/String; = "debug"

.field protected static final KEY_DISPLAY_CANCEL:Ljava/lang/String; = "displayCancel"

.field protected static final KEY_LAUNCH_URL:Ljava/lang/String; = "launchUrl"

.field protected static final KEY_PAGE_ID:Ljava/lang/String; = "pageId"

.field protected static final KEY_UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private final NAV_DISMISS_DELAY:I

.field private final WEBVIEW_PROVIDER_FIXED_COMPAT_LIB:[I

.field private bundleId:Ljava/lang/String;

.field private final checkSystemUiRunnable:Ljava/lang/Runnable;

.field private ignoreNavigation:Z

.field private isSystemUiVisible:Z

.field private launchUrl:Ljava/lang/String;

.field private final navDismissHandler:Landroid/os/Handler;

.field private pageId:Ljava/lang/String;

.field private uiDelayTimer:Ljava/util/Timer;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->ignoreNavigation:Z

    const/16 v1, 0x7d0

    .line 112
    iput v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->NAV_DISMISS_DELAY:I

    .line 113
    iput-boolean v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->isSystemUiVisible:Z

    .line 114
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uiDelayTimer:Ljava/util/Timer;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->navDismissHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/riotgames/platformui/webview/WebViewActivity$1;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;)V

    iput-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->checkSystemUiRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 829
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->WEBVIEW_PROVIDER_FIXED_COMPAT_LIB:[I

    return-void

    :array_0
    .array-data 4
        0x49
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/riotgames/platformui/webview/WebViewActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->checkImmersiveMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnJavaScriptMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/riotgames/platformui/webview/WebViewActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnCancel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/riotgames/platformui/webview/WebViewActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->isSystemUiVisible:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/riotgames/platformui/webview/WebViewActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->isSystemUiVisible:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/riotgames/platformui/webview/WebViewActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->checkSystemUiRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/riotgames/platformui/webview/WebViewActivity;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->navDismissHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeDecidePolicyForNavigationAction(Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/riotgames/platformui/webview/WebViewActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/riotgames/platformui/webview/WebViewActivity;->handleOnReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    return-void
.end method

.method static synthetic access$200(Lcom/riotgames/platformui/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->launchUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/riotgames/platformui/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->bundleId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->bundleId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/riotgames/platformui/webview/WebViewActivity;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->updateDisplayCancel(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->loadUrlInWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/riotgames/platformui/webview/WebViewActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->clearWebView()V

    return-void
.end method

.method static synthetic access$802(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/riotgames/platformui/webview/WebViewActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->ignoreNavigation:Z

    return p1
.end method

.method private checkImmersiveMode()V
    .locals 4

    .line 441
    iget-boolean v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->isSystemUiVisible:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->setImmersiveMode()V

    .line 443
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->navDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->checkSystemUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private clearWebView()V
    .locals 2

    .line 683
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewNativeWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x8

    .line 684
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 685
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 686
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    const-string v0, "about:blank"

    .line 690
    invoke-direct {p0, v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->loadUrlInWebView(Ljava/lang/String;)V

    return-void
.end method

.method static native decidePolicyForNavigationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;
.end method

.method static native decideResourceIsOptional(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private getNonCompatWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .line 554
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$11;

    invoke-direct {v0, p0, p0}, Lcom/riotgames/platformui/webview/WebViewActivity$11;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method private getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .line 510
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$10;

    invoke-direct {v0, p0}, Lcom/riotgames/platformui/webview/WebViewActivity$10;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;)V

    return-object v0
.end method

.method private getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 4

    .line 544
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->useNonCompatWebViewClient()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v2, "WebViewClient"

    goto :goto_0

    :cond_0
    const-string v2, "WebViewClientCompat"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "WebViewClient library: %s"

    .line 545
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 546
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getNonCompatWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getWebViewClientCompat()Landroid/webkit/WebViewClient;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getWebViewClientCompat()Landroid/webkit/WebViewClient;
    .locals 1

    .line 623
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$12;

    invoke-direct {v0, p0, p0}, Lcom/riotgames/platformui/webview/WebViewActivity$12;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method private handleOnReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 486
    invoke-direct {p0, p3}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeDecidePolicyForNavigationAction(Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    move-result-object v0

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    if-ne v0, v1, :cond_0

    return-void

    .line 489
    :cond_0
    invoke-direct {p0, p3}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeDecideResourceIsOptional(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v2

    const-string p2, "Ignoring failed optional resource %s"

    .line 490
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 493
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const-string p3, "Error: code=%d, description=%s url=%s"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 v0, -0xe

    if-eq p1, v0, :cond_5

    const-string v0, "net::ERR_FILE_NOT_FOUND"

    .line 495
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, -0x2

    if-eq p1, p2, :cond_4

    const/16 p2, -0xc

    if-eq p1, p2, :cond_4

    const/4 p2, -0x8

    if-eq p1, p2, :cond_4

    const/4 p2, -0x6

    if-eq p1, p2, :cond_4

    const/16 p2, -0xb

    if-eq p1, p2, :cond_4

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v2

    const-string p2, "Unhandled webview error: %s"

    .line 505
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logError(Ljava/lang/String;)V

    goto :goto_2

    .line 503
    :cond_4
    :goto_0
    sget-object p1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->NavigationError:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    invoke-direct {p0, p3, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    goto :goto_2

    .line 496
    :cond_5
    :goto_1
    sget-object p1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->ResourceNotFound:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    invoke-direct {p0, p3, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    :goto_2
    return-void
.end method

.method private loadUrlInWebView(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewNativeWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 699
    new-instance v1, Lcom/riotgames/platformui/webview/WebViewActivity$13;

    invoke-direct {v1, p0, p1, v0}, Lcom/riotgames/platformui/webview/WebViewActivity$13;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    const-string v1, "PlatformUIWebViewActivity"

    if-eqz v0, :cond_0

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->launchUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 804
    :cond_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private logInfo(Ljava/lang/String;)V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    const-string v1, "PlatformUIWebViewActivity"

    if-eqz v0, :cond_0

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->launchUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 796
    :cond_0
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static native onCancel(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static native onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V
.end method

.method static native onJavaScriptError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static native onJavaScriptMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static native onLaunch(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity;)V
.end method

.method private removeImmersiveMode()V
    .locals 2

    .line 458
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 459
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private safeDecidePolicyForNavigationAction(Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;
    .locals 2

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 210
    invoke-static {v0, v1, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->decidePolicyForNavigationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 213
    :catch_0
    sget-object p1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->None:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v0, "Error finding decidePolicyForNavigationAction handler"

    invoke-direct {p0, v0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    .line 215
    :cond_0
    sget-object p1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    return-object p1
.end method

.method private safeDecideResourceIsOptional(Ljava/lang/String;)Z
    .locals 2

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 221
    invoke-static {v0, v1, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->decideResourceIsOptional(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 224
    :catch_0
    sget-object p1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->None:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v0, "Error finding decideResourceIsOptional handler"

    invoke-direct {p0, v0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private safeOnCancel()V
    .locals 2

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 190
    invoke-static {v0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->onCancel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    sget-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->None:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v1, "Error finding onCancel handler"

    invoke-direct {p0, v1, v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V
    .locals 2

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 200
    invoke-static {v0, v1, p1, p2}, Lcom/riotgames/platformui/webview/WebViewActivity;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PlatformUIWebViewActivity"

    const-string v0, "Error finding onError handler"

    .line 203
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private safeOnJavaScriptError(Ljava/lang/String;)V
    .locals 2

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    invoke-static {v0, v1, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->onJavaScriptError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    sget-object p1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->None:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v0, "Error finding onJavaScriptError handler"

    invoke-direct {p0, v0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private safeOnJavaScriptMessage(Ljava/lang/String;)V
    .locals 2

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 170
    invoke-static {v0, v1, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->onJavaScriptMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    sget-object p1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->None:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v0, "Error finding onJavaScriptMessage handler"

    invoke-direct {p0, v0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private safeOnLaunch()V
    .locals 2

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    invoke-static {v0, p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->onLaunch(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    sget-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->None:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v1, "Error finding onLaunch handler"

    invoke-direct {p0, v1, v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected static setActivityIntentInfo(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1

    const/high16 v0, 0x10000000

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "uuid"

    .line 71
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "debug"

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setImmersiveMode()V
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x806

    .line 451
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setNavigationBarDisplay(Z)V
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->removeImmersiveMode()V

    const/4 p1, 0x0

    .line 466
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->setImmersiveMode()V

    .line 469
    new-instance p1, Lcom/riotgames/platformui/webview/WebViewActivity$9;

    invoke-direct {p1, p0}, Lcom/riotgames/platformui/webview/WebViewActivity$9;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :goto_0
    return-void
.end method

.method private setSystemUIResizeListener(Z)V
    .locals 3

    .line 409
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/riotgames/platformui/webview/WebViewActivity$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity$8;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/platformui/webview/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-static {v0, p1, p2}, Lcom/riotgames/platformui/webview/WebViewActivity;->setActivityIntentInfo(Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateDisplayCancel(Z)V
    .locals 4

    .line 376
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->setSystemUIResizeListener(Z)V

    .line 377
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewCancelToolbar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x8000000

    if-eqz p1, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewNativeWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v2, Lcom/riotgames/platformui/webview/WebViewActivity$6;

    invoke-direct {v2, p0}, Lcom/riotgames/platformui/webview/WebViewActivity$6;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewCancelToolbarButton()Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/riotgames/platformui/webview/WebViewActivity$7;

    invoke-direct {v2, p0}, Lcom/riotgames/platformui/webview/WebViewActivity$7;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 p1, 0x0

    .line 398
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewNativeWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewCancelToolbarButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 403
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->setNavigationBarDisplay(Z)V

    const/16 p1, 0x8

    .line 404
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private useNonCompatWebViewClient()Z
    .locals 9

    .line 834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 836
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "android.webkit.WebViewFactory"

    .line 842
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getLoadedPackageInfo"

    new-array v4, v2, [Ljava/lang/Class;

    .line 843
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    .line 844
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 863
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Device WebView Package Version: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    .line 865
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "\\.|\\s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 866
    array-length v3, v0

    iget-object v4, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->WEBVIEW_PROVIDER_FIXED_COMPAT_LIB:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, -0x1

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_4

    .line 870
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 872
    :try_start_1
    array-length v6, v0

    if-ge v5, v6, :cond_1

    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 877
    iget-object v7, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->WEBVIEW_PROVIDER_FIXED_COMPAT_LIB:[I

    array-length v8, v7

    if-ge v5, v8, :cond_2

    aget v7, v7, v5

    goto :goto_3

    :cond_2
    move v7, v2

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 878
    invoke-virtual {v6, v7}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v6

    if-eqz v6, :cond_3

    move v4, v6

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    :goto_4
    if-gez v4, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    return v1

    :catch_1
    const-string v0, "Exception getting Class or Method when getting version of webViewClient. Falling back to legacy webViewClient"

    .line 846
    invoke-direct {p0, v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public declared-synchronized closeActivity()V
    .locals 1

    monitor-enter p0

    .line 294
    :try_start_0
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$5;

    invoke-direct {v0, p0}, Lcom/riotgames/platformui/webview/WebViewActivity$5;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closePage(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 274
    :try_start_0
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity$4;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected configureWebView(Landroid/webkit/WebView;)V
    .locals 3

    .line 669
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 670
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 671
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 672
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 673
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 674
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 675
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 677
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 678
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    :cond_0
    return-void
.end method

.method protected abstract findWebViewCancelToolbar()Landroid/view/View;
.end method

.method protected abstract findWebViewCancelToolbarButton()Landroid/view/View;
.end method

.method protected abstract findWebViewModal()Landroid/widget/RelativeLayout;
.end method

.method protected abstract findWebViewNativeWebView()Landroid/webkit/WebView;
.end method

.method protected abstract findWebViewRoot()Landroid/view/View;
.end method

.method public handleUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/app/Activity;)Z
    .locals 0

    .line 737
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p5, 0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->ignoreNavigation:Z

    if-eqz p1, :cond_0

    .line 740
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleUrlLoading during ignoreNavigation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    return p5

    .line 743
    :cond_0
    invoke-direct {p0, p2}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeDecidePolicyForNavigationAction(Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    move-result-object p1

    .line 744
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    if-eq p1, p3, :cond_1

    .line 751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleUrlLoading for iframe: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 754
    :cond_1
    sget-object p3, Lcom/riotgames/platformui/webview/WebViewActivity$14;->$SwitchMap$com$riotgames$platformui$webview$WebViewActivity$WebViewNavigationDecision:[I

    invoke-virtual {p1}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->ordinal()I

    move-result p1

    aget p1, p3, p1

    if-eq p1, p5, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    return p5

    .line 782
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleUrlLoading IgnoreNavigation: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    return p5

    .line 777
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleUrlLoading OpenInWebView: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    .line 778
    invoke-direct {p0, p2}, Lcom/riotgames/platformui/webview/WebViewActivity;->loadUrlInWebView(Ljava/lang/String;)V

    return p5

    .line 760
    :cond_4
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleUrlLoading server redirect in webview: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0, p2}, Lcom/riotgames/platformui/webview/WebViewActivity;->loadUrlInWebView(Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "handleUrlLoading OpenInBrowser: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logInfo(Ljava/lang/String;)V

    .line 767
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 768
    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p5

    .line 773
    :catch_0
    sget-object p1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->NavigationError:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string p2, "Activity not found to open url. Check that the device has a browser installed."

    invoke-direct {p0, p2, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnError(Ljava/lang/String;Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;)V

    return p5
.end method

.method public declared-synchronized launchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    monitor-enter p0

    .line 235
    :try_start_0
    new-instance v7, Lcom/riotgames/platformui/webview/WebViewActivity$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/riotgames/platformui/webview/WebViewActivity$2;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;Lcom/riotgames/platformui/webview/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v7}, Lcom/riotgames/platformui/webview/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onBackPressed()V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnCancel()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 311
    invoke-virtual {p0, p1, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->overridePendingTransition(II)V

    .line 313
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uuid:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string p1, "No uuid defined for webview"

    .line 316
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity;->logError(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->closeActivity()V

    return-void

    :cond_0
    const-string v1, "debug"

    .line 321
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 322
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_1

    .line 323
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_1
    const-string v1, "displayCancel"

    .line 326
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 327
    invoke-direct {p0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->updateDisplayCancel(Z)V

    .line 329
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->setLoadingIndicator(Ljava/lang/Boolean;)V

    .line 331
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewNativeWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 332
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 333
    invoke-virtual {p0, v1}, Lcom/riotgames/platformui/webview/WebViewActivity;->configureWebView(Landroid/webkit/WebView;)V

    .line 334
    new-instance v2, Lcom/riotgames/platformui/webview/WebViewActivity$RiotSDKJSBridge;

    invoke-direct {v2, p0, p0}, Lcom/riotgames/platformui/webview/WebViewActivity$RiotSDKJSBridge;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;Lcom/riotgames/platformui/webview/WebViewActivity;)V

    const-string v3, "riotSDK"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v2

    .line 337
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const-string v2, "pageId"

    .line 339
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->pageId:Ljava/lang/String;

    const-string v2, "bundleId"

    .line 340
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->bundleId:Ljava/lang/String;

    const-string v2, "launchUrl"

    .line 341
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->launchUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "about:blank"

    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->launchUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/riotgames/platformui/webview/WebViewActivity;->loadUrlInWebView(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 345
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 348
    :goto_0
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewModal()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 349
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-direct {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->safeOnLaunch()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewNativeWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "riotSDK"

    .line 363
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uiDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 365
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->uiDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 366
    iget-object v0, p0, Lcom/riotgames/platformui/webview/WebViewActivity;->navDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public declared-synchronized sendJavaScriptMessage([B)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 257
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(function(){window.%s(atob(\"%s\"));})();"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onRiotSDKMessage"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 258
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p0}, Lcom/riotgames/platformui/webview/WebViewActivity;->findWebViewNativeWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v1, Lcom/riotgames/platformui/webview/WebViewActivity$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/riotgames/platformui/webview/WebViewActivity$3;-><init>(Lcom/riotgames/platformui/webview/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract setLoadingIndicator(Ljava/lang/Boolean;)V
.end method
