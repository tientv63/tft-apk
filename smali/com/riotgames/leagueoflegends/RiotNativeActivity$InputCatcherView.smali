.class Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;
.super Landroid/view/View;
.source "RiotNativeActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/leagueoflegends/RiotNativeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputCatcherView"
.end annotation


# instance fields
.field _activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field _inputConnection:Landroid/view/inputmethod/InputConnection;

.field _regionId:I

.field final synthetic this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;


# direct methods
.method public constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;Lcom/riotgames/leagueoflegends/RiotNativeActivity;ILandroid/content/Context;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->this$0:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 304
    invoke-direct {p0, p4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 305
    iput-object p2, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->_activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 306
    iput p3, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->_regionId:I

    const/4 p1, 0x1

    .line 308
    invoke-virtual {p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->setFocusableInTouchMode(Z)V

    .line 309
    invoke-virtual {p0, p1}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->setFocusable(Z)V

    .line 310
    invoke-virtual {p0, p0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public isTextInputEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 347
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    const v0, 0x80001

    .line 338
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x12000000

    .line 339
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 342
    new-instance p1, Lcom/riotgames/leagueoflegends/CustomInputConnection;

    iget-object v0, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->_activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->_regionId:I

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/riotgames/leagueoflegends/CustomInputConnection;-><init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;ILandroid/view/View;Z)V

    iput-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->_inputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 321
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 322
    invoke-virtual {p0, p3}, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->isTextInputEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->_inputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p3

    int-to-char p3, p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    return p2

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/RiotNativeActivity$InputCatcherView;->_inputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {p1, p3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
