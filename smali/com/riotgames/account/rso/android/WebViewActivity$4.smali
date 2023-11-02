.class Lcom/riotgames/account/rso/android/WebViewActivity$4;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;->loadErrorPage(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

.field final synthetic val$error:I

.field final synthetic val$locale:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/WebViewActivity;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$4;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    iput p2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$4;->val$error:I

    iput-object p3, p0, Lcom/riotgames/account/rso/android/WebViewActivity$4;->val$locale:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$4;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///error.html?error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$4;->val$error:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$4;->val$locale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/riotgames/account/rso/android/WebViewActivity;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
