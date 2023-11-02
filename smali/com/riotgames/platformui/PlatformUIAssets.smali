.class public Lcom/riotgames/platformui/PlatformUIAssets;
.super Ljava/lang/Object;
.source "PlatformUIAssets.java"


# static fields
.field private static ASSET_MANAGER:Landroid/content/res/AssetManager; = null

.field private static ENABLED:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureAssetHandler()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 14
    sget-boolean v0, Lcom/riotgames/platformui/PlatformUIAssets;->ENABLED:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/riotgames/platformui/PlatformUIAssets;->ASSET_MANAGER:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    .line 15
    invoke-static {v0}, Lcom/riotgames/platformui/PlatformUIApi;->Native_SetAssetProvider(Landroid/content/res/AssetManager;)V

    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/riotgames/platformui/PlatformUIAssets;->ENABLED:Z

    :cond_0
    return-void
.end method

.method public static registerAssetHandlerContext(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    sput-object p0, Lcom/riotgames/platformui/PlatformUIAssets;->ASSET_MANAGER:Landroid/content/res/AssetManager;

    return-void
.end method
