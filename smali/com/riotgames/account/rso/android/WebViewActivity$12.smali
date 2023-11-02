.class Lcom/riotgames/account/rso/android/WebViewActivity$12;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/WebViewActivity;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$12;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 581
    iget-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$12;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-virtual {p1}, Lcom/riotgames/account/rso/android/WebViewActivity;->finish()V

    return-void
.end method
