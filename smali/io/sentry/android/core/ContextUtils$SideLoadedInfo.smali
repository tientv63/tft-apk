.class Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ContextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SideLoadedInfo"
.end annotation


# instance fields
.field private final installerStore:Ljava/lang/String;

.field private final isSideLoaded:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->isSideLoaded:Z

    .line 40
    iput-object p2, p0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->installerStore:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asTags()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    iget-boolean v1, p0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->isSideLoaded:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isSideLoaded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->installerStore:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "installerStore"

    .line 55
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getInstallerStore()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->installerStore:Ljava/lang/String;

    return-object v0
.end method

.method public isSideLoaded()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->isSideLoaded:Z

    return v0
.end method
