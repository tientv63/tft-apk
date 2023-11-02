.class Lcom/riotgames/account/rso/android/WebViewActivity$6;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;->Finish(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

.field final synthetic val$userInitiated:Z


# direct methods
.method constructor <init>(Lcom/riotgames/account/rso/android/WebViewActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$6;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    iput-boolean p2, p0, Lcom/riotgames/account/rso/android/WebViewActivity$6;->val$userInitiated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$6;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    iget-boolean v1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$6;->val$userInitiated:Z

    invoke-static {v0, v1}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$402(Lcom/riotgames/account/rso/android/WebViewActivity;Z)Z

    .line 290
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$6;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-virtual {v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->finish()V

    return-void
.end method
