.class public Lcom/android/settings/bluetooth/BluetoothSettings;
.super Landroid/preference/PreferenceActivity;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;


# instance fields
.field private mDeviceList:Lcom/android/settings/ProgressCategory;

.field private mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

.field private mNeedAuth:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:I

.field private mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 86
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 89
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 5
    .parameter "cachedDevice"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 294
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 295
    .local v1, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 297
    .local v0, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 323
    :goto_0
    return v2

    .line 299
    :pswitch_0
    if-eqz v1, :cond_0

    .line 300
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 301
    goto :goto_0

    .line 302
    :cond_0
    if-eqz v0, :cond_4

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 304
    goto :goto_0

    .line 308
    :pswitch_1
    if-eqz v1, :cond_2

    .line 309
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 310
    goto :goto_0

    .line 312
    :cond_1
    sget-object v2, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 313
    goto :goto_0

    .line 314
    :cond_2
    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    .line 323
    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 327
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 328
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 329
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method private getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 6
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 268
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v5

    .line 279
    :goto_0
    return-object v3

    .line 272
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 273
    .local v1, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 275
    .local v2, pref:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v5

    .line 276
    goto :goto_0

    .line 279
    :cond_3
    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local v2           #pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    goto :goto_0
.end method

.method private onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    const/4 v1, 0x0

    .line 346
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 261
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 264
    :goto_0
    return v1

    .line 263
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onContextItemSelected(Landroid/view/MenuItem;)V

    .line 264
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const-string v5, "bt_device_list"

    .line 114
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 117
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 128
    :cond_0
    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 130
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    .line 134
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedAuth:Z

    .line 135
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 137
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    .line 138
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    .line 140
    const v2, 0x7f090058

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    const v2, 0x7f040017

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 158
    :goto_0
    const-string v2, "bt_device_list"

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ProgressCategory;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 161
    return-void

    .line 143
    :cond_1
    const v2, 0x7f04000b

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 145
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothEnabler;

    const-string v2, "bt_checkbox"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 149
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    const-string v2, "bt_discoverable"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    const-string v3, "bt_discoverable_timeout"

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/ListPreference;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 153
    const-string v2, "bt_name"

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothNamePreference;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    .line 155
    const-string v2, "bt_device_list"

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ProgressCategory;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 249
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 253
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got onDeviceAdded, but cachedDevice already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 291
    :cond_1
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 334
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 194
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 199
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->pause()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 202
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 204
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 216
    const-string v3, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    move v3, v5

    .line 242
    :goto_0
    return v3

    .line 221
    :cond_0
    instance-of v3, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_5

    .line 222
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-object v1, v0

    .line 223
    .local v1, btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v3, :cond_2

    .line 224
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    :cond_1
    :goto_1
    move v3, v5

    .line 239
    goto :goto_0

    .line 225
    :cond_2
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-ne v3, v5, :cond_1

    .line 226
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 228
    .local v2, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 229
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 230
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->persistSelectedDeviceInPicker(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedAuth:Z

    if-nez v3, :cond_4

    .line 233
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto :goto_1

    .line 236
    :cond_4
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto :goto_1

    .line 242
    .end local v1           #btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .end local v2           #device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 169
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 170
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 172
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 174
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 175
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->resume()V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 180
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 188
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 341
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 210
    return-void
.end method
