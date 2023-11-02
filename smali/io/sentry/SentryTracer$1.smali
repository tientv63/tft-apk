.class Lio/sentry/SentryTracer$1;
.super Ljava/util/TimerTask;
.source "SentryTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/SentryTracer;->scheduleFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/SentryTracer;


# direct methods
.method constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lio/sentry/SentryTracer$1;->this$0:Lio/sentry/SentryTracer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lio/sentry/SentryTracer$1;->this$0:Lio/sentry/SentryTracer;

    invoke-static {v0}, Lio/sentry/SentryTracer;->access$000(Lio/sentry/SentryTracer;)V

    return-void
.end method
