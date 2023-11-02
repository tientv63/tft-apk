.class synthetic Lcom/riotgames/platformui/webview/WebViewActivity$14;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$riotgames$platformui$webview$WebViewActivity$WebViewNavigationDecision:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 754
    invoke-static {}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->values()[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$14;->$SwitchMap$com$riotgames$platformui$webview$WebViewActivity$WebViewNavigationDecision:[I

    :try_start_0
    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->OpenInBrowser:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    invoke-virtual {v1}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$14;->$SwitchMap$com$riotgames$platformui$webview$WebViewActivity$WebViewNavigationDecision:[I

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->OpenInWebView:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    invoke-virtual {v1}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$14;->$SwitchMap$com$riotgames$platformui$webview$WebViewActivity$WebViewNavigationDecision:[I

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    invoke-virtual {v1}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
