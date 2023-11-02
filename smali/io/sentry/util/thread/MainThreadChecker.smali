.class public final Lio/sentry/util/thread/MainThreadChecker;
.super Ljava/lang/Object;
.source "MainThreadChecker.java"

# interfaces
.implements Lio/sentry/util/thread/IMainThreadChecker;


# static fields
.field private static final instance:Lio/sentry/util/thread/MainThreadChecker;

.field private static final mainThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/util/thread/MainThreadChecker;->mainThreadId:J

    .line 16
    new-instance v0, Lio/sentry/util/thread/MainThreadChecker;

    invoke-direct {v0}, Lio/sentry/util/thread/MainThreadChecker;-><init>()V

    sput-object v0, Lio/sentry/util/thread/MainThreadChecker;->instance:Lio/sentry/util/thread/MainThreadChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/util/thread/MainThreadChecker;
    .locals 1

    .line 19
    sget-object v0, Lio/sentry/util/thread/MainThreadChecker;->instance:Lio/sentry/util/thread/MainThreadChecker;

    return-object v0
.end method


# virtual methods
.method public isMainThread(J)Z
    .locals 2

    .line 26
    sget-wide v0, Lio/sentry/util/thread/MainThreadChecker;->mainThreadId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
