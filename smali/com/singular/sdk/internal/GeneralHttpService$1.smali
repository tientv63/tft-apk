.class Lcom/singular/sdk/internal/GeneralHttpService$1;
.super Ljava/lang/Object;
.source "GeneralHttpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/singular/sdk/internal/GeneralHttpService;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/singular/sdk/internal/GeneralHttpService;

.field final synthetic val$body:Ljava/util/Map;

.field final synthetic val$completionHandler:Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;

.field final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/singular/sdk/internal/GeneralHttpService;Ljava/lang/String;Ljava/util/Map;Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->this$0:Lcom/singular/sdk/internal/GeneralHttpService;

    iput-object p2, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$requestUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$body:Ljava/util/Map;

    iput-object p4, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$completionHandler:Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->this$0:Lcom/singular/sdk/internal/GeneralHttpService;

    iget-object v1, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$requestUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$body:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/singular/sdk/internal/GeneralHttpService;->access$000(Lcom/singular/sdk/internal/GeneralHttpService;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 101
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 103
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 113
    :goto_0
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 115
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 121
    iget-object v0, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$completionHandler:Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;

    invoke-interface {v0, v2, v1}, Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;->onSuccess(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 123
    iget-object v1, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->val$completionHandler:Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending request: message - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/singular/sdk/internal/GeneralHttpServiceBase$CompletionHandler;->onFailure(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/singular/sdk/internal/GeneralHttpService$1;->this$0:Lcom/singular/sdk/internal/GeneralHttpService;

    invoke-static {v1}, Lcom/singular/sdk/internal/GeneralHttpService;->access$100(Lcom/singular/sdk/internal/GeneralHttpService;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v1

    invoke-static {v0}, Lcom/singular/sdk/internal/Utils;->formatException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/singular/sdk/internal/SingularLog;->error(Ljava/lang/String;)I

    :goto_2
    return-void
.end method
