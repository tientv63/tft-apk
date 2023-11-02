.class Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;
.super Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;
.source "ApiStartSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    invoke-direct {p0}, Lcom/singular/sdk/internal/LicenseApiHelper$LicenseResultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    invoke-static {v0, p1}, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->access$200(Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iget-object v0, v0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->this$0:Lcom/singular/sdk/internal/ApiStartSession;

    .line 159
    invoke-static {v0}, Lcom/singular/sdk/internal/ApiStartSession;->access$100(Lcom/singular/sdk/internal/ApiStartSession;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object p1, p1, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iget-object p1, p1, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->this$0:Lcom/singular/sdk/internal/ApiStartSession;

    invoke-static {p1}, Lcom/singular/sdk/internal/ApiStartSession;->access$100(Lcom/singular/sdk/internal/ApiStartSession;)I

    move-result p1

    mul-int/lit16 p1, p1, 0xbb8

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 163
    iget-object p1, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object p1, p1, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->this$1:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;

    iget-object p2, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object p2, p2, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->val$singular:Lcom/singular/sdk/internal/SingularInstance;

    iget-object p3, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object p3, p3, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->val$identifier:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback;->performLicenseCheck(Lcom/singular/sdk/internal/SingularInstance;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "responseCode"

    .line 170
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "signedData"

    .line 171
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "signature"

    .line 172
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    new-instance p1, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;

    const-string p2, "__LicensingStatus"

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1$1;->this$2:Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;

    iget-object p2, p2, Lcom/singular/sdk/internal/ApiStartSession$OnSessionStartCallback$1;->val$singular:Lcom/singular/sdk/internal/SingularInstance;

    invoke-virtual {p2, p1}, Lcom/singular/sdk/internal/SingularInstance;->logEvent(Lcom/singular/sdk/internal/ApiSubmitEvent$RawEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 180
    invoke-static {}, Lcom/singular/sdk/internal/ApiStartSession;->access$000()Lcom/singular/sdk/internal/SingularLog;

    move-result-object p2

    const-string p3, "Error occurred while trying to send licensing status event"

    invoke-virtual {p2, p3, p1}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
