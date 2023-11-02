.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;
.super Ljava/lang/Object;
.source "RiotNativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlertBoxRunnable"
.end annotation


# instance fields
.field public iconIndex:I

.field public message:Ljava/lang/String;

.field final mutex:Ljava/util/concurrent/Semaphore;

.field public options:Ljava/lang/String;

.field public optionsValues:Ljava/lang/String;

.field result:I

.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field public title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;)V
    .locals 1

    .line 1140
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->mutex:Ljava/util/concurrent/Semaphore;

    .line 1147
    iput v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->result:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1152
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1153
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1154
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1167
    iget v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->iconIndex:I

    const v3, 0x1080027

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x108009b

    .line 1171
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1170
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1169
    :cond_2
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1174
    :goto_0
    iget-object v2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->options:Ljava/lang/String;

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1175
    iget-object v7, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->optionsValues:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1176
    array-length v7, v2

    if-lt v7, v6, :cond_3

    .line 1178
    aget-object v1, v2, v1

    new-instance v7, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$1;

    invoke-direct {v7, p0, v3}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$1;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1186
    :cond_3
    array-length v1, v2

    if-lt v1, v5, :cond_4

    .line 1188
    aget-object v1, v2, v6

    new-instance v6, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$2;

    invoke-direct {v6, p0, v3}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$2;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1196
    :cond_4
    array-length v1, v2

    if-lt v1, v4, :cond_5

    .line 1198
    aget-object v1, v2, v5

    new-instance v2, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$3;

    invoke-direct {v2, p0, v3}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable$3;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1206
    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1207
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method setResult(I)V
    .locals 0

    .line 1212
    iput p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->result:I

    .line 1213
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$AlertBoxRunnable;->mutex:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
