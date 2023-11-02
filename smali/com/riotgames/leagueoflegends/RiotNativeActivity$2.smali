.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 447
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->setImmersiveSticky()V

    .line 449
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_4

    .line 450
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 453
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutTop:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 454
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    iput v1, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutTop:I

    move v0, v3

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutBottom:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 458
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    iput v1, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutBottom:I

    move v0, v3

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutLeft:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 462
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    iput v1, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutLeft:I

    move v0, v3

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutRight:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 466
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p1

    iput p1, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutRight:I

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    if-eqz v3, :cond_4

    .line 471
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v0, p1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutTop:I

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v1, v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutBottom:I

    iget-object v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v2, v2, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutLeft:I

    iget-object v3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$2;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v3, v3, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mDisplayCutoutRight:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeSetDisplayInfo(IIII)V

    :cond_4
    return-object p2
.end method
