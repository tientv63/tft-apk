.class Lcom/riotgames/platformui/AndroidKeyboard$1;
.super Ljava/lang/Object;
.source "AndroidKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/riotgames/platformui/AndroidKeyboard;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/riotgames/platformui/AndroidKeyboard;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/riotgames/platformui/AndroidKeyboard;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/riotgames/platformui/AndroidKeyboard$1;->this$0:Lcom/riotgames/platformui/AndroidKeyboard;

    iput-object p2, p0, Lcom/riotgames/platformui/AndroidKeyboard$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 39
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 40
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 41
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 44
    iget-object v1, p0, Lcom/riotgames/platformui/AndroidKeyboard$1;->this$0:Lcom/riotgames/platformui/AndroidKeyboard;

    invoke-static {v1}, Lcom/riotgames/platformui/AndroidKeyboard;->access$000(Lcom/riotgames/platformui/AndroidKeyboard;)Lcom/riotgames/platformui/KeyboardInputView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/riotgames/platformui/KeyboardInputView;->setAlpha(F)V

    .line 46
    iget-object v1, p0, Lcom/riotgames/platformui/AndroidKeyboard$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/riotgames/platformui/AndroidKeyboard$1;->this$0:Lcom/riotgames/platformui/AndroidKeyboard;

    invoke-static {v2}, Lcom/riotgames/platformui/AndroidKeyboard;->access$000(Lcom/riotgames/platformui/AndroidKeyboard;)Lcom/riotgames/platformui/KeyboardInputView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
