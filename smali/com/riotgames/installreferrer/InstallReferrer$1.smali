.class Lcom/riotgames/installreferrer/InstallReferrer$1;
.super Ljava/lang/Object;
.source "InstallReferrer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/installreferrer/InstallReferrer;->connect()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/installreferrer/InstallReferrer;


# direct methods
.method constructor <init>(Lcom/riotgames/installreferrer/InstallReferrer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/riotgames/installreferrer/InstallReferrer$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v0}, Lcom/riotgames/installreferrer/InstallReferrer;->access$000(Lcom/riotgames/installreferrer/InstallReferrer;)Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    new-instance v1, Lcom/riotgames/installreferrer/InstallReferrer$1$1;

    invoke-direct {v1, p0}, Lcom/riotgames/installreferrer/InstallReferrer$1$1;-><init>(Lcom/riotgames/installreferrer/InstallReferrer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    .line 72
    iget-object v0, p0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v0}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v0

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v1}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/riotgames/installreferrer/InstallReferrer;->access$200()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 74
    iget-object v1, p0, Lcom/riotgames/installreferrer/InstallReferrer$1;->this$0:Lcom/riotgames/installreferrer/InstallReferrer;

    invoke-static {v1}, Lcom/riotgames/installreferrer/InstallReferrer;->access$100(Lcom/riotgames/installreferrer/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
