.class public Lcom/riotgames/platformui/PlatformUIFREView;
.super Lcom/riotgames/platformui/PlatformUIView;
.source "PlatformUIFREView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformUIFREView"


# instance fields
.field private mBackgroundTextureId:I

.field private final mCobranding:Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 177
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/riotgames/platformui/PlatformUIView;-><init>(IZLandroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    new-instance v1, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;

    invoke-direct {v1}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;-><init>()V

    iput-object v1, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mCobranding:Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/riotgames/pp/sdk/R$styleable;->PlatformUIFREView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 182
    :try_start_0
    sget p2, Lcom/riotgames/pp/sdk/R$styleable;->PlatformUIFREView_accent:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/riotgames/platformui/PlatformUIFREView;->setAccent(I)V

    .line 183
    sget p2, Lcom/riotgames/pp/sdk/R$styleable;->PlatformUIFREView_accent2:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/riotgames/platformui/PlatformUIFREView;->setAccent2(I)V

    .line 184
    sget p2, Lcom/riotgames/pp/sdk/R$styleable;->PlatformUIFREView_cardOpen:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 185
    instance-of v1, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 186
    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p2}, Lcom/riotgames/platformui/PlatformUIFREView;->setCardOpen(Landroid/graphics/drawable/GradientDrawable;)V

    .line 188
    :cond_0
    sget p2, Lcom/riotgames/pp/sdk/R$styleable;->PlatformUIFREView_loadingFill:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 189
    instance-of v1, p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 190
    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p2}, Lcom/riotgames/platformui/PlatformUIFREView;->setLoadingFill(Landroid/graphics/drawable/GradientDrawable;)V

    .line 193
    :cond_1
    sget p2, Lcom/riotgames/pp/sdk/R$styleable;->PlatformUIFREView_productName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/riotgames/platformui/PlatformUIFREView;->setProductName(Ljava/lang/String;)V

    .line 194
    sget p2, Lcom/riotgames/pp/sdk/R$styleable;->PlatformUIFREView_background:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/riotgames/platformui/PlatformUIFREView;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    throw p2
.end method


# virtual methods
.method public onViewCreated(J)V
    .locals 0

    .line 225
    iget p1, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mBackgroundTextureId:I

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/riotgames/platformui/PlatformUIFREView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mBackgroundTextureId:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 227
    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/PlatformUIFREView;->setBackgroundTexture(Landroid/graphics/Bitmap;)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mCobranding:Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;

    invoke-virtual {p1}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/PlatformUIFREView;->setStyleOverrides(Ljava/lang/String;)V

    return-void
.end method

.method public setAccent(I)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mCobranding:Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;

    iput p1, v0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->accent:I

    return-void
.end method

.method public setAccent2(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mCobranding:Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;

    iput p1, v0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->accent2:I

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mBackgroundTextureId:I

    return-void
.end method

.method public setCardOpen(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mCobranding:Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;

    iput-object p1, v0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->cardOpen:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setLoadingFill(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mCobranding:Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;

    iput-object p1, v0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->loadingFill:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/riotgames/platformui/PlatformUIFREView;->mCobranding:Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;

    iput-object p1, v0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->productName:Ljava/lang/String;

    return-void
.end method
