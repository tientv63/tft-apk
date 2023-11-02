.class public final Lio/sentry/EnvelopeSender;
.super Lio/sentry/DirectoryProcessor;
.source "EnvelopeSender.java"

# interfaces
.implements Lio/sentry/IEnvelopeSender;


# instance fields
.field private final hub:Lio/sentry/IHub;

.field private final logger:Lio/sentry/ILogger;

.field private final serializer:Lio/sentry/ISerializer;


# direct methods
.method public constructor <init>(Lio/sentry/IHub;Lio/sentry/ISerializer;Lio/sentry/ILogger;J)V
    .locals 0

    .line 29
    invoke-direct {p0, p3, p4, p5}, Lio/sentry/DirectoryProcessor;-><init>(Lio/sentry/ILogger;J)V

    const-string p4, "Hub is required."

    .line 30
    invoke-static {p1, p4}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/EnvelopeSender;->hub:Lio/sentry/IHub;

    const-string p1, "Serializer is required."

    .line 31
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISerializer;

    iput-object p1, p0, Lio/sentry/EnvelopeSender;->serializer:Lio/sentry/ISerializer;

    const-string p1, "Logger is required."

    .line 32
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method private safeDelete(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    const-string v0, "Failed to delete \'%s\' %s"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 123
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    iget-object v4, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v6, v3, [Ljava/lang/Object;

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object p2, v6, v1

    .line 124
    invoke-interface {v4, v5, v0, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 131
    iget-object v5, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    .line 131
    invoke-interface {v5, v6, v4, v0, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected isRelevantFileName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".envelope"

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$processFile$0$io-sentry-EnvelopeSender(Lio/sentry/hints/Flushable;)V
    .locals 3

    .line 70
    invoke-interface {p1}, Lio/sentry/hints/Flushable;->waitFlush()Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    iget-object p1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Timed out waiting for envelope submission."

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$processFile$1$io-sentry-EnvelopeSender(Ljava/lang/Throwable;Ljava/io/File;Lio/sentry/hints/Retryable;)V
    .locals 3

    const/4 v0, 0x0

    .line 86
    invoke-interface {p3, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    .line 87
    iget-object p3, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "File \'%s\' won\'t retry."

    invoke-interface {p3, v1, p1, p2, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$processFile$2$io-sentry-EnvelopeSender(Ljava/io/File;Lio/sentry/hints/Retryable;)V
    .locals 3

    .line 96
    invoke-interface {p2}, Lio/sentry/hints/Retryable;->isRetry()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const-string p2, "after trying to capture it"

    .line 97
    invoke-direct {p0, p1, p2}, Lio/sentry/EnvelopeSender;->safeDelete(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Deleted file %s."

    invoke-interface {p2, v2, p1, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p2, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "File not deleted since retry was marked. %s."

    .line 100
    invoke-interface {p2, v2, p1, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic processDirectory(Ljava/io/File;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/sentry/DirectoryProcessor;->processDirectory(Ljava/io/File;)V

    return-void
.end method

.method public processEnvelopeFile(Ljava/lang/String;Lio/sentry/Hint;)V
    .locals 1

    const-string v0, "Path is required."

    .line 116
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lio/sentry/EnvelopeSender;->processFile(Ljava/io/File;Lio/sentry/Hint;)V

    return-void
.end method

.method protected processFile(Ljava/io/File;Lio/sentry/Hint;)V
    .locals 8

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 38
    iget-object p2, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "\'%s\' is not a file."

    invoke-interface {p2, v0, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/EnvelopeSender;->isRelevantFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object p2, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "File \'%s\' doesn\'t match extension expected."

    .line 43
    invoke-interface {p2, v0, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    iget-object p2, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "File \'%s\' cannot be deleted so it will not be processed."

    .line 49
    invoke-interface {p2, v0, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 57
    :try_start_1
    iget-object v3, p0, Lio/sentry/EnvelopeSender;->serializer:Lio/sentry/ISerializer;

    invoke-interface {v3, v0}, Lio/sentry/ISerializer;->deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v3

    if-nez v3, :cond_3

    .line 59
    iget-object v3, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to deserialize cached envelope %s"

    new-array v6, v2, [Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 59
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_3
    iget-object v4, p0, Lio/sentry/EnvelopeSender;->hub:Lio/sentry/IHub;

    invoke-interface {v4, v3, p2}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 65
    :goto_0
    const-class v3, Lio/sentry/hints/Flushable;

    iget-object v4, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v5, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/EnvelopeSender;)V

    invoke-static {p2, v3, v4, v5}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 56
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 79
    :try_start_5
    iget-object v3, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to capture cached envelope %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 79
    invoke-interface {v3, v4, v0, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    const-class v1, Lio/sentry/hints/Retryable;

    iget-object v2, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v3, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda2;-><init>(Lio/sentry/EnvelopeSender;Ljava/lang/Throwable;Ljava/io/File;)V

    invoke-static {p2, v1, v2, v3}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 91
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 77
    :try_start_6
    iget-object v3, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "I/O on file \'%s\' failed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-interface {v3, v4, v0, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 91
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 75
    :try_start_7
    iget-object v3, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "File \'%s\' cannot be found."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-interface {v3, v4, v0, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 91
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    :goto_2
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void

    :catchall_3
    move-exception v0

    const-class v1, Lio/sentry/hints/Retryable;

    iget-object v2, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v3, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    invoke-static {p2, v1, v2, v3}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 106
    throw v0
.end method
