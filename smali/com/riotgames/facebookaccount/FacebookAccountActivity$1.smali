.class Lcom/riotgames/facebookaccount/FacebookAccountActivity$1;
.super Ljava/lang/Object;
.source "FacebookAccountActivity.java"

# interfaces
.implements Lcom/facebook/FacebookSdk$InitializeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/facebookaccount/FacebookAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

.field final synthetic val$loginActivity:Lcom/riotgames/facebookaccount/FacebookAccountActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/facebookaccount/FacebookAccountActivity;Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$1;->this$0:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    iput-object p2, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$1;->val$loginActivity:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/riotgames/facebookaccount/FacebookAccountActivity$1;->val$loginActivity:Lcom/riotgames/facebookaccount/FacebookAccountActivity;

    invoke-static {v0}, Lcom/riotgames/facebookaccount/FacebookAccountActivity;->access$000(Lcom/riotgames/facebookaccount/FacebookAccountActivity;)V

    return-void
.end method
