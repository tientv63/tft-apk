.class final enum Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;
.super Ljava/lang/Enum;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WebViewNavigationDecision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

.field public static final enum IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

.field public static final enum OpenInBrowser:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

.field public static final enum OpenInWebView:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;


# direct methods
.method private static synthetic $values()[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    .line 88
    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->OpenInWebView:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->OpenInBrowser:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 89
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    const-string v1, "IgnoreNavigation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->IgnoreNavigation:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    .line 90
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    const-string v1, "OpenInWebView"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->OpenInWebView:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    .line 91
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    const-string v1, "OpenInBrowser"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->OpenInBrowser:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    .line 88
    invoke-static {}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->$values()[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    move-result-object v0

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->$VALUES:[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;
    .locals 1

    .line 88
    const-class v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    return-object p0
.end method

.method public static values()[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;
    .locals 1

    .line 88
    sget-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->$VALUES:[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    invoke-virtual {v0}, [Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/riotgames/platformui/webview/WebViewActivity$WebViewNavigationDecision;

    return-object v0
.end method
