.class Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;
.super Ljava/lang/Object;
.source "PlatformUIFREView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/platformui/PlatformUIFREView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cobranding"
.end annotation


# static fields
.field private static final ACCENT:Ljava/lang/String; = "ColorBrush.product.accent"

.field private static final ACCENT2:Ljava/lang/String; = "ColorBrush.product.accent2"

.field private static final CARD_OPEN:Ljava/lang/String; = "ColorBrush.product.card.open"

.field private static final GAME_NAME:Ljava/lang/String; = "I18N_GAME_NAME"

.field private static final LOADING_FILL:Ljava/lang/String; = "ColorBrush.product.loading.fill"


# instance fields
.field accent:I

.field accent2:I

.field cardOpen:Landroid/graphics/drawable/GradientDrawable;

.field loadingFill:Landroid/graphics/drawable/GradientDrawable;

.field productName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->accent:I

    .line 32
    iput v0, p0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->accent2:I

    return-void
.end method

.method private static toJSON([I)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 55
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 56
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 57
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    float-to-double v7, v5

    const-string v5, "r"

    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 58
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-double v7, v5

    const-string v5, "g"

    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 59
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-double v7, v5

    const-string v5, "b"

    invoke-virtual {v4, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 60
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-double v5, v3

    const-string v3, "a"

    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 61
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static toJSON(I)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "SolidColorBrush"

    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    const-string v1, "r"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 48
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-double v3, v1

    const-string v1, "g"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-double v3, v1

    const-string v1, "b"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 50
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    float-to-double v1, p0

    const-string p0, "a"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static toJSON(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getGradientType()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "type"

    const-string v2, "LinearGradientBrush"

    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->toJSON(ZLandroid/graphics/drawable/GradientDrawable$Orientation;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "StartPoint"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->toJSON(ZLandroid/graphics/drawable/GradientDrawable$Orientation;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "EndPoint"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColors()[I

    move-result-object p0

    invoke-static {p0}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->toJSON([I)Lorg/json/JSONArray;

    move-result-object p0

    const-string v1, "GradientStops"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 133
    :cond_0
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Only GradientDrawable.LINEAR_GRADIENT are supported"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static toJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "String"

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "string"

    .line 40
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static toJSON(ZLandroid/graphics/drawable/GradientDrawable$Orientation;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    sget-object v1, Lcom/riotgames/platformui/PlatformUIFREView$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "y"

    packed-switch v1, :pswitch_data_0

    .line 92
    invoke-virtual {v0, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_0
    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :pswitch_1
    if-eqz p0, :cond_1

    .line 73
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    :goto_0
    sget-object v1, Lcom/riotgames/platformui/PlatformUIFREView$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    const-string/jumbo v6, "x"

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_4

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    .line 121
    invoke-virtual {v0, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    .line 112
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    .line 102
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "PlatformUIFREView"

    .line 146
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 148
    :try_start_0
    iget v2, p0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->accent:I

    if-eqz v2, :cond_0

    const-string v3, "ColorBrush.product.accent"

    .line 149
    invoke-static {v2}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->toJSON(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_0
    iget v2, p0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->accent2:I

    if-eqz v2, :cond_1

    const-string v3, "ColorBrush.product.accent2"

    .line 152
    invoke-static {v2}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->toJSON(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->cardOpen:Landroid/graphics/drawable/GradientDrawable;

    const/16 v3, 0x18

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    const-string v2, "ColorBrush.product.card.open"

    .line 155
    iget-object v4, p0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->cardOpen:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v4}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->toJSON(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->loadingFill:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    const-string v2, "ColorBrush.product.loading.fill"

    .line 158
    iget-object v3, p0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->loadingFill:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v3}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->toJSON(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_3
    iget-object v2, p0, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->productName:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v3, "I18N_GAME_NAME"

    .line 161
    invoke-static {v2}, Lcom/riotgames/platformui/PlatformUIFREView$Cobranding;->toJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to serialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
