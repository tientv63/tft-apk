.class final enum Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;
.super Ljava/lang/Enum;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/platformui/webview/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WebViewPageCloseReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

.field public static final enum NavigationError:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

.field public static final enum None:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

.field public static final enum PageRequestedClose:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

.field public static final enum ResourceNotFound:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

.field public static final enum UserRequestedClose:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;


# direct methods
.method private static synthetic $values()[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    .line 93
    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->None:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->UserRequestedClose:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->PageRequestedClose:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->ResourceNotFound:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->NavigationError:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 95
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->None:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    .line 96
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v1, "UserRequestedClose"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->UserRequestedClose:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    .line 97
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v1, "PageRequestedClose"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->PageRequestedClose:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    .line 98
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v1, "ResourceNotFound"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->ResourceNotFound:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    .line 99
    new-instance v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    const-string v1, "NavigationError"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->NavigationError:Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    .line 93
    invoke-static {}, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->$values()[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    move-result-object v0

    sput-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->$VALUES:[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;
    .locals 1

    .line 93
    const-class v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    return-object p0
.end method

.method public static values()[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;
    .locals 1

    .line 93
    sget-object v0, Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->$VALUES:[Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    invoke-virtual {v0}, [Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/riotgames/platformui/webview/WebViewActivity$WebViewPageCloseReason;

    return-object v0
.end method
