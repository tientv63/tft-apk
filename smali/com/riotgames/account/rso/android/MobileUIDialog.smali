.class public Lcom/riotgames/account/rso/android/MobileUIDialog;
.super Ljava/lang/Object;
.source "MobileUIDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileUIDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(JILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-static/range {p0 .. p5}, Lcom/riotgames/account/rso/android/MobileUIDialog;->setClickable(JILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static launch(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    move-object/from16 v2, p7

    .line 57
    array-length v0, v2

    move-object/from16 v5, p8

    array-length v1, v5

    if-eq v0, v1, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v11, Lcom/riotgames/account/rso/android/MobileUIDialog$2;

    move-object v0, v11

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-wide v3, p0

    move-object/from16 v5, p8

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/riotgames/account/rso/android/MobileUIDialog$2;-><init>(Ljava/lang/String;[Ljava/lang/String;J[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static native onAccept(J)Z
.end method

.method static native onDecline(J)Z
.end method

.method static native onLinkClick(JI)V
.end method

.method private static setClickable(JILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/riotgames/account/rso/android/MobileUIDialog$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/riotgames/account/rso/android/MobileUIDialog$1;-><init>(JI)V

    .line 39
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-virtual {p0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 42
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p3, p0, p1, p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 43
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p0

    const/16 p2, 0x12

    invoke-virtual {p3, v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method
