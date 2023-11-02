.class Lcom/riotgames/platformui/AndroidKeyboard$2;
.super Ljava/lang/Object;
.source "AndroidKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/AndroidKeyboard;->setSoftKeyboardActive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/AndroidKeyboard;

.field final synthetic val$active:Z


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/AndroidKeyboard;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/riotgames/platformui/AndroidKeyboard$2;->this$0:Lcom/riotgames/platformui/AndroidKeyboard;

    iput-boolean p2, p0, Lcom/riotgames/platformui/AndroidKeyboard$2;->val$active:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/riotgames/platformui/AndroidKeyboard$2;->this$0:Lcom/riotgames/platformui/AndroidKeyboard;

    invoke-static {v0}, Lcom/riotgames/platformui/AndroidKeyboard;->access$000(Lcom/riotgames/platformui/AndroidKeyboard;)Lcom/riotgames/platformui/KeyboardInputView;

    move-result-object v0

    iget-object v0, v0, Lcom/riotgames/platformui/KeyboardInputView;->mInputConnection:Lcom/riotgames/platformui/InputConnection;

    iget-boolean v1, p0, Lcom/riotgames/platformui/AndroidKeyboard$2;->val$active:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/riotgames/platformui/InputConnection;->setSoftKeyboardActive(ZI)V

    return-void
.end method
