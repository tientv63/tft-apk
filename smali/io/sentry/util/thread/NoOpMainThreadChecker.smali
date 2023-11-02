.class public final Lio/sentry/util/thread/NoOpMainThreadChecker;
.super Ljava/lang/Object;
.source "NoOpMainThreadChecker.java"

# interfaces
.implements Lio/sentry/util/thread/IMainThreadChecker;


# static fields
.field private static final instance:Lio/sentry/util/thread/NoOpMainThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lio/sentry/util/thread/NoOpMainThreadChecker;

    invoke-direct {v0}, Lio/sentry/util/thread/NoOpMainThreadChecker;-><init>()V

    sput-object v0, Lio/sentry/util/thread/NoOpMainThreadChecker;->instance:Lio/sentry/util/thread/NoOpMainThreadChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/util/thread/NoOpMainThreadChecker;
    .locals 1

    .line 11
    sget-object v0, Lio/sentry/util/thread/NoOpMainThreadChecker;->instance:Lio/sentry/util/thread/NoOpMainThreadChecker;

    return-object v0
.end method


# virtual methods
.method public isMainThread(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
