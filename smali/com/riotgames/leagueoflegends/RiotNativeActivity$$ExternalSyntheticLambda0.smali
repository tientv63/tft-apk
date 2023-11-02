.class public final synthetic Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/review/ReviewManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/play/core/review/ReviewManager;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/play/core/review/ReviewManager;

    invoke-static {v0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->lambda$requestAppReview$7(Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
