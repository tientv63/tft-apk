.class public final Lio/sentry/android/core/ScreenshotEventProcessor;
.super Ljava/lang/Object;
.source "ScreenshotEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;
.implements Lio/sentry/IntegrationName;


# static fields
.field private static final DEBOUNCE_WAIT_TIME_MS:J = 0x7d0L


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final debouncer:Lio/sentry/android/core/internal/util/Debouncer;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryAndroidOptions is required"

    .line 37
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "BuildInfoProvider is required"

    .line 39
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 40
    new-instance p2, Lio/sentry/android/core/internal/util/Debouncer;

    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-direct {p2, v0, v1, v2}, Lio/sentry/android/core/internal/util/Debouncer;-><init>(Lio/sentry/transport/ICurrentDateProvider;J)V

    iput-object p2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->debouncer:Lio/sentry/android/core/internal/util/Debouncer;

    .line 42
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lio/sentry/android/core/ScreenshotEventProcessor;->addIntegrationToSdkVersion()V

    :cond_0
    return-void
.end method


# virtual methods
.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 4

    .line 49
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object p2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "attachScreenshot is disabled."

    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 57
    :cond_1
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/CurrentActivityHolder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 58
    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->debouncer:Lio/sentry/android/core/internal/util/Debouncer;

    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/Debouncer;->checkForDebounce()Z

    move-result v1

    .line 65
    iget-object v2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 66
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getBeforeScreenshotCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 68
    invoke-interface {v2, p1, p2, v1}, Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;->execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;Z)Z

    move-result v1

    if-nez v1, :cond_4

    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    return-object p1

    .line 75
    :cond_4
    iget-object v1, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 77
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 76
    invoke-static {v0, v1, v2, v3}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->takeScreenshot(Landroid/app/Activity;Lio/sentry/util/thread/IMainThreadChecker;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)[B

    move-result-object v1

    if-nez v1, :cond_5

    return-object p1

    .line 82
    :cond_5
    invoke-static {v1}, Lio/sentry/Attachment;->fromScreenshot([B)Lio/sentry/Attachment;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/sentry/Hint;->setScreenshot(Lio/sentry/Attachment;)V

    const-string v1, "android:activity"

    .line 83
    invoke-virtual {p2, v1, v0}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-object p1
.end method
