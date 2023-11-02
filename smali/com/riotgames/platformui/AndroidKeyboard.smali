.class public Lcom/riotgames/platformui/AndroidKeyboard;
.super Ljava/lang/Object;
.source "AndroidKeyboard.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformUI.Keyboard"

.field private static mPtr:J


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final inputView:Lcom/riotgames/platformui/KeyboardInputView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/riotgames/platformui/AndroidKeyboard;->activity:Landroid/app/Activity;

    .line 34
    new-instance v0, Lcom/riotgames/platformui/KeyboardInputView;

    invoke-direct {v0, p1}, Lcom/riotgames/platformui/KeyboardInputView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/riotgames/platformui/AndroidKeyboard;->inputView:Lcom/riotgames/platformui/KeyboardInputView;

    .line 36
    new-instance v0, Lcom/riotgames/platformui/AndroidKeyboard$1;

    invoke-direct {v0, p0, p1}, Lcom/riotgames/platformui/AndroidKeyboard$1;-><init>(Lcom/riotgames/platformui/AndroidKeyboard;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/riotgames/platformui/AndroidKeyboard;)Lcom/riotgames/platformui/KeyboardInputView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/riotgames/platformui/AndroidKeyboard;->inputView:Lcom/riotgames/platformui/KeyboardInputView;

    return-object p0
.end method

.method public static updateState(ZLjava/lang/String;II)V
    .locals 8

    const-string v0, "PlatformUI.Keyboard"

    .line 57
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStateNative for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/riotgames/platformui/AndroidKeyboard;->mPtr:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-wide v2, Lcom/riotgames/platformui/AndroidKeyboard;->mPtr:J

    move v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/riotgames/platformui/AndroidKeyboard;->updateStateNative(JZLjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error finding AndroidKeyboard.updateStateNative"

    .line 60
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static native updateStateNative(JZLjava/lang/String;II)V
.end method


# virtual methods
.method public setEditorInfo(JI)V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting ptr to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformUI.Keyboard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput-wide p1, Lcom/riotgames/platformui/AndroidKeyboard;->mPtr:J

    .line 68
    new-instance p1, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p1}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 69
    iput p3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 71
    iget-object p2, p0, Lcom/riotgames/platformui/AndroidKeyboard;->inputView:Lcom/riotgames/platformui/KeyboardInputView;

    iget-object p2, p2, Lcom/riotgames/platformui/KeyboardInputView;->mInputConnection:Lcom/riotgames/platformui/InputConnection;

    invoke-virtual {p2}, Lcom/riotgames/platformui/InputConnection;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p2

    .line 72
    iget p3, p2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iput p3, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 73
    iget p2, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput p2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 75
    iget-object p2, p0, Lcom/riotgames/platformui/AndroidKeyboard;->inputView:Lcom/riotgames/platformui/KeyboardInputView;

    iget-object p2, p2, Lcom/riotgames/platformui/KeyboardInputView;->mInputConnection:Lcom/riotgames/platformui/InputConnection;

    invoke-virtual {p2, p1}, Lcom/riotgames/platformui/InputConnection;->setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method public setSoftKeyboardActive(Z)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/riotgames/platformui/AndroidKeyboard;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/riotgames/platformui/AndroidKeyboard$2;

    invoke-direct {v1, p0, p1}, Lcom/riotgames/platformui/AndroidKeyboard$2;-><init>(Lcom/riotgames/platformui/AndroidKeyboard;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setState(Ljava/lang/String;II)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/riotgames/platformui/AndroidKeyboard;->inputView:Lcom/riotgames/platformui/KeyboardInputView;

    iget-object v0, v0, Lcom/riotgames/platformui/KeyboardInputView;->mInputConnection:Lcom/riotgames/platformui/InputConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/riotgames/platformui/InputConnection;->setState(Ljava/lang/String;II)V

    return-void
.end method
