.class Lcom/vivox/sdk/BluetoothScoManager$1;
.super Ljava/lang/Object;
.source "BluetoothScoManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivox/sdk/BluetoothScoManager;->initializeBluetoothServiceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivox/sdk/BluetoothScoManager;


# direct methods
.method constructor <init>(Lcom/vivox/sdk/BluetoothScoManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/vivox/sdk/BluetoothScoManager$1;->this$0:Lcom/vivox/sdk/BluetoothScoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "BluetoothScoManager"

    const-string v0, "Bluetooth service connected."

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lcom/vivox/sdk/BluetoothScoManager$1;->this$0:Lcom/vivox/sdk/BluetoothScoManager;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/vivox/sdk/BluetoothScoManager;->access$002(Lcom/vivox/sdk/BluetoothScoManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 43
    iget-object p1, p0, Lcom/vivox/sdk/BluetoothScoManager$1;->this$0:Lcom/vivox/sdk/BluetoothScoManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vivox/sdk/BluetoothScoManager;->access$002(Lcom/vivox/sdk/BluetoothScoManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    const-string p1, "BluetoothScoManager"

    const-string v0, "Bluetooth service disconnected."

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
