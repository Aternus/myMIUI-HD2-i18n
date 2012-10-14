.class public Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitBluetoothAddressCheckActivity.java"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIsSupportBluetooth:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity$1;-><init>(Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;)V

    iput-object v0, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->showBluetoothAddress()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    const v0, 0x7f09050c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showBluetoothAddress()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const v0, 0x7f090525

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initResources()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->initResources()V

    .line 25
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 26
    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2

    .line 31
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mIsSupportBluetooth:Z

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mIsSupportBluetooth:Z

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onDestroy()V

    .line 57
    iget-boolean v0, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mIsSupportBluetooth:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->onResume()V

    .line 65
    iget-boolean v0, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mIsSupportBluetooth:Z

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f09053f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090541

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/cit/CitBluetoothAddressCheckActivity;->showBluetoothAddress()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f09053e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
