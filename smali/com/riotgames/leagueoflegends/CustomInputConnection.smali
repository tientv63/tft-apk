.class Lcom/riotgames/leagueoflegends/CustomInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "RiotNativeActivity.java"


# instance fields
.field private _activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

.field private _regionId:I


# direct methods
.method public constructor <init>(Lcom/riotgames/leagueoflegends/RiotNativeActivity;ILandroid/view/View;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p3, p4}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 105
    iput-object p1, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    .line 106
    iput p2, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_regionId:I

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4

    .line 130
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 132
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/CustomInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v2, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v3, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_regionId:I

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, p1, v1, p2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeSetText(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 4

    .line 157
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    .line 159
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/CustomInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v1, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_regionId:I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v3, p2, v2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeSetText(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v0, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_regionId:I

    invoke-virtual {p1, v0}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeReturnPressed(I)V

    return v2

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, v2, p1}, Lcom/riotgames/leagueoflegends/CustomInputConnection;->deleteSurroundingText(II)Z

    return v2

    .line 124
    :cond_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 4

    .line 144
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 146
    invoke-virtual {p0}, Lcom/riotgames/leagueoflegends/CustomInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_activity:Lcom/riotgames/leagueoflegends/RiotNativeActivity;

    iget v2, p0, Lcom/riotgames/leagueoflegends/CustomInputConnection;->_regionId:I

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/riotgames/leagueoflegends/RiotNativeActivity;->nativeSetText(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return p1
.end method
