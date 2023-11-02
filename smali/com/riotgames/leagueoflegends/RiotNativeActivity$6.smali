.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->registerTextRegion(IIIII)V
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

    .line 980
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$regionId:I

    iput p3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$width:I

    iput p4, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$height:I

    iput p5, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$x:I

    iput p6, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 983
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    new-instance v1, Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mLayout:Landroid/view/ViewGroup;

    .line 985
    sget-object v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->setContentView(Landroid/view/View;)V

    .line 988
    :cond_0
    new-instance v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    sget-object v2, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$regionId:I

    iget-object v4, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {v4}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/riotgames/leagueoflegends/RiotNativeActivity;ILandroid/content/Context;)V

    .line 990
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$width:I

    iget v3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 991
    iget v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$x:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 992
    iget v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$y:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 994
    iget-object v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v2, v2, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIdToEdit:Ljava/util/Map;

    iget v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$6;->val$regionId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
