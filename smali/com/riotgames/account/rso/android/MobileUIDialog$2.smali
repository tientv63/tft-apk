.class Lcom/riotgames/account/rso/android/MobileUIDialog$2;
.super Ljava/lang/Object;
.source "MobileUIDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/account/rso/android/MobileUIDialog;->launch(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$agree:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$decline:Ljava/lang/String;

.field final synthetic val$labels:[Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$ptr:J

.field final synthetic val$replacements:[Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;J[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$message:Ljava/lang/String;

    iput-object p2, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$labels:[Ljava/lang/String;

    iput-wide p3, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$ptr:J

    iput-object p5, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$replacements:[Ljava/lang/String;

    iput-object p6, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$title:Ljava/lang/String;

    iput-object p8, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$agree:Ljava/lang/String;

    iput-object p9, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$decline:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 64
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$message:Ljava/lang/String;

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    move v8, v7

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$labels:[Ljava/lang/String;

    array-length v1, v0

    if-ge v8, v1, :cond_0

    .line 67
    iget-wide v1, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$ptr:J

    iget-object v3, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$replacements:[Ljava/lang/String;

    aget-object v4, v3, v8

    aget-object v5, v0, v8

    move-wide v0, v1

    move v2, v8

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/riotgames/account/rso/android/MobileUIDialog;->access$000(JILandroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$context:Landroid/content/Context;

    sget v3, Lcom/riotgames/pp/sdk/R$style;->RSODialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$title:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$agree:Ljava/lang/String;

    new-instance v2, Lcom/riotgames/account/rso/android/MobileUIDialog$2$1;

    invoke-direct {v2, p0}, Lcom/riotgames/account/rso/android/MobileUIDialog$2$1;-><init>(Lcom/riotgames/account/rso/android/MobileUIDialog$2;)V

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$decline:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-eqz v7, :cond_2

    .line 92
    iget-object v1, p0, Lcom/riotgames/account/rso/android/MobileUIDialog$2;->val$decline:Ljava/lang/String;

    new-instance v2, Lcom/riotgames/account/rso/android/MobileUIDialog$2$2;

    invoke-direct {v2, p0}, Lcom/riotgames/account/rso/android/MobileUIDialog$2$2;-><init>(Lcom/riotgames/account/rso/android/MobileUIDialog$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v1, 0x102000b

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
