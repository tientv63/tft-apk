.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$1;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;

.field final synthetic val$optionsValuesList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1179
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$1;->this$1:Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;

    iput-object p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$1;->val$optionsValuesList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1182
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$1;->this$1:Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;

    iget-object p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$1;->val$optionsValuesList:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->setResult(I)V

    return-void
.end method
