.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$5;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;->hideSoftInput(I)V
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

    .line 962
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$5;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$5;->val$regionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 965
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$5;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v0, v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->mIdToEdit:Ljava/util/Map;

    iget v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$5;->val$regionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;

    if-eqz v0, :cond_0

    .line 967
    sget-object v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 968
    invoke-virtual {v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
