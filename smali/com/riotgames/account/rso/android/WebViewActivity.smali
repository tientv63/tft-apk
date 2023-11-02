.class public Lcom/riotgames/account/rso/android/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/account/rso/android/WebViewActivity$WebViewNavigationDecision;,
        Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;,
        Lcom/riotgames/account/rso/android/WebViewActivity$RiotSDKJSBridge;
    }
.end annotation


# static fields
.field public static final AuthenticationError:I = 0x3

.field private static final BRIDGE_MESSAGE_HANDLER:Ljava/lang/String; = "onRiotSDKMessage"

.field private static final BRIDGE_NAME:Ljava/lang/String; = "riotSDK"

.field private static final DEBUG:Ljava/lang/String; = "debug"

.field private static final DISPLAY_CANCEL:Ljava/lang/String; = "displayCancel"

.field private static final ERROR_URL:Ljava/lang/String; = "file:///error.html"

.field private static final FILE_PATH:Ljava/lang/String; = "file:///android_asset/mobile-ui"

.field private static final INVALID_PTR:I = -0x1

.field private static final JS_FOUNDATION_INTERFACE:Ljava/lang/String; = "foundation"

.field private static final LOCALE:Ljava/lang/String; = "locale"

.field public static final NetworkError:I = 0x2

.field private static final PTR:Ljava/lang/String; = "ptr"

.field public static final PromoteRequirementsNotMet:I = 0x4

.field private static final SOFTWARE_RENDERING:Ljava/lang/String; = "softwareRendering"

.field private static final URI:Ljava/lang/String; = "uri"

.field private static final USE_JS_POLLING:Z

.field public static final UnexpectedLoginPageError:I = 0x1


# instance fields
.field private final NAV_DISMISS_DELAY:I

.field private final WEBVIEWCLIENT_PATCH:[I

.field private final checkSystemUiRunnable:Ljava/lang/Runnable;

.field private foundationJavascriptResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreNavigationPolicy:Z

.field private isSystemUiVisible:Z

.field private mUserInitializedClose:Z

.field private final navDismissHandler:Landroid/os/Handler;

.field private ptr:J

.field private uiDelayTimer:Ljava/util/Timer;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/riotgames/account/rso/android/WebViewActivity;->USE_JS_POLLING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->mUserInitializedClose:Z

    const-wide/16 v0, -0x1

    .line 60
    iput-wide v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    const/16 v0, 0x7d0

    .line 68
    iput v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->NAV_DISMISS_DELAY:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 76
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->WEBVIEWCLIENT_PATCH:[I

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->isSystemUiVisible:Z

    .line 84
    iput-boolean v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ignoreNavigationPolicy:Z

    .line 85
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->uiDelayTimer:Ljava/util/Timer;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->navDismissHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/riotgames/account/rso/android/WebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/riotgames/account/rso/android/WebViewActivity$1;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;)V

    iput-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->checkSystemUiRunnable:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x7
        0x3
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/riotgames/account/rso/android/WebViewActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->checkImmersiveMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/riotgames/account/rso/android/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/riotgames/account/rso/android/WebViewActivity;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->navDismissHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1101(Lcom/riotgames/account/rso/android/WebViewActivity;)V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/riotgames/account/rso/android/WebViewActivity;->USE_JS_POLLING:Z

    return v0
.end method

.method static synthetic access$300(Lcom/riotgames/account/rso/android/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->flushFoundationResponses()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$402(Lcom/riotgames/account/rso/android/WebViewActivity;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->mUserInitializedClose:Z

    return p1
.end method

.method static synthetic access$500(Lcom/riotgames/account/rso/android/WebViewActivity;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/riotgames/account/rso/android/WebViewActivity;J)J
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/riotgames/account/rso/android/WebViewActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->setLoadingIndicator(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$702(Lcom/riotgames/account/rso/android/WebViewActivity;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ignoreNavigationPolicy:Z

    return p1
.end method

.method static synthetic access$800(Lcom/riotgames/account/rso/android/WebViewActivity;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->isSystemUiVisible:Z

    return p0
.end method

.method static synthetic access$802(Lcom/riotgames/account/rso/android/WebViewActivity;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->isSystemUiVisible:Z

    return p1
.end method

.method static synthetic access$900(Lcom/riotgames/account/rso/android/WebViewActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->checkSystemUiRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private checkImmersiveMode()V
    .locals 4

    .line 96
    iget-boolean v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->isSystemUiVisible:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->setImmersiveMode()V

    .line 98
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->navDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->checkSystemUiRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static native decidePolicyForNavigationAction(JLjava/lang/String;Ljava/lang/String;)Lcom/riotgames/account/rso/android/WebViewActivity$WebViewNavigationDecision;
.end method

.method private declared-synchronized flushFoundationResponses()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->foundationJavascriptResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    monitor-exit p0

    return-object v0

    .line 116
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    iget-object v2, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->foundationJavascriptResponses:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->foundationJavascriptResponses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static launch(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "ptr"

    .line 252
    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "uri"

    .line 253
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "locale"

    .line 254
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "displayCancel"

    .line 255
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "debug"

    .line 256
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "softwareRendering"

    .line 257
    invoke-virtual {v0, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static native localizedString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private logError(Ljava/lang/String;)V
    .locals 4

    .line 708
    :try_start_0
    iget-wide v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 709
    invoke-static {v0, v1, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->onError(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WebViewActivity"

    const-string v1, "Error finding onError handler"

    .line 712
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private oldWebViewClient()Z
    .locals 9

    .line 719
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 721
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0

    .line 722
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    :try_start_0
    const-string v0, "android.webkit.WebViewFactory"

    .line 728
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getLoadedPackageInfo"

    new-array v4, v2, [Ljava/lang/Class;

    .line 729
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    .line 730
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Exception geting Class or Method when getting version of webViewClient"

    .line 732
    invoke-direct {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    return v1

    .line 737
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.android.webview"

    .line 738
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 745
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "WebView Version: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebViewActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 749
    array-length v3, v0

    iget-object v5, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->WEBVIEWCLIENT_PATCH:[I

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_5

    .line 752
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 754
    :try_start_2
    array-length v6, v0

    if-ge v5, v6, :cond_2

    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 760
    iget-object v7, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->WEBVIEWCLIENT_PATCH:[I

    array-length v8, v7

    if-ge v5, v8, :cond_3

    aget v7, v7, v5

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 761
    invoke-virtual {v6, v7}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Error parsing package versionName"

    .line 756
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_5
    move v6, v2

    :goto_4
    if-gez v6, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    return v1

    :catch_2
    const-string v0, "PackageManager.NameNotFoundException when getting version of webViewClient"

    .line 740
    invoke-direct {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    return v1
.end method

.method static native onClose(JZ)V
.end method

.method static native onDeprecatedJavaScriptMessage(JLjava/lang/String;)V
.end method

.method static native onError(JLjava/lang/String;)V
.end method

.method static native onJavaScriptError(JLjava/lang/String;)V
.end method

.method static native onJavaScriptMessage(JLjava/lang/String;)V
.end method

.method static native onLaunch(JLcom/riotgames/account/rso/android/WebViewActivity;)V
.end method

.method private registerJavascriptInterface(Landroid/webkit/WebView;)V
    .locals 3

    .line 636
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 638
    new-instance v0, Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;

    iget-wide v1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/riotgames/account/rso/android/WebViewActivity$FoundationJavascriptInterface;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Lcom/riotgames/account/rso/android/WebViewActivity;J)V

    const-string v1, "foundation"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    new-instance v0, Lcom/riotgames/account/rso/android/WebViewActivity$RiotSDKJSBridge;

    iget-wide v1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/riotgames/account/rso/android/WebViewActivity$RiotSDKJSBridge;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Lcom/riotgames/account/rso/android/WebViewActivity;J)V

    const-string v1, "riotSDK"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setImmersiveMode()V
    .locals 2

    .line 678
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x806

    .line 679
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setLoadingIndicator(Ljava/lang/Boolean;)V
    .locals 5

    .line 700
    sget v0, Lcom/riotgames/pp/sdk/R$id;->loginProgressBar_cyclic:I

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 701
    sget v1, Lcom/riotgames/pp/sdk/R$id;->loginWebview:I

    invoke-virtual {p0, v1}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 702
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

    .line 703
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setNavigationBarDisplay()V
    .locals 2

    .line 686
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 687
    invoke-direct {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->setImmersiveMode()V

    .line 688
    new-instance v1, Lcom/riotgames/account/rso/android/WebViewActivity$15;

    invoke-direct {v1, p0}, Lcom/riotgames/account/rso/android/WebViewActivity$15;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private setSystemUIResizeListener(Z)V
    .locals 3

    .line 646
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 651
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/riotgames/account/rso/android/WebViewActivity$14;

    invoke-direct {v2, p0, v0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity$14;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setWebViewConfigurations(Landroid/webkit/WebView;)V
    .locals 3

    .line 618
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "softwareRendering"

    const/4 v2, 0x0

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 621
    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v0, "WebViewActivity"

    const-string v2, "software rendering enabled"

    .line 622
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, -0x1

    .line 625
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 626
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 627
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 628
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 629
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 630
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 631
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .line 296
    new-instance v0, Lcom/riotgames/account/rso/android/WebViewActivity$7;

    invoke-direct {v0, p0}, Lcom/riotgames/account/rso/android/WebViewActivity$7;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Finish(Z)V
    .locals 1

    .line 286
    new-instance v0, Lcom/riotgames/account/rso/android/WebViewActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity$6;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized addFoundationResponse([B)V
    .locals 3

    monitor-enter p0

    .line 122
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 124
    sget-boolean p1, Lcom/riotgames/account/rso/android/WebViewActivity;->USE_JS_POLLING:Z

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->foundationJavascriptResponses:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    :cond_0
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    sget p1, Lcom/riotgames/pp/sdk/R$id;->loginWebview:I

    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    .line 136
    new-instance v1, Lcom/riotgames/account/rso/android/WebViewActivity$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/riotgames/account/rso/android/WebViewActivity$2;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    :try_start_3
    const-string p1, "Invalid JSON message for addFoundationResponse: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 130
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public finish()V
    .locals 3

    .line 792
    sget v0, Lcom/riotgames/pp/sdk/R$anim;->login_slide_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 793
    sget v1, Lcom/riotgames/pp/sdk/R$anim;->login_fade_out:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 794
    new-instance v2, Lcom/riotgames/account/rso/android/WebViewActivity$16;

    invoke-direct {v2, p0}, Lcom/riotgames/account/rso/android/WebViewActivity$16;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 809
    sget v2, Lcom/riotgames/pp/sdk/R$id;->loginModalView:I

    invoke-virtual {p0, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 810
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 811
    sget v1, Lcom/riotgames/pp/sdk/R$id;->loginWebviewModal:I

    invoke-virtual {p0, v1}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 812
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public handleUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Boolean;Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x1

    .line 312
    :try_start_0
    iget-wide v1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    iget-object v3, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->uri:Ljava/lang/String;

    invoke-static {v1, v2, p2, v3}, Lcom/riotgames/account/rso/android/WebViewActivity;->decidePolicyForNavigationAction(JLjava/lang/String;Ljava/lang/String;)Lcom/riotgames/account/rso/android/WebViewActivity$WebViewNavigationDecision;

    move-result-object v1

    .line 313
    sget-object v2, Lcom/riotgames/account/rso/android/WebViewActivity$17;->$SwitchMap$com$riotgames$account$rso$android$WebViewActivity$WebViewNavigationDecision:[I

    invoke-virtual {v1}, Lcom/riotgames/account/rso/android/WebViewActivity$WebViewNavigationDecision;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v0, :cond_2

    const/4 p3, 0x2

    if-eq v1, p3, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    return v0

    .line 325
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->setLoadingIndicator(Ljava/lang/Boolean;)V

    return v0

    .line 322
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 315
    :cond_2
    invoke-direct {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->oldWebViewClient()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ignoreNavigationPolicy:Z

    if-nez p3, :cond_3

    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_4
    :goto_0
    invoke-static {p4, p2}, Lcom/riotgames/account/rso/android/NativeBrowser;->openInBrowser(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :catch_0
    const-string p1, "Activity not found to open url. Check that the device has a browser installed."

    .line 334
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    .line 335
    iget-wide p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    const-string p3, "mobile_ui_error_no_browser"

    invoke-static {p1, p2, p3}, Lcom/riotgames/account/rso/android/WebViewActivity;->localizedString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    sget p1, Lcom/riotgames/pp/sdk/R$string;->toast_error_fallback_text:I

    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 338
    :cond_5
    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->showErrorToast(Ljava/lang/String;)V

    return v0

    :catch_1
    const-string p1, "Error finding decidePolicyForNavigationAction handler"

    .line 330
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    .line 331
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->setLoadingIndicator(Ljava/lang/Boolean;)V

    return v0
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 2

    .line 274
    sget v0, Lcom/riotgames/pp/sdk/R$id;->loginWebview:I

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 276
    new-instance v1, Lcom/riotgames/account/rso/android/WebViewActivity$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity$5;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public loadErrorPage(ILjava/lang/String;)V
    .locals 2

    .line 262
    sget v0, Lcom/riotgames/pp/sdk/R$id;->loginWebview:I

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 264
    new-instance v1, Lcom/riotgames/account/rso/android/WebViewActivity$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/riotgames/account/rso/android/WebViewActivity$4;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 587
    sget v0, Lcom/riotgames/pp/sdk/R$id;->loginWebview:I

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 589
    new-instance v1, Lcom/riotgames/account/rso/android/WebViewActivity$13;

    invoke-direct {v1, p0, p1, v0}, Lcom/riotgames/account/rso/android/WebViewActivity$13;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 345
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "displayCancel"

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x103022e

    .line 348
    invoke-virtual {p0, v3}, Lcom/riotgames/account/rso/android/WebViewActivity;->setTheme(I)V

    .line 350
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 352
    sget-boolean p1, Lcom/riotgames/account/rso/android/WebViewActivity;->USE_JS_POLLING:Z

    if-eqz p1, :cond_1

    .line 353
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->foundationJavascriptResponses:Ljava/util/List;

    .line 356
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->overridePendingTransition(II)V

    .line 358
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt p1, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v4, 0x8000000

    invoke-virtual {p1, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    const-string p1, "debug"

    .line 363
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_3

    .line 366
    invoke-static {v4}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 369
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->setSystemUIResizeListener(Z)V

    .line 370
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 371
    invoke-direct {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->setNavigationBarDisplay()V

    .line 374
    :cond_4
    sget p1, Lcom/riotgames/pp/sdk/R$layout;->activity_webview_login:I

    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->setContentView(I)V

    const-string p1, "ptr"

    const-wide/16 v5, -0x1

    .line 376
    invoke-virtual {v0, p1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    cmp-long p1, v7, v5

    if-nez p1, :cond_5

    const-string p1, "No ptr defined for webview"

    .line 379
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->Finish(Z)V

    return-void

    :cond_5
    const-string p1, "uri"

    .line 384
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p1, "No URI defined for webview"

    .line 387
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->Finish(Z)V

    return-void

    :cond_6
    const-string v3, "locale"

    .line 392
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string p1, "No locale defined for webview"

    .line 394
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->Finish(Z)V

    return-void

    .line 399
    :cond_7
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->uri:Ljava/lang/String;

    .line 401
    sget v3, Lcom/riotgames/pp/sdk/R$id;->web_toolbar:I

    invoke-virtual {p0, v3}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 402
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v2

    goto :goto_0

    :cond_8
    const/16 v7, 0x8

    :goto_0
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 404
    sget v3, Lcom/riotgames/pp/sdk/R$id;->loginWebview:I

    invoke-virtual {p0, v3}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 407
    new-instance v7, Lcom/riotgames/account/rso/android/WebViewActivity$8;

    invoke-direct {v7, p0, p0, p1, v0}, Lcom/riotgames/account/rso/android/WebViewActivity$8;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance v8, Lcom/riotgames/account/rso/android/WebViewActivity$9;

    invoke-direct {v8, p0, p0, p1, v0}, Lcom/riotgames/account/rso/android/WebViewActivity$9;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->oldWebViewClient()Z

    move-result v0

    new-array v9, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    const-string v10, "WebViewClient"

    goto :goto_1

    :cond_9
    const-string v10, "WebViewClientCompat"

    :goto_1
    aput-object v10, v9, v2

    const-string v10, "WebViewClient type: %s"

    .line 511
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "WebViewActivity"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move-object v7, v8

    .line 512
    :goto_2
    invoke-virtual {v3, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 513
    invoke-direct {p0, v3}, Lcom/riotgames/account/rso/android/WebViewActivity;->setWebViewConfigurations(Landroid/webkit/WebView;)V

    .line 515
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 516
    new-instance v0, Lcom/riotgames/account/rso/android/WebViewActivity$10;

    invoke-direct {v0, p0}, Lcom/riotgames/account/rso/android/WebViewActivity$10;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;)V

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 526
    :cond_b
    invoke-direct {p0, v3}, Lcom/riotgames/account/rso/android/WebViewActivity;->registerJavascriptInterface(Landroid/webkit/WebView;)V

    .line 527
    new-instance v0, Lcom/riotgames/account/rso/android/WebViewActivity$11;

    invoke-direct {v0, p0, p0}, Lcom/riotgames/account/rso/android/WebViewActivity$11;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/app/Activity;)V

    .line 555
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const-string v0, "about:blank"

    .line 557
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 558
    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->loadUrl(Ljava/lang/String;)V

    .line 561
    :cond_c
    sget p1, Lcom/riotgames/pp/sdk/R$anim;->login_slide_in:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 562
    sget v0, Lcom/riotgames/pp/sdk/R$anim;->login_fade_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 563
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/riotgames/account/rso/android/WebViewActivity;->setLoadingIndicator(Ljava/lang/Boolean;)V

    .line 564
    sget v1, Lcom/riotgames/pp/sdk/R$id;->loginModalView:I

    invoke-virtual {p0, v1}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 565
    sget v3, Lcom/riotgames/pp/sdk/R$id;->loginWebviewModal:I

    invoke-virtual {p0, v3}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 566
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 567
    invoke-virtual {v3, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 568
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 571
    :try_start_0
    iget-wide v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_d

    .line 572
    invoke-static {v0, v1, p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->onLaunch(JLcom/riotgames/account/rso/android/WebViewActivity;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "Error finding onLaunch handler"

    .line 575
    invoke-direct {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    .line 578
    :cond_d
    :goto_3
    sget p1, Lcom/riotgames/pp/sdk/R$id;->close:I

    invoke-virtual {p0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/riotgames/account/rso/android/WebViewActivity$12;

    invoke-direct {v0, p0}, Lcom/riotgames/account/rso/android/WebViewActivity$12;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 772
    invoke-virtual {p0}, Lcom/riotgames/account/rso/android/WebViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    :try_start_0
    iget-wide v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->ptr:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 775
    iget-boolean v2, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->mUserInitializedClose:Z

    invoke-static {v0, v1, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->onClose(JZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error finding onClose handler"

    .line 778
    invoke-direct {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->logError(Ljava/lang/String;)V

    .line 781
    :cond_0
    :goto_0
    sget v0, Lcom/riotgames/pp/sdk/R$id;->loginWebview:I

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "foundation"

    .line 782
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v1, "riotSDK"

    .line 783
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->uiDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 785
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->uiDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 786
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity;->navDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 787
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public declared-synchronized sendJavaScriptMessage([B)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x2

    .line 152
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

    .line 153
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 155
    sget v0, Lcom/riotgames/pp/sdk/R$id;->loginWebview:I

    invoke-virtual {p0, v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Lcom/riotgames/account/rso/android/WebViewActivity$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/riotgames/account/rso/android/WebViewActivity$3;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showErrorToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
