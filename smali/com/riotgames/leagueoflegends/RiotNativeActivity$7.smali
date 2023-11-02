.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->updateTextRegion(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field final synthetic val$height:I

.field final synthetic val$regionId:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1088
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$regionId:I

    iput p3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$width:I

    iput p4, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$height:I

    iput p5, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$x:I

    iput p6, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1091
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIdToEdit:Ljava/util/Map;

    iget v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$regionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;

    if-eqz v0, :cond_0

    .line 1094
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$width:I

    iget v3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1095
    iget v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$x:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1096
    iget v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$7;->val$y:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1097
    invoke-virtual {v0, v1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
