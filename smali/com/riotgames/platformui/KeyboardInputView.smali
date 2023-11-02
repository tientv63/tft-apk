.class public Lcom/riotgames/platformui/KeyboardInputView;
.super Landroid/view/View;
.source "KeyboardInputView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyboardInputView"


# instance fields
.field public mInputConnection:Lcom/riotgames/platformui/InputConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Lcom/riotgames/platformui/InputConnection;

    invoke-virtual {p0}, Lcom/riotgames/platformui/KeyboardInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/riotgames/platformui/InputConnection;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/riotgames/platformui/KeyboardInputView;->mInputConnection:Lcom/riotgames/platformui/InputConnection;

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/riotgames/platformui/KeyboardInputView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Lcom/riotgames/platformui/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Lcom/riotgames/platformui/InputConnection;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/riotgames/platformui/KeyboardInputView;->mInputConnection:Lcom/riotgames/platformui/InputConnection;

    invoke-virtual {v0}, Lcom/riotgames/platformui/InputConnection;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 27
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 28
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 29
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 31
    iget-object p1, p0, Lcom/riotgames/platformui/KeyboardInputView;->mInputConnection:Lcom/riotgames/platformui/InputConnection;

    return-object p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "KeyboardInputView"

    const-string v1, "onKeyPreIme"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 42
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 43
    iget-object p1, p0, Lcom/riotgames/platformui/KeyboardInputView;->mInputConnection:Lcom/riotgames/platformui/InputConnection;

    invoke-virtual {p1, v0, v0}, Lcom/riotgames/platformui/InputConnection;->setSoftKeyboardActive(ZI)V

    :cond_0
    return p2

    .line 46
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 50
    iget-object p1, p0, Lcom/riotgames/platformui/KeyboardInputView;->mInputConnection:Lcom/riotgames/platformui/InputConnection;

    invoke-virtual {p1, v0, v0}, Lcom/riotgames/platformui/InputConnection;->setSoftKeyboardActive(ZI)V

    return v0

    .line 53
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
