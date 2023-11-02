.class public final Lio/sentry/android/core/ViewHierarchyEventProcessor;
.super Ljava/lang/Object;
.source "ViewHierarchyEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;
.implements Lio/sentry/IntegrationName;


# static fields
.field private static final CAPTURE_TIMEOUT_MS:J = 0x3e8L

.field private static final DEBOUNCE_WAIT_TIME_MS:J = 0x7d0L


# instance fields
.field private final debouncer:Lio/sentry/android/core/internal/util/Debouncer;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryAndroidOptions is required"

    .line 46
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 47
    new-instance v0, Lio/sentry/android/core/internal/util/Debouncer;

    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/android/core/internal/util/Debouncer;-><init>(Lio/sentry/transport/ICurrentDateProvider;J)V

    iput-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->debouncer:Lio/sentry/android/core/internal/util/Debouncer;

    .line 49
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->addIntegrationToSdkVersion()V

    :cond_0
    return-void
.end method

.method private static addChildren(Landroid/view/View;Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/sentry/protocol/ViewHierarchyNode;",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;)V"
        }
    .end annotation

    .line 204
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;

    .line 211
    invoke-interface {v1, p1, p0}, Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;->export(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 216
    :cond_2
    check-cast p0, Landroid/view/ViewGroup;

    .line 217
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 222
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 224
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 226
    invoke-static {v3}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->viewToNode(Landroid/view/View;)Lio/sentry/protocol/ViewHierarchyNode;

    move-result-object v4

    .line 227
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v3, v4, p2}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->addChildren(Landroid/view/View;Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_5
    invoke-virtual {p1, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setChildren(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$snapshotViewHierarchy$0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Lio/sentry/ILogger;)V
    .locals 0

    .line 166
    :try_start_0
    invoke-static {p1, p2}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/view/View;Ljava/util/List;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 169
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p2, "Failed to process view hierarchy."

    invoke-interface {p4, p1, p2, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static snapshotViewHierarchy(Landroid/app/Activity;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;
    .locals 2

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;

    move-result-object v1

    .line 129
    invoke-static {p0, v0, v1, p1}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/app/Activity;Ljava/util/List;Lio/sentry/util/thread/IMainThreadChecker;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object p0

    return-object p0
.end method

.method public static snapshotViewHierarchy(Landroid/app/Activity;Ljava/util/List;Lio/sentry/util/thread/IMainThreadChecker;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;",
            "Lio/sentry/util/thread/IMainThreadChecker;",
            "Lio/sentry/ILogger;",
            ")",
            "Lio/sentry/protocol/ViewHierarchy;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 141
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Missing activity for view hierarchy snapshot."

    invoke-interface {p3, p0, p2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    .line 147
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Missing window for view hierarchy snapshot."

    invoke-interface {p3, p0, p2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 151
    :cond_1
    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    .line 153
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Missing decor view for view hierarchy snapshot."

    invoke-interface {p3, p0, p2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 158
    :cond_2
    :try_start_0
    invoke-interface {p2}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 159
    invoke-static {v4, p1}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/view/View;Ljava/util/List;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object p0

    return-object p0

    .line 161
    :cond_3
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 162
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 163
    new-instance v8, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;

    move-object v2, v8

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Lio/sentry/ILogger;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 p0, 0x3e8

    .line 172
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 173
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/ViewHierarchy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 177
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p2, "Failed to process view hierarchy."

    invoke-interface {p3, p1, p2, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v1
.end method

.method public static snapshotViewHierarchy(Landroid/view/View;)Lio/sentry/protocol/ViewHierarchy;
    .locals 2

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/view/View;Ljava/util/List;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object p0

    return-object p0
.end method

.method public static snapshotViewHierarchy(Landroid/view/View;Ljava/util/List;)Lio/sentry/protocol/ViewHierarchy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;)",
            "Lio/sentry/protocol/ViewHierarchy;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    new-instance v1, Lio/sentry/protocol/ViewHierarchy;

    const-string v2, "android_view_system"

    invoke-direct {v1, v2, v0}, Lio/sentry/protocol/ViewHierarchy;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 193
    invoke-static {p0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->viewToNode(Landroid/view/View;)Lio/sentry/protocol/ViewHierarchyNode;

    move-result-object v2

    .line 194
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {p0, v2, p1}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->addChildren(Landroid/view/View;Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)V

    return-object v1
.end method

.method public static snapshotViewHierarchyAsData(Landroid/app/Activity;Lio/sentry/util/thread/IMainThreadChecker;Lio/sentry/ISerializer;Lio/sentry/ILogger;)[B
    .locals 2

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    invoke-static {p0, v0, p1, p3}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/app/Activity;Ljava/util/List;Lio/sentry/util/thread/IMainThreadChecker;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 108
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Could not get ViewHierarchy."

    invoke-interface {p3, p0, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 113
    :cond_0
    invoke-static {p2, p3, p0}, Lio/sentry/util/JsonSerializationUtils;->bytesFrom(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/JsonSerializable;)[B

    move-result-object p0

    if-nez p0, :cond_1

    .line 115
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Could not serialize ViewHierarchy."

    invoke-interface {p3, p0, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 118
    :cond_1
    array-length p2, p0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_2

    .line 119
    sget-object p0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Got empty bytes array after serializing ViewHierarchy."

    invoke-interface {p3, p0, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_2
    return-object p0
.end method

.method private static viewToNode(Landroid/view/View;)Lio/sentry/protocol/ViewHierarchyNode;
    .locals 3

    .line 236
    new-instance v0, Lio/sentry/protocol/ViewHierarchyNode;

    invoke-direct {v0}, Lio/sentry/protocol/ViewHierarchyNode;-><init>()V

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 242
    :cond_0
    invoke-virtual {v0, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setType(Ljava/lang/String;)V

    .line 245
    :try_start_0
    invoke-static {p0}, Lio/sentry/android/core/internal/gestures/ViewUtils;->getResourceId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setIdentifier(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :catchall_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setX(Ljava/lang/Double;)V

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setY(Ljava/lang/Double;)V

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setWidth(Ljava/lang/Double;)V

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setHeight(Ljava/lang/Double;)V

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setAlpha(Ljava/lang/Double;)V

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "gone"

    .line 264
    invoke-virtual {v0, p0}, Lio/sentry/protocol/ViewHierarchyNode;->setVisibility(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "invisible"

    .line 261
    invoke-virtual {v0, p0}, Lio/sentry/protocol/ViewHierarchyNode;->setVisibility(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "visible"

    .line 258
    invoke-virtual {v0, p0}, Lio/sentry/protocol/ViewHierarchyNode;->setVisibility(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 4

    .line 56
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 60
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object p2, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "attachViewHierarchy is disabled."

    invoke-interface {p2, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 65
    :cond_1
    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 71
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->debouncer:Lio/sentry/android/core/internal/util/Debouncer;

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/Debouncer;->checkForDebounce()Z

    move-result v0

    .line 72
    iget-object v1, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 73
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getBeforeViewHierarchyCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 75
    invoke-interface {v1, p1, p2, v0}, Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;->execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;Z)Z

    move-result v0

    if-nez v0, :cond_4

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    return-object p1

    .line 82
    :cond_4
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/CurrentActivityHolder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 86
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getViewHierarchyExporters()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 87
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 88
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    .line 84
    invoke-static {v0, v1, v2, v3}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/app/Activity;Ljava/util/List;Lio/sentry/util/thread/IMainThreadChecker;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 91
    invoke-static {v0}, Lio/sentry/Attachment;->fromViewHierarchy(Lio/sentry/protocol/ViewHierarchy;)Lio/sentry/Attachment;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/sentry/Hint;->setViewHierarchy(Lio/sentry/Attachment;)V

    :cond_5
    return-object p1
.end method
