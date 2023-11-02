.class Lcom/riotgames/push/FirebaseRegister$1;
.super Ljava/lang/Object;
.source "FirebaseRegister.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/push/FirebaseRegister;->getToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/iid/InstanceIdResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/iid/InstanceIdResult;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/riotgames/push/FirebaseRegister;->access$000()J

    move-result-wide v2

    const-string p1, "getInstanceId failed"

    invoke-static {v2, v3, p1, v1}, Lcom/riotgames/push/FirebaseRegister;->onDeviceToken(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-interface {p1}, Lcom/google/firebase/iid/InstanceIdResult;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {}, Lcom/riotgames/push/FirebaseRegister;->access$000()J

    move-result-wide v2

    invoke-static {v2, v3, v1, p1}, Lcom/riotgames/push/FirebaseRegister;->onDeviceToken(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
