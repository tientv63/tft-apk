.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->deleteTextRegion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field final synthetic val$regionId:I


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1127
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;->val$regionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIdToEdit:Ljava/util/Map;

    iget v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;->val$regionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1134
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIdToEdit:Ljava/util/Map;

    iget v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$9;->val$regionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
