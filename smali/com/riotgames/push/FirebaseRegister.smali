.class Lcom/riotgames/push/FirebaseRegister;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FirebaseRegister.java"


# static fields
.field private static cppThisPtr:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 11
    sget-wide v0, Lcom/riotgames/push/FirebaseRegister;->cppThisPtr:J

    return-wide v0
.end method

.method static getToken()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/riotgames/push/FirebaseRegister$1;

    invoke-direct {v1}, Lcom/riotgames/push/FirebaseRegister$1;-><init>()V

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method static initialize(J)V
    .locals 0

    .line 17
    sput-wide p0, Lcom/riotgames/push/FirebaseRegister;->cppThisPtr:J

    return-void
.end method

.method static native onDeviceToken(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static subscribeToTopic(Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/riotgames/push/FirebaseRegister$2;

    invoke-direct {v0}, Lcom/riotgames/push/FirebaseRegister$2;-><init>()V

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public onNewToken(Ljava/lang/String;)V
    .locals 3

    .line 49
    sget-wide v0, Lcom/riotgames/push/FirebaseRegister;->cppThisPtr:J

    const-string v2, ""

    invoke-static {v0, v1, v2, p1}, Lcom/riotgames/push/FirebaseRegister;->onDeviceToken(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
