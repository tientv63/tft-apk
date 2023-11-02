.class public Lcom/riotgames/platformui/InputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "InputConnection.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final COMPOSING_REGION_KEY:Ljava/lang/String; = "PlatformUI.ComposingRegion"

.field private static final SELECTION_KEY:Ljava/lang/String; = "PlatformUI.SelectionKey"

.field private static final TAG:Ljava/lang/String; = "InputConnection"

.field private static final ignoredKeyCodes:[I


# instance fields
.field private final editable:Landroid/text/Editable;

.field private editorInfo:Landroid/view/inputmethod/EditorInfo;

.field private final ignoredChars:Ljava/util/BitSet;

.field private final imm:Landroid/view/inputmethod/InputMethodManager;

.field private mActive:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lcom/riotgames/platformui/InputConnection;->ignoredKeyCodes:[I

    return-void

    :array_0
    .array-data 4
        0x43
        0x70
        0x3b
        0x3c
        0x17
        0x14
        0x13
        0x15
        0x16
        0x10d
        0x10c
        0x10c
        0x10e
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/riotgames/platformui/InputConnection;->mActive:Z

    .line 42
    iput-object p2, p0, Lcom/riotgames/platformui/InputConnection;->view:Landroid/view/View;

    .line 44
    new-instance p2, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p2}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    iput-object p2, p0, Lcom/riotgames/platformui/InputConnection;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 45
    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 46
    iget-object p2, p0, Lcom/riotgames/platformui/InputConnection;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 47
    iget-object p2, p0, Lcom/riotgames/platformui/InputConnection;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    const/high16 v0, 0x2000000

    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const-string p2, "input_method"

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 54
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/riotgames/platformui/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 55
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    .line 56
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/riotgames/platformui/InputConnection;->ignoredChars:Ljava/util/BitSet;

    .line 57
    sget-object p1, Lcom/riotgames/platformui/InputConnection;->ignoredKeyCodes:[I

    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_0

    aget v0, p1, v1

    .line 58
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->ignoredChars:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to get input method service"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v1, "PlatformUI.SelectionKey"

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 305
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 310
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 315
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    :cond_2
    if-eq v0, v1, :cond_3

    .line 320
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_4

    if-lez v0, :cond_4

    .line 323
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 324
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_5

    .line 326
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 328
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 329
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->ignoredChars:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 330
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/2addr v0, v3

    .line 332
    invoke-virtual {p0, v0, v0}, Lcom/riotgames/platformui/InputConnection;->setSelection(II)Z

    .line 335
    :cond_6
    iget-boolean p1, p0, Lcom/riotgames/platformui/InputConnection;->mActive:Z

    if-eqz p1, :cond_7

    .line 336
    invoke-direct {p0}, Lcom/riotgames/platformui/InputConnection;->updateState()V

    :cond_7
    return v3
.end method

.method private restartInput()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method private final updateIMM()V
    .locals 8

    .line 294
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v1, "PlatformUI.SelectionKey"

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 295
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 296
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v1, "PlatformUI.ComposingRegion"

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 297
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 299
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/riotgames/platformui/InputConnection;->view:Landroid/view/View;

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void
.end method

.method private final updateState()V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v1, "PlatformUI.SelectionKey"

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 343
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState active "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/riotgames/platformui/InputConnection;->mActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputConnection"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-boolean v2, p0, Lcom/riotgames/platformui/InputConnection;->mActive:Z

    iget-object v3, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Lcom/riotgames/platformui/AndroidKeyboard;->updateState(ZLjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 2

    const-string v0, "InputConnection"

    const-string v1, "closeConnection"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/riotgames/platformui/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 207
    invoke-virtual {p0}, Lcom/riotgames/platformui/InputConnection;->finishComposingText()Z

    .line 208
    invoke-direct {p0}, Lcom/riotgames/platformui/InputConnection;->updateIMM()V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v1, "PlatformUI.SelectionKey"

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 215
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v2, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    .line 219
    iget-object v3, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    sub-int v4, v0, p1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {v3, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-lez p2, :cond_1

    .line 223
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    sub-int/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    add-int/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 225
    :cond_1
    iget-boolean p1, p0, Lcom/riotgames/platformui/InputConnection;->mActive:Z

    if-eqz p1, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/riotgames/platformui/InputConnection;->updateState()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSurroundingTextInCodePoints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    return p1
.end method

.method public finishComposingText()Z
    .locals 2

    const-string v0, "InputConnection"

    const-string v1, "finishComposingText"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 200
    invoke-virtual {p0, v0, v0}, Lcom/riotgames/platformui/InputConnection;->setComposingRegion(II)Z

    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    return-object v0
.end method

.method public final getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectedText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v0, "PlatformUI.SelectionKey"

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    .line 243
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextAfterCursor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InputConnection"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v0, "PlatformUI.SelectionKey"

    invoke-interface {p2, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 257
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    add-int/2addr p1, v0

    .line 263
    iget-object p2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 264
    iget-object p2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {p2, v0, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextBeforeCursor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InputConnection"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v0, "PlatformUI.SelectionKey"

    invoke-interface {p2, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 272
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    sub-int p1, p2, p1

    const/4 v0, 0x0

    .line 278
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 279
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "InputConnection"

    const-string p2, "onKey"

    .line 104
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0, p3}, Lcom/riotgames/platformui/InputConnection;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCursorUpdates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->requestCursorUpdates(I)Z

    move-result p1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "InputConnection"

    const-string v1, "sendKeyEvent"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0, p1}, Lcom/riotgames/platformui/InputConnection;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setComposingRegion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PlatformUI.ComposingRegion"

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 175
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 177
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le p2, v1, :cond_2

    .line 182
    iget-object p2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_2
    const/16 v1, 0x100

    if-le p1, p2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v2, v0, p2, p1, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 188
    :cond_3
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v2, v0, p1, p2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 191
    :goto_0
    iget-boolean p1, p0, Lcom/riotgames/platformui/InputConnection;->mActive:Z

    if-eqz p1, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/riotgames/platformui/InputConnection;->updateState()V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v2, "PlatformUI.ComposingRegion"

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 141
    iget-object v3, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v3, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 144
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const-string v3, "PlatformUI.SelectionKey"

    invoke-interface {v1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 145
    iget-object v5, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v5, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ne v1, v4, :cond_1

    move v1, v0

    move v3, v1

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v4, v1, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 153
    iget-object v3, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v3, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 154
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/riotgames/platformui/InputConnection;->setComposingRegion(II)Z

    .line 156
    iget-object p1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    .line 157
    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-lez p2, :cond_2

    add-int/2addr v1, p2

    sub-int/2addr v1, v2

    .line 159
    iget-object p1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_2
    add-int/2addr p1, p2

    .line 160
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 161
    :goto_0
    invoke-virtual {p0, p1, p1}, Lcom/riotgames/platformui/InputConnection;->setSelection(II)Z

    .line 162
    iget-boolean p1, p0, Lcom/riotgames/platformui/InputConnection;->mActive:Z

    if-eqz p1, :cond_3

    .line 163
    invoke-direct {p0}, Lcom/riotgames/platformui/InputConnection;->updateState()V

    :cond_3
    return v2
.end method

.method public final setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    .line 67
    iput-object p1, p0, Lcom/riotgames/platformui/InputConnection;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartInput with type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/riotgames/platformui/InputConnection;->restartInput()V

    return-void
.end method

.method public setSelection(II)Z
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 122
    iget-object p2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_1
    const/4 v0, 0x0

    const-string v1, "PlatformUI.SelectionKey"

    if-le p1, p2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v2, v1, p2, p1, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v2, v1, p1, p2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final setSoftKeyboardActive(ZI)V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/riotgames/platformui/InputConnection;->mActive:Z

    if-eq p1, v0, :cond_1

    .line 79
    iput-boolean p1, p0, Lcom/riotgames/platformui/InputConnection;->mActive:Z

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 84
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 85
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->view:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 89
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 90
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/riotgames/platformui/InputConnection;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 91
    invoke-direct {p0}, Lcom/riotgames/platformui/InputConnection;->updateState()V

    .line 94
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSoftKeyboardActive active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " with flags:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InputConnection"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setState(Ljava/lang/String;II)V
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 351
    iget-object v0, p0, Lcom/riotgames/platformui/InputConnection;->editable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 352
    invoke-virtual {p0, p2, p3}, Lcom/riotgames/platformui/InputConnection;->setSelection(II)Z

    .line 353
    invoke-virtual {p0, p2, p3}, Lcom/riotgames/platformui/InputConnection;->setComposingRegion(II)Z

    .line 354
    invoke-direct {p0}, Lcom/riotgames/platformui/InputConnection;->updateIMM()V

    return-void
.end method
