.class public Lcom/riotgames/leagueoflegends/RiotNativeActivity;
.super Landroid/app/NativeActivity;
.source "RiotNativeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;,
        Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;,
        Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final APPUPDATE_REQUESTID:I = 0x6107c0d3

.field static activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity; = null

.field static keyboardHeight:I = 0x0

.field static sAlreadyrunning:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final sMaxLogFileSize:I = 0x6400000

.field private static final sWebViewJavascriptInterfaceName:Ljava/lang/String; = "RiotNativeAndroid"


# instance fields
.field private _appUpdateAllowed:Z

.field private _storeAppVersionCode:I

.field private _updateAvailable:Z

.field private mArgsString:Ljava/lang/String;

.field mDisplayCutoutBottom:I

.field mDisplayCutoutLeft:I

.field mDisplayCutoutRight:I

.field mDisplayCutoutTop:I

.field mIdToEdit:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMonitorServiceBound:Z

.field private mIsWebViewSupported:Z

.field protected mLayout:Landroid/view/ViewGroup;

.field private mOverridePatchUrl:Ljava/lang/String;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field private mRiotSystemMonitorService:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

.field private mSentryHasUserConsent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSystemMonitorServiceConnection:Landroid/content/ServiceConnection;

.field protected mWebView:Landroid/webkit/WebView;

.field private mWebViewInterface:Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;


# direct methods
.method public static synthetic $r8$lambda$AAXNMLbuMEywK4vYpPlg_askNZk(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q6FNgVtomSEutTwsTSSJV8eDPPE(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->lambda$startAppUpdateRequest$6(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RyRHuVi5mirIkoeEfHxz2eaLEt8(Ljava/io/File;)J
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$eb2TFDE39-IPubD2sCoriJ9C4io(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->lambda$sentryInit$2(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vpFT291wb6U5EL7CkAUzGWU8sQY(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->lambda$startAppUpdateAvailableCheck$5(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yguynw3cOZ3lufMJPP7SPu-_IA4(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->lambda$sentryInit$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmWebViewInterface(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;
    .locals 0

    iget-object p0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebViewInterface:Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRiotSystemMonitorService(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mRiotSystemMonitorService:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWebViewInterface(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebViewInterface:Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseWebView(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->closeWebView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateWebView(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->createWebView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateWebViewPopupWindow(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->createWebViewPopupWindow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowWebViewPopupWindow(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->showWebViewPopupWindow()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "RiotGamesApi"

    .line 256
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "leagueoflegends"

    .line 257
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 355
    sput v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->keyboardHeight:I

    .line 378
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->sAlreadyrunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 249
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    const/4 v0, 0x0

    .line 352
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 357
    iput v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutTop:I

    .line 358
    iput v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutBottom:I

    .line 359
    iput v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutLeft:I

    .line 360
    iput v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutRight:I

    .line 362
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIdToEdit:Ljava/util/Map;

    .line 365
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 366
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    .line 367
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebViewInterface:Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsWebViewSupported:Z

    .line 377
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mSentryHasUserConsent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 382
    iput-boolean v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsMonitorServiceBound:Z

    .line 384
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$1;

    invoke-direct {v0, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$1;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mSystemMonitorServiceConnection:Landroid/content/ServiceConnection;

    const-string v0, ""

    .line 667
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mOverridePatchUrl:Ljava/lang/String;

    .line 1537
    iput-boolean v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_updateAvailable:Z

    .line 1538
    iput v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_storeAppVersionCode:I

    .line 1719
    iput-boolean v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_appUpdateAllowed:Z

    return-void
.end method

.method private calculateFileSize(Ljava/io/File;)J
    .locals 6

    .line 587
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 591
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    .line 592
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 593
    invoke-direct {p0, v4}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->calculateFileSize(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1

    .line 595
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    :goto_1
    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method private cleanLogFolder()V
    .locals 8

    .line 607
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Logs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 608
    invoke-direct {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->calculateFileSize(Ljava/io/File;)J

    move-result-wide v1

    const-wide/32 v3, 0x6400000

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 610
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x6400000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Log File Size has reached %d. Removing to limit of %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "RIOTLOG"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr v1, v3

    .line 612
    new-instance v3, Ljava/io/File;

    const-string v4, "GameLogs"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3, v1, v2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->deleteOldestGameLogs(Ljava/io/File;J)V

    :cond_0
    return-void
.end method

.method private closeWebView(Z)V
    .locals 1

    .line 1436
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 1437
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$14;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createWebView(Z)V
    .locals 7

    .line 1295
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "RIOTLOG"

    if-nez v0, :cond_2

    const-string v0, "Creating WebView"

    .line 1296
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotWebViewClient;

    invoke-direct {v0}, Lcom/riotgames/leagueoflegends/RiotWebViewClient;-><init>()V

    .line 1298
    new-instance v2, Lcom/riotgames/leagueoflegends/RiotWebChromeClient;

    invoke-direct {v2}, Lcom/riotgames/leagueoflegends/RiotWebChromeClient;-><init>()V

    const/4 v3, 0x0

    .line 1303
    :try_start_0
    new-instance v4, Landroid/webkit/WebView;

    sget-object v5, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-direct {v4, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v5, 0x1

    .line 1304
    iput-boolean v5, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsWebViewSupported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 1315
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1316
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 1317
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1321
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 1324
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 1327
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1331
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-ge v5, v6, :cond_0

    .line 1332
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 1333
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 1337
    :cond_0
    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1339
    iget-object v4, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1340
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_1

    .line 1343
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    goto :goto_0

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x1706

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setSystemUiVisibility(I)V

    goto :goto_0

    :catch_0
    const-string p1, "Failed to create WebView"

    .line 1308
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iput-boolean v3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsWebViewSupported:Z

    return-void

    :cond_2
    :goto_0
    const-string v0, "RiotNativeAndroid"

    if-eqz p1, :cond_3

    .line 1357
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebViewInterface:Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    if-nez p1, :cond_4

    .line 1358
    new-instance p1, Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebViewInterface:Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    const-string p1, "Adding Javascript interface to WebView"

    .line 1359
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebViewInterface:Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1363
    :cond_3
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebViewInterface:Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    if-eqz p1, :cond_4

    const-string p1, "Removing Javascript interface from WebView"

    .line 1364
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1366
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebViewInterface:Lcom/riotgames/leagueoflegends/RiotNativeActivity$RiotAndroidWebViewInterface;

    :cond_4
    :goto_1
    return-void
.end method

.method private createWebViewPopupWindow()V
    .locals 4

    .line 1373
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "RIOTLOG"

    if-nez v0, :cond_1

    const-string v0, "createWebViewPopupWindow called but no WebView has been created."

    .line 1378
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "Creating PopupWindow for WebView"

    .line 1382
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 1384
    sget-object v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1385
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1386
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x77

    invoke-virtual {v1, v0, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1389
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1390
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 1391
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    return-void
.end method

.method private deleteOldestGameLogs(Ljava/io/File;J)V
    .locals 12

    .line 628
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 631
    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 635
    :cond_0
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const-wide/16 v0, 0x0

    .line 638
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    .line 639
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 640
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 642
    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 644
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 645
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_1

    add-long/2addr v0, v10

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 651
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 652
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up old log: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RIOTLOG"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v5, v0, p2

    if-ltz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 684
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    .line 687
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "patch"

    .line 690
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mOverridePatchUrl:Ljava/lang/String;

    .line 691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Patch Url set to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mOverridePatchUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RIOTLOG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private hideSystemBars()V
    .locals 2

    .line 572
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 577
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    .line 581
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 0

    .line 503
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic lambda$requestAppReview$7(Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 1709
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1710
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    .line 1711
    sget-object v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-interface {p0, v0, p1}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method static synthetic lambda$sentryAddAttachment$1(Lio/sentry/Attachment;Lio/sentry/Scope;)V
    .locals 0

    .line 825
    invoke-virtual {p1, p0}, Lio/sentry/Scope;->addAttachment(Lio/sentry/Attachment;)V

    return-void
.end method

.method private synthetic lambda$sentryInit$2(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mSentryHasUserConsent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "environment"

    .line 853
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 855
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 857
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->removeExtra(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p1, v1}, Lio/sentry/SentryEvent;->setEnvironment(Ljava/lang/String;)V

    :cond_1
    const-string v0, "exception"

    .line 862
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 864
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 866
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->removeExtra(Ljava/lang/String;)V

    .line 867
    new-instance v0, Lio/sentry/Attachment;

    invoke-direct {v0, v1}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/sentry/Hint;->addAttachment(Lio/sentry/Attachment;)V

    :cond_2
    const-string v0, "netstats"

    .line 870
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 872
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 874
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->removeExtra(Ljava/lang/String;)V

    .line 875
    new-instance v0, Lio/sentry/Attachment;

    invoke-direct {v0, v1}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/sentry/Hint;->addAttachment(Lio/sentry/Attachment;)V

    :cond_3
    const-string v0, "r3dlog"

    .line 878
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 880
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 882
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->removeExtra(Ljava/lang/String;)V

    .line 883
    new-instance v0, Lio/sentry/Attachment;

    invoke-direct {v0, v1}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/sentry/Hint;->addAttachment(Lio/sentry/Attachment;)V

    :cond_4
    const-string v0, "ANRTrace"

    .line 886
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 888
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 890
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->removeExtra(Ljava/lang/String;)V

    .line 891
    new-instance v0, Lio/sentry/Attachment;

    invoke-direct {v0, v1}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/sentry/Hint;->addAttachment(Lio/sentry/Attachment;)V

    :cond_5
    return-object p1
.end method

.method private synthetic lambda$sentryInit$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    .line 839
    invoke-virtual {p5, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p5, p2}, Lio/sentry/android/core/SentryAndroidOptions;->setEnvironment(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p5, p3}, Lio/sentry/android/core/SentryAndroidOptions;->setRelease(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 842
    invoke-virtual {p5, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    const/4 p1, 0x0

    .line 843
    invoke-virtual {p5, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoSessionTracking(Z)V

    .line 844
    invoke-virtual {p5, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    .line 845
    new-instance p1, Lio/sentry/android/ndk/NdkScopeObserver;

    invoke-direct {p1, p5}, Lio/sentry/android/ndk/NdkScopeObserver;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p5, p1}, Lio/sentry/android/core/SentryAndroidOptions;->addScopeObserver(Lio/sentry/IScopeObserver;)V

    .line 846
    new-instance p1, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    invoke-virtual {p5, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V

    .line 896
    invoke-virtual {p4, p5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$sentrySetAppContext$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/sentry/Scope;)V
    .locals 2

    .line 906
    invoke-virtual {p5}, Lio/sentry/Scope;->getContexts()Lio/sentry/protocol/Contexts;

    .line 907
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_build"

    .line 908
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_version"

    .line 909
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_name"

    .line 910
    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_start_time"

    .line 911
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "build_type"

    .line 912
    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app"

    .line 913
    invoke-virtual {p5, p0, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$startAppUpdateAvailableCheck$5(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 1641
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1643
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 1644
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 1647
    iput-boolean v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_updateAvailable:Z

    .line 1648
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->availableVersionCode()I

    move-result p2

    iput p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_storeAppVersionCode:I

    .line 1651
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getNativeApplicationVersionCode()I

    move-result p2

    iget v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_storeAppVersionCode:I

    iget-boolean v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_updateAvailable:Z

    invoke-virtual {p0, p2, v0, v2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeLogUpdateAvailable(IIZ)Z

    .line 1653
    invoke-virtual {p1, v1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1655
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->startAppUpdateIfAllowed()V

    goto :goto_0

    :cond_1
    const-string p1, "RIOTLOG"

    const-string p2, "AppUpdateAvailable failed to get app update info."

    .line 1659
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$startAppUpdateRequest$6(Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 2

    .line 1675
    :try_start_0
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getNativeApplicationVersionCode()I

    move-result v0

    iget v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_storeAppVersionCode:I

    invoke-virtual {p0, v0, v1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeCollectUpdateSystemEvent(II)Z

    const/4 v0, 0x1

    const v1, 0x6107c0d3

    .line 1677
    invoke-interface {p1, p2, v0, p0, v1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1685
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StartAppUpdate failed to startUpdateFlowForResult: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RIOTLOG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerNetworkCalls()V
    .locals 2

    const-string v0, "connectivity"

    .line 536
    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 537
    new-instance v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity$4;

    invoke-direct {v1, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$4;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private requestAppPermissions([Ljava/lang/String;)V
    .locals 4

    .line 696
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 697
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    invoke-static {p0, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showWebViewPopupWindow()V
    .locals 2

    const-string v0, "RIOTLOG"

    const-string v1, "Showing WebView"

    .line 1396
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1398
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 1399
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public native NativeHandleIntent(Ljava/lang/String;)V
.end method

.method SetupNetworkCallback()V
    .locals 0

    .line 761
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->registerNetworkCalls()V

    return-void
.end method

.method public deleteTextRegion(I)V
    .locals 1

    .line 1125
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 1127
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public displayWebViewInPopup()V
    .locals 1

    .line 1404
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$12;

    invoke-direct {v0, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$12;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public executeJavaScriptInWebView(Ljava/lang/String;)V
    .locals 1

    .line 1462
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 1464
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$15;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public focusTextRegion(I)V
    .locals 1

    .line 1106
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 1108
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$8;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBatteryLevel()I
    .locals 4

    .line 1033
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1034
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1035
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, 0x0

    .line 1036
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    const/16 v3, 0x64

    .line 1037
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1038
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getCommandLineArgs()Ljava/lang/String;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mArgsString:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAPILevel()I
    .locals 1

    .line 1057
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getExceptionDetails(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 1073
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 1074
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "JNI: Uncaught Java Exception Error: %s\nStackTrace: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JNI: Uncaught Java Exception Error: Unable to cast from JNI pointer - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getInstallerString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1612
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 1613
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1615
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1620
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIOTLOG"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public getLocaleString()Ljava/lang/String;
    .locals 1

    .line 1063
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeApplicationVersionCode()I
    .locals 4

    .line 1591
    :try_start_0
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1592
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    goto :goto_0

    .line 1595
    :cond_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1600
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIOTLOG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    long-to-int v0, v0

    return v0
.end method

.method public getNativeApplicationVersionString()Ljava/lang/String;
    .locals 3

    .line 1568
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1575
    :goto_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1579
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIOTLOG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public getOverridePatchUrl()Ljava/lang/String;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mOverridePatchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhsyicalDPI()I
    .locals 2

    .line 1045
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0

    .line 1048
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1049
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1050
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getPreferencesBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .line 1021
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1022
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 1025
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1027
    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getPreferencesString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1006
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 1007
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0

    .line 1010
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1013
    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryClipboardText()Ljava/lang/String;
    .locals 3

    const-string v0, "clipboard"

    .line 1481
    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1482
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1485
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 1486
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1492
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getStoreApplicationVersionCode()I
    .locals 1

    .line 1628
    iget v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_storeAppVersionCode:I

    return v0
.end method

.method hideSoftInput(I)V
    .locals 1

    .line 960
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 962
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$5;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;I)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideWebView()V
    .locals 1

    const/4 v0, 0x0

    .line 1432
    invoke-direct {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->closeWebView(Z)V

    return-void
.end method

.method initSingular(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 769
    invoke-static {}, Lcom/singular/sdk/Singular;->onActivityResumed()V

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    .line 772
    :goto_0
    new-instance v0, Lcom/singular/sdk/SingularConfig;

    invoke-direct {v0, p1, p2}, Lcom/singular/sdk/SingularConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string p2, "debug_event"

    .line 773
    invoke-virtual {v0, p2, p3, p1}, Lcom/singular/sdk/SingularConfig;->withGlobalProperty(Ljava/lang/String;Ljava/lang/String;Z)Lcom/singular/sdk/SingularConfig;

    move-result-object p1

    .line 775
    invoke-static {p0, p1}, Lcom/singular/sdk/Singular;->init(Landroid/content/Context;Lcom/singular/sdk/SingularConfig;)Z

    return-void
.end method

.method public isDebuggerConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWebViewSupported()Z
    .locals 1

    .line 1759
    iget-boolean v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsWebViewSupported:Z

    return v0
.end method

.method public loadAndDisplayURLInWebView(Ljava/lang/String;Z)V
    .locals 1

    .line 1255
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$10;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadURLInWebView(Ljava/lang/String;Z)V
    .locals 1

    .line 1273
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$11;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveToBack()V
    .locals 1

    .line 1514
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 1515
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$16;

    invoke-direct {v0, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$16;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public native nativeBackButtonPressed()V
.end method

.method public native nativeCollectUpdateSystemEvent(II)Z
.end method

.method public native nativeKeyboardHeightChanged(I)V
.end method

.method public native nativeLogUpdateAvailable(IIZ)Z
.end method

.method public native nativeNetworkConnected()V
.end method

.method public native nativeNetworkDisconnected()V
.end method

.method public native nativeOnReceivedWebViewMessage(Ljava/lang/String;)V
.end method

.method public native nativeOnTrimMemory(I)V
.end method

.method public native nativePageFinished()V
.end method

.method public native nativePageReceivedError(ILjava/lang/String;ZLjava/lang/String;)V
.end method

.method public native nativeReturnPressed(I)V
.end method

.method public native nativeSetDisplayInfo(IIII)V
.end method

.method public native nativeSetText(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public native nativeURLSchemeCalled(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native nativeWebViewClosed(Z)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const p3, 0x6107c0d3

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 1553
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AppUpdate: attempt has failed, possibly cancelled, restarting: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RIOTLOG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->startAppUpdateRequest()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 730
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeBackButtonPressed()V

    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeBackButtonPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "RIOTLOG"

    const-string v1, "onCreate called"

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sget-object v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->sAlreadyrunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 419
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "android.permission.INTERNET"

    .line 423
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->requestAppPermissions([Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "args"

    .line 428
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mArgsString:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 431
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mArgsString:Ljava/lang/String;

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->cleanLogFolder()V

    .line 438
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 440
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->setImmersiveSticky()V

    .line 442
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 444
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;

    invoke-direct {v0, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 483
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$3;

    invoke-direct {v0, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$3;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 500
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_2

    .line 501
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    invoke-interface {p1, v1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 511
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->handleIntent(Landroid/content/Intent;)V

    .line 514
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mSystemMonitorServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsMonitorServiceBound:Z

    .line 518
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_4

    .line 520
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsWebViewSupported:Z

    goto :goto_0

    .line 529
    :cond_4
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.webview"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsWebViewSupported:Z

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 553
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->cleanLogFolder()V

    .line 555
    iget-boolean v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsMonitorServiceBound:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mSystemMonitorServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 557
    iput-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mRiotSystemMonitorService:Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;

    const/4 v0, 0x0

    .line 558
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIsMonitorServiceBound:Z

    .line 561
    :cond_0
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 663
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 664
    invoke-direct {p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "RIOTLOG"

    const-string v1, "onPause called"

    .line 1532
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 p1, 0x0

    .line 707
    :goto_0
    array-length v0, p3

    if-eq p1, v0, :cond_1

    .line 708
    aget v0, p3, p1

    if-eqz v0, :cond_0

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission wasn\'t granted by the user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RIOTLOG"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "RIOTLOG"

    const-string v1, "onResume called"

    .line 715
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 717
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->setImmersiveSticky()V

    .line 718
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->startAppUpdateChecks()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1543
    sget-object v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {v0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeOnTrimMemory(I)V

    return-void
.end method

.method public onWebViewRenderProcessGone(Landroid/webkit/WebView;)V
    .locals 1

    .line 1418
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 1419
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$13;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Landroid/webkit/WebView;)V

    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 676
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->setImmersiveSticky()V

    :cond_0
    return-void
.end method

.method public openURLInExternalBrowser(Ljava/lang/String;)V
    .locals 2

    .line 1526
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1527
    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public pushNotificationLocaleSubscribe(Ljava/lang/String;)V
    .locals 1

    .line 1765
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public pushNotificationLocaleUnsubscribe(Ljava/lang/String;)V
    .locals 1

    .line 1771
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public registerTextRegion(IIIII)V
    .locals 8

    .line 978
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 980
    new-instance v7, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;IIIII)V

    invoke-virtual {p0, v7}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestAppReview()V
    .locals 3

    .line 1706
    :try_start_0
    invoke-static {p0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    .line 1707
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 1708
    new-instance v2, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/play/core/review/ReviewManager;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "RIOTLOG"

    const-string v1, "Failed to request android app review"

    .line 1715
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method sendSingularCustomRevenueEvent(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 799
    invoke-static {p1, p2, p3, p4}, Lcom/singular/sdk/Singular;->customRevenue(Ljava/lang/String;Ljava/lang/String;D)Z

    return-void
.end method

.method sendSingularEvent(Ljava/lang/String;)V
    .locals 0

    .line 793
    invoke-static {p1}, Lcom/singular/sdk/Singular;->event(Ljava/lang/String;)Z

    return-void
.end method

.method sendSingularEventDouble(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 817
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    invoke-static {p1, v0}, Lcom/singular/sdk/Singular;->event(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method sendSingularEventInteger(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 811
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    invoke-static {p1, v0}, Lcom/singular/sdk/Singular;->event(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method sendSingularEventString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 805
    invoke-static {p1, v0}, Lcom/singular/sdk/Singular;->event(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method sentryAddAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 823
    new-instance v0, Lio/sentry/Attachment;

    invoke-direct {v0, p1}, Lio/sentry/Attachment;-><init>(Ljava/lang/String;)V

    .line 824
    new-instance v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda5;-><init>(Lio/sentry/Attachment;)V

    invoke-static {v1}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 829
    invoke-static {p2, p1}, Lio/sentry/Sentry;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sentryInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 835
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 836
    new-instance v7, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {p0, v7}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    .line 898
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method sentrySetAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 905
    new-instance v6, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method sentrySetEnvironment(Ljava/lang/String;)V
    .locals 1

    const-string v0, "environment"

    .line 920
    invoke-static {v0, p1}, Lio/sentry/Sentry;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sentrySetExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 926
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sentrySetExtraTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 932
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sentrySetTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 939
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method sentrySetUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 945
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 946
    invoke-virtual {v0, p1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, p2}, Lio/sentry/protocol/User;->setUsername(Ljava/lang/String;)V

    .line 948
    invoke-static {v0}, Lio/sentry/Sentry;->setUser(Lio/sentry/protocol/User;)V

    return-void
.end method

.method sentrySetUserConsent(Z)V
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mSentryHasUserConsent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setAllowAppUpdates(Z)V
    .locals 1

    .line 1723
    iget-boolean v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_appUpdateAllowed:Z

    if-eq v0, p1, :cond_0

    .line 1725
    iput-boolean p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_appUpdateAllowed:Z

    if-eqz p1, :cond_0

    .line 1728
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->startAppUpdateChecks()V

    :cond_0
    return-void
.end method

.method public setGeneralClipboardText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "clipboard"

    .line 1497
    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1502
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 1503
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    :cond_0
    const-string p1, "RIOTLOG"

    const-string v0, "Failed to set clipboard text"

    .line 1507
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setImmersiveSticky()V
    .locals 3

    .line 739
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 740
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 742
    invoke-direct {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->hideSystemBars()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1706

    .line 744
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method public setMaximumSizeRender()V
    .locals 2

    .line 566
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-void
.end method

.method setSingularCustomUserId(Ljava/lang/String;)V
    .locals 0

    .line 787
    invoke-static {p1}, Lcom/singular/sdk/Singular;->setCustomUserId(Ljava/lang/String;)V

    return-void
.end method

.method public showAlertBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 1220
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;

    invoke-direct {v0, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V

    .line 1221
    iput-object p1, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->title:Ljava/lang/String;

    .line 1222
    iput-object p2, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->message:Ljava/lang/String;

    .line 1223
    iput-object p3, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->options:Ljava/lang/String;

    .line 1224
    iput-object p4, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->optionsValues:Ljava/lang/String;

    .line 1225
    iput p5, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->iconIndex:I

    .line 1226
    invoke-virtual {p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1228
    :try_start_0
    iget-object p1, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->mutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1230
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1233
    :goto_0
    iget p1, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->result:I

    return p1
.end method

.method public startAppUpdateAvailableCheck()V
    .locals 2

    const/4 v0, 0x0

    .line 1633
    iput-boolean v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_updateAvailable:Z

    .line 1634
    iput v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_storeAppVersionCode:I

    .line 1636
    invoke-static {p0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    .line 1638
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 1640
    new-instance v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda4;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/google/android/gms/tasks/Task;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public startAppUpdateChecks()V
    .locals 1

    .line 1737
    iget-boolean v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_updateAvailable:Z

    if-nez v0, :cond_0

    .line 1739
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->startAppUpdateAvailableCheck()V

    goto :goto_0

    .line 1743
    :cond_0
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->startAppUpdateIfAllowed()V

    :goto_0
    return-void
.end method

.method public startAppUpdateIfAllowed()V
    .locals 1

    .line 1750
    iget-boolean v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->_appUpdateAllowed:Z

    if-eqz v0, :cond_0

    .line 1752
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->startAppUpdateRequest()V

    :cond_0
    return-void
.end method

.method public startAppUpdateRequest()V
    .locals 3

    .line 1668
    invoke-static {p0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    .line 1670
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/google/android/play/core/appupdate/AppUpdateManager;)V

    .line 1671
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method stopSingular()V
    .locals 0

    .line 781
    invoke-static {}, Lcom/singular/sdk/Singular;->onActivityPaused()V

    return-void
.end method

.method public updateTextRegion(IIIII)V
    .locals 8

    .line 1086
    sput-object p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 1088
    new-instance v7, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;IIIII)V

    invoke-virtual {p0, v7}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
