.class Lcom/riotgames/account/rso/android/WebViewActivity$11;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/WebViewActivity;Landroid/app/Activity;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$11;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    iput-object p2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 530
    new-instance p1, Landroid/app/AlertDialog$Builder;

    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$11;->val$activity:Landroid/app/Activity;

    sget v1, Lcom/riotgames/pp/sdk/R$style;->RSODialogTheme:I

    invoke-direct {p2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 531
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 532
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/riotgames/account/rso/android/WebViewActivity$11$3;

    invoke-direct {p3, p0, p4}, Lcom/riotgames/account/rso/android/WebViewActivity$11$3;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity$11;Landroid/webkit/JsResult;)V

    const v0, 0x104000a

    .line 533
    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/riotgames/account/rso/android/WebViewActivity$11$2;

    invoke-direct {p3, p0, p4}, Lcom/riotgames/account/rso/android/WebViewActivity$11$2;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity$11;Landroid/webkit/JsResult;)V

    const/high16 v0, 0x1040000

    .line 539
    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p3, Lcom/riotgames/account/rso/android/WebViewActivity$11$1;

    invoke-direct {p3, p0, p4}, Lcom/riotgames/account/rso/android/WebViewActivity$11$1;-><init>(Lcom/riotgames/account/rso/android/WebViewActivity$11;Landroid/webkit/JsResult;)V

    .line 545
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 551
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return p2
.end method
