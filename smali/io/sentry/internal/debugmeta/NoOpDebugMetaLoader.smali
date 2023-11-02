.class public final Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;
.super Ljava/lang/Object;
.source "NoOpDebugMetaLoader.java"

# interfaces
.implements Lio/sentry/internal/debugmeta/IDebugMetaLoader;


# static fields
.field private static final instance:Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    invoke-direct {v0}, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;-><init>()V

    sput-object v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->instance:Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;
    .locals 1

    .line 13
    sget-object v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->instance:Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    return-object v0
.end method


# virtual methods
.method public loadDebugMeta()Ljava/util/Properties;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
