.class public final Lio/sentry/TransactionOptions;
.super Lio/sentry/SpanOptions;
.source "TransactionOptions.java"


# instance fields
.field private bindToScope:Z

.field private customSamplingContext:Lio/sentry/CustomSamplingContext;

.field private idleTimeout:Ljava/lang/Long;

.field private startTimestamp:Lio/sentry/SentryDate;

.field private transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

.field private waitForChildren:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lio/sentry/SpanOptions;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lio/sentry/TransactionOptions;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->bindToScope:Z

    .line 18
    iput-object v0, p0, Lio/sentry/TransactionOptions;->startTimestamp:Lio/sentry/SentryDate;

    .line 25
    iput-boolean v1, p0, Lio/sentry/TransactionOptions;->waitForChildren:Z

    .line 35
    iput-object v0, p0, Lio/sentry/TransactionOptions;->idleTimeout:Ljava/lang/Long;

    .line 41
    iput-object v0, p0, Lio/sentry/TransactionOptions;->transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

    return-void
.end method


# virtual methods
.method public getCustomSamplingContext()Lio/sentry/CustomSamplingContext;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/sentry/TransactionOptions;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    return-object v0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 1

    .line 121
    iget-object v0, p0, Lio/sentry/TransactionOptions;->idleTimeout:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartTimestamp()Lio/sentry/SentryDate;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/sentry/TransactionOptions;->startTimestamp:Lio/sentry/SentryDate;

    return-object v0
.end method

.method public getTransactionFinishedCallback()Lio/sentry/TransactionFinishedCallback;
    .locals 1

    .line 139
    iget-object v0, p0, Lio/sentry/TransactionOptions;->transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

    return-object v0
.end method

.method public isBindToScope()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lio/sentry/TransactionOptions;->bindToScope:Z

    return v0
.end method

.method public isWaitForChildren()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lio/sentry/TransactionOptions;->waitForChildren:Z

    return v0
.end method

.method public setBindToScope(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->bindToScope:Z

    return-void
.end method

.method public setCustomSamplingContext(Lio/sentry/CustomSamplingContext;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lio/sentry/TransactionOptions;->customSamplingContext:Lio/sentry/CustomSamplingContext;

    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lio/sentry/TransactionOptions;->idleTimeout:Ljava/lang/Long;

    return-void
.end method

.method public setStartTimestamp(Lio/sentry/SentryDate;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lio/sentry/TransactionOptions;->startTimestamp:Lio/sentry/SentryDate;

    return-void
.end method

.method public setTransactionFinishedCallback(Lio/sentry/TransactionFinishedCallback;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lio/sentry/TransactionOptions;->transactionFinishedCallback:Lio/sentry/TransactionFinishedCallback;

    return-void
.end method

.method public setWaitForChildren(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lio/sentry/TransactionOptions;->waitForChildren:Z

    return-void
.end method
