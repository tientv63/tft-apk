.class Lcom/riotgames/googleaccount/GoogleAccountActivity$1;
.super Ljava/lang/Object;
.source "GoogleAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/googleaccount/GoogleAccountActivity;->Destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/googleaccount/GoogleAccountActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/googleaccount/GoogleAccountActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/riotgames/googleaccount/GoogleAccountActivity$1;->this$0:Lcom/riotgames/googleaccount/GoogleAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/riotgames/googleaccount/GoogleAccountActivity$1;->this$0:Lcom/riotgames/googleaccount/GoogleAccountActivity;

    invoke-virtual {v0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/riotgames/googleaccount/GoogleAccountActivity$1;->this$0:Lcom/riotgames/googleaccount/GoogleAccountActivity;

    invoke-virtual {v0}, Lcom/riotgames/googleaccount/GoogleAccountActivity;->finish()V

    return-void
.end method
