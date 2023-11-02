.class public Lcom/riotgames/voicechat/VoiceChatHelper;
.super Landroid/app/Activity;
.source "VoiceChatHelper.java"


# static fields
.field private static final INVALID_PTR:J = -0x1L

.field private static final PTR_KEY:Ljava/lang/String; = "ptr"

.field private static final RECORD_AUDIO_REQUEST_CODE:I = 0x1337

.field private static final TAG:Ljava/lang/String; = "VoiceChatHelper"

.field static final kPermissionDenied:I = 0x1

.field static final kPermissionGranted:I = 0x2

.field static final kPromptForPermission:I


# instance fields
.field private voiceChatPtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/riotgames/voicechat/VoiceChatHelper;->voiceChatPtr:J

    return-void
.end method

.method public static CheckAudioPermission(Landroid/content/Context;)I
    .locals 3

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 75
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 76
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error checking mic permissions for voice-chat. Ensure a valid Android Activity is used to initialize RiotGamesAPI. Context provided: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoiceChatHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static RequestAudioPermission(Landroid/content/Context;J)V
    .locals 2

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/riotgames/voicechat/VoiceChatHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "ptr"

    .line 93
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static native nativeAudioPermissionCallback(ZJ)V
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/riotgames/voicechat/VoiceChatHelper;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ptr"

    const-wide/16 v1, -0x1

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/riotgames/voicechat/VoiceChatHelper;->voiceChatPtr:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    const-string p1, "VoiceChatHelper"

    const-string v0, "Error setting voice-chat ptr. RiotGamesAPI Mic permission callback will not work."

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x0

    const/16 v0, 0x1337

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    move p2, p1

    .line 61
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/riotgames/voicechat/VoiceChatHelper;->voiceChatPtr:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 62
    invoke-static {p2, v0, v1}, Lcom/riotgames/voicechat/VoiceChatHelper;->nativeAudioPermissionCallback(ZJ)V

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/riotgames/voicechat/VoiceChatHelper;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1337

    invoke-virtual {p0, v0, v1}, Lcom/riotgames/voicechat/VoiceChatHelper;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
