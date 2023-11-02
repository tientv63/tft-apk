.class Lcom/riotgames/account/rso/android/WebViewActivity$7;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/WebViewActivity;->Destroy()V
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

    .line 296
    iput-object p1, p0, Lcom/riotgames/account/rso/android/WebViewActivity$7;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$7;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/riotgames/account/rso/android/WebViewActivity;->access$502(Lcom/riotgames/account/rso/android/WebViewActivity;J)J

    .line 300
    iget-object v0, p0, Lcom/riotgames/account/rso/android/WebViewActivity$7;->this$0:Lcom/riotgames/account/rso/android/WebViewActivity;

    invoke-virtual {v0}, Lcom/riotgames/account/rso/android/WebViewActivity;->finish()V

    return-void
.end method
