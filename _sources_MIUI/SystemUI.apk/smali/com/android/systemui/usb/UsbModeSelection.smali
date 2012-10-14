.class public Lcom/android/systemui/usb/UsbModeSelection;
.super Landroid/app/Activity;
.source "UsbModeSelection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCurrentMode:I

.field private mDialog:Landroid/app/Dialog;

.field private mDontAsk:Landroid/widget/CheckBox;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lcom/android/systemui/usb/UsbModeSelection$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbModeSelection$1;-><init>(Lcom/android/systemui/usb/UsbModeSelection;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/UsbModeSelection;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private switchUsbMassStorage(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    .line 134
    .local v1, enabled:Z
    if-ne p1, v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 137
    :cond_0
    move v0, p1

    .line 138
    .local v0, _on:Z
    new-instance v2, Lcom/android/systemui/usb/UsbModeSelection$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/usb/UsbModeSelection$3;-><init>(Lcom/android/systemui/usb/UsbModeSelection;Z)V

    invoke-virtual {v2}, Lcom/android/systemui/usb/UsbModeSelection$3;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 113
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/usb/UsbModeSelection;->onClick(Landroid/content/DialogInterface;I)V

    .line 114
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mCurrentMode:I

    .line 120
    invoke-direct {p0, v4}, Lcom/android/systemui/usb/UsbModeSelection;->switchUsbMassStorage(Z)V

    .line 125
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_mode"

    iget v2, p0, Lcom/android/systemui/usb/UsbModeSelection;->mCurrentMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ask_user_usb_mode"

    iget-object v2, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->finish()V

    .line 130
    return-void

    .line 121
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mCurrentMode:I

    .line 123
    invoke-direct {p0, v3}, Lcom/android/systemui/usb/UsbModeSelection;->switchUsbMassStorage(Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 128
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "UsbModeSelection.action.CHARGE_ONLY"

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0, v7}, Lcom/android/systemui/usb/UsbModeSelection;->requestWindowFeature(I)Z

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_mode"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mCurrentMode:I

    .line 58
    iget-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v4, :cond_0

    .line 59
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Lcom/android/systemui/usb/UsbModeSelection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 60
    iget-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v4, :cond_0

    .line 61
    const-string v4, "UsbModeSelection"

    const-string v5, "Failed to get StorageManager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const-string v4, "UsbModeSelection.action.CHARGE_ONLY"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "UsbModeSelection.action.MOUNT_STORAGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    :cond_1
    const-string v4, "UsbModeSelection.action.CHARGE_ONLY"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 67
    .local v3, isChargeOnly:Z
    if-nez v3, :cond_2

    move v4, v7

    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/usb/UsbModeSelection;->switchUsbMassStorage(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->finish()V

    .line 92
    .end local v3           #isChargeOnly:Z
    :goto_1
    return-void

    .restart local v3       #isChargeOnly:Z
    :cond_2
    move v4, v8

    .line 67
    goto :goto_0

    .line 70
    .end local v3           #isChargeOnly:Z
    :cond_3
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    .line 71
    iget-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    const v5, 0x7f090017

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    .line 72
    iget-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/systemui/usb/UsbModeSelection$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/usb/UsbModeSelection$2;-><init>(Lcom/android/systemui/usb/UsbModeSelection;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ask_user_usb_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v7, v4, :cond_4

    move v1, v7

    .line 81
    .local v1, askUser:Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    if-nez v1, :cond_5

    move v5, v7

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090018

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 85
    iget-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDontAsk:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    const v4, 0x7f090019

    invoke-virtual {p0, v4}, Lcom/android/systemui/usb/UsbModeSelection;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    const v4, 0x7f09001a

    invoke-virtual {p0, v4}, Lcom/android/systemui/usb/UsbModeSelection;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    .line 90
    iget-object v4, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .end local v1           #askUser:Z
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_4
    move v1, v8

    .line 80
    goto :goto_2

    .restart local v1       #askUser:Z
    :cond_5
    move v5, v8

    .line 81
    goto :goto_3
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbModeSelection;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbModeSelection;->finish()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/usb/UsbModeSelection;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/usb/UsbModeSelection;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method
