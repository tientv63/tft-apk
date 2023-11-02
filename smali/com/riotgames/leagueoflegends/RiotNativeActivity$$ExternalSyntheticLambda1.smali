.class public final synthetic Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field public final synthetic f$1:Lcom/google/android/play/core/appupdate/AppUpdateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/google/android/play/core/appupdate/AppUpdateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda1;->f$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iput-object p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda1;->f$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-static {v0, v1, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->$r8$lambda$Q6FNgVtomSEutTwsTSSJV8eDPPE(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/google/android/play/core/appupdate/AppUpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
