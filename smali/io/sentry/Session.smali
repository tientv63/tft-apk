.class public final Lio/sentry/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Session$State;,
        Lio/sentry/Session$JsonKeys;,
        Lio/sentry/Session$Deserializer;
    }
.end annotation


# instance fields
.field private abnormalMechanism:Ljava/lang/String;

.field private final distinctId:Ljava/lang/String;

.field private duration:Ljava/lang/Double;

.field private final environment:Ljava/lang/String;

.field private final errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private init:Ljava/lang/Boolean;

.field private final ipAddress:Ljava/lang/String;

.field private final release:Ljava/lang/String;

.field private sequence:Ljava/lang/Long;

.field private final sessionId:Ljava/util/UUID;

.field private final sessionLock:Ljava/lang/Object;

.field private final started:Ljava/util/Date;

.field private status:Lio/sentry/Session$State;

.field private timestamp:Ljava/util/Date;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Session;->sessionLock:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    .line 91
    iput-object p2, p0, Lio/sentry/Session;->started:Ljava/util/Date;

    .line 92
    iput-object p3, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    .line 93
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    iput-object p5, p0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    .line 95
    iput-object p6, p0, Lio/sentry/Session;->sessionId:Ljava/util/UUID;

    .line 96
    iput-object p7, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    .line 97
    iput-object p8, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    .line 98
    iput-object p9, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    .line 99
    iput-object p10, p0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    .line 100
    iput-object p11, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    .line 101
    iput-object p12, p0, Lio/sentry/Session;->environment:Ljava/lang/String;

    .line 102
    iput-object p13, p0, Lio/sentry/Session;->release:Ljava/lang/String;

    .line 103
    iput-object p14, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .line 111
    sget-object v1, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    .line 113
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v2

    .line 114
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v3

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    const/4 v0, 0x1

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual/range {p2 .. p2}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v5, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 111
    invoke-direct/range {v0 .. v14}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private calculateDurationTime(Ljava/util/Date;)D
    .locals 4

    .line 240
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p1, p0, Lio/sentry/Session;->started:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getSequenceTimestamp(Ljava/util/Date;)J
    .locals 4

    .line 309
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 313
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public clone()Lio/sentry/Session;
    .locals 17

    move-object/from16 v0, p0

    .line 325
    new-instance v16, Lio/sentry/Session;

    iget-object v2, v0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    iget-object v3, v0, Lio/sentry/Session;->started:Ljava/util/Date;

    iget-object v4, v0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    iget-object v1, v0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 329
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, v0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    iget-object v7, v0, Lio/sentry/Session;->sessionId:Ljava/util/UUID;

    iget-object v8, v0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    iget-object v9, v0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    iget-object v10, v0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    iget-object v11, v0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    iget-object v12, v0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    iget-object v13, v0, Lio/sentry/Session;->environment:Ljava/lang/String;

    iget-object v14, v0, Lio/sentry/Session;->release:Ljava/lang/String;

    iget-object v15, v0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 1

    .line 202
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Session;->end(Ljava/util/Date;)V

    return-void
.end method

.method public end(Ljava/util/Date;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lio/sentry/Session;->sessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 212
    :try_start_0
    iput-object v1, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    .line 215
    iget-object v1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    sget-object v2, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    if-ne v1, v2, :cond_0

    .line 216
    sget-object v1, Lio/sentry/Session$State;->Exited:Lio/sentry/Session$State;

    iput-object v1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    :cond_0
    if-eqz p1, :cond_1

    .line 220
    iput-object p1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    .line 225
    :goto_0
    iget-object p1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_2

    .line 226
    invoke-direct {p0, p1}, Lio/sentry/Session;->calculateDurationTime(Ljava/util/Date;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    .line 227
    iget-object p1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    invoke-direct {p0, p1}, Lio/sentry/Session;->getSequenceTimestamp(Ljava/util/Date;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    .line 229
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public errorCount()I
    .locals 1

    .line 175
    iget-object v0, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getAbnormalMechanism()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Double;
    .locals 1

    .line 187
    iget-object v0, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lio/sentry/Session;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getInit()Ljava/lang/Boolean;
    .locals 1

    .line 165
    iget-object v0, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/sentry/Session;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()Ljava/lang/Long;
    .locals 1

    .line 183
    iget-object v0, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    return-object v0
.end method

.method public getSessionId()Ljava/util/UUID;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/sentry/Session;->sessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public getStarted()Ljava/util/Date;
    .locals 1

    .line 134
    iget-object v0, p0, Lio/sentry/Session;->started:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Lio/sentry/Session$State;
    .locals 1

    .line 179
    iget-object v0, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 196
    iget-object v0, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lio/sentry/Session;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isTerminated()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    sget-object v1, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 367
    iget-object v0, p0, Lio/sentry/Session;->sessionId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    const-string v0, "sid"

    .line 368
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->sessionId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 370
    :cond_0
    iget-object v0, p0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "did"

    .line 371
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->distinctId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 373
    :cond_1
    iget-object v0, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const-string v0, "init"

    .line 374
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Boolean;)Lio/sentry/ObjectWriter;

    :cond_2
    const-string v0, "started"

    .line 376
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->started:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    const-string v0, "status"

    .line 377
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    invoke-virtual {v1}, Lio/sentry/Session$State;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 378
    iget-object v0, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const-string v0, "seq"

    .line 379
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    :cond_3
    const-string v0, "errors"

    .line 381
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    .line 382
    iget-object v0, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    if-eqz v0, :cond_4

    const-string v0, "duration"

    .line 383
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->duration:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/Number;)Lio/sentry/ObjectWriter;

    .line 385
    :cond_4
    iget-object v0, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_5

    const-string v0, "timestamp"

    .line 386
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 388
    :cond_5
    iget-object v0, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "abnormal_mechanism"

    .line 389
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_6
    const-string v0, "attrs"

    .line 391
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 392
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    const-string v0, "release"

    .line 393
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->release:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 394
    iget-object v0, p0, Lio/sentry/Session;->environment:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "environment"

    .line 395
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->environment:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 397
    :cond_7
    iget-object v0, p0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "ip_address"

    .line 398
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->ipAddress:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 400
    :cond_8
    iget-object v0, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "user_agent"

    .line 401
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 403
    :cond_9
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 404
    iget-object v0, p0, Lio/sentry/Session;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 405
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    iget-object v2, p0, Lio/sentry/Session;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 407
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 408
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 411
    :cond_a
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setInitAsTrue()V
    .locals 1

    const/4 v0, 0x1

    .line 171
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lio/sentry/Session;->unknown:Ljava/util/Map;

    return-void
.end method

.method public update(Lio/sentry/Session$State;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3

    .line 265
    iget-object v0, p0, Lio/sentry/Session;->sessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 268
    :try_start_0
    iput-object p1, p0, Lio/sentry/Session;->status:Lio/sentry/Session$State;

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 273
    iput-object p2, p0, Lio/sentry/Session;->userAgent:Ljava/lang/String;

    move v1, v2

    :cond_1
    if-eqz p3, :cond_2

    .line 277
    iget-object p1, p0, Lio/sentry/Session;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move v1, v2

    :cond_2
    if-eqz p4, :cond_3

    .line 286
    iput-object p4, p0, Lio/sentry/Session;->abnormalMechanism:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    const/4 p1, 0x0

    .line 291
    iput-object p1, p0, Lio/sentry/Session;->init:Ljava/lang/Boolean;

    .line 292
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_4

    .line 294
    invoke-direct {p0, p1}, Lio/sentry/Session;->getSequenceTimestamp(Ljava/util/Date;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->sequence:Ljava/lang/Long;

    .line 297
    :cond_4
    monitor-exit v0

    return v2

    .line 298
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
