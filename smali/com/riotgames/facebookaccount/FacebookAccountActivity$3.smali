.class Lcom/riotgames/facebookaccount/FacebookAccountActivity$3;
.super Ljava/lang/Object;
.source "FacebookAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/facebookaccount/FacebookAccountActivity;->Destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$3;->this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$3;->this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-virtual {v0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uuid"

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$3;->this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-virtual {v0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->finish()V

    return-void
.end method
