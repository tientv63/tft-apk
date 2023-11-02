.class Lcom/riotgames/installreferrer/InstallReferrer$1$1;
.super Ljava/lang/Object;
.source "InstallReferrer.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/installreferrer/InstallReferrer$1;->call()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;


# direct methods
.method constructor <init>(Lcom/riotgames/installreferrer/InstallReferrer$1;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object v0, v0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v0}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v0

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object v1, v1, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v1}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "Riot SDK"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Singular: InstallReferrerSetupFinished with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object p1, p1, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {p1}, Lcom/riotgames/installreferrer/InstallReferrer;->access$000(Lcom/riotgames/installreferrer/InstallReferrer;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object v0, v0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v0}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "referrer"

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object v0, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object v0, v0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v0}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "clickTimestampSeconds"

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    iget-object v0, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object v0, v0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v0}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "installBeginTimestampSeconds"

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 45
    iget-object p1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object p1, p1, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {p1}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "referrer_source"

    const-string v1, "service"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object p1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object p1, p1, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {p1}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "current_device_time"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Riot SDK"

    const-string v0, "Singular: Failed to call getInstallReferrer"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    iget-object p1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object p1, p1, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {p1}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object p1

    monitor-enter p1

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object v0, v0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v0}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    iget-object p1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1$1;->this$1:Lcom/riotgames/installreferrer/InstallReferrer$1;

    iget-object p1, p1, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {p1}, Lcom/riotgames/installreferrer/InstallReferrer;->access$000(Lcom/riotgames/installreferrer/InstallReferrer;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    return-void

    :catchall_0
    move-exception v0

    .line 58
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
