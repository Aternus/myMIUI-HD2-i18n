.class public Lcom/android/settings/wifi/WifiSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$Scanner;
    }
.end annotation


# instance fields
.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mAddNetwork:Landroid/preference/Preference;

.field private mAddWpsNetwork:Landroid/preference/Preference;

.field private mCurrentConnectingNetworkId:I

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPriority:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetNetworks:Z

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

.field private mWpsMethod:I

.field private mWpsNetworkId:I

.field private mWpsPin:Ljava/lang/String;

.field private mWpsPinPending:Z

.field private mWpsSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 113
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 98
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    .line 99
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 102
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    .line 103
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsSsid:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPin:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPinPending:Z

    .line 106
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsNetworkId:I

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.WPS_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 486
    if-eqz p1, :cond_0

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, v6, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    const v4, 0xf4240

    if-le v3, v4, :cond_4

    .line 492
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    sub-int v2, v3, v5

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    .line 493
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 494
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_2

    .line 495
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 496
    .local v1, c:Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Lcom/android/settings/wifi/AccessPoint;->adhoc:Z

    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->adhocSSID:Z

    .line 497
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 498
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 499
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 492
    .end local v1           #c:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 502
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    .line 506
    .end local v2           #i:I
    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 507
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 508
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->saveNetworks()V

    .line 511
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 512
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 513
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    goto :goto_0
.end method

.method private deleteSettings(Ljava/lang/String;)V
    .locals 5
    .parameter "ssid"

    .prologue
    .line 307
    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "wifi_use_static_ip"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "wifi_static_ip"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "wifi_static_gateway"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "wifi_static_netmask"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "wifi_static_dns1"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "wifi_static_dns2"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "http_proxy_not_use_global"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "http_proxy"

    aput-object v3, v1, v2

    .line 312
    .local v1, keys:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->delete(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method

.method private enableNetworks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 529
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 530
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 531
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 529
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 535
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    .line 536
    return-void
.end method

.method private forget(I)V
    .locals 1
    .parameter "networkId"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 482
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->saveNetworks()V

    .line 483
    return-void
.end method

.method private getWpsState()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWpsState()I

    move-result v0

    return v0
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 601
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.supplicant.WPS_EVENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 603
    const-string v3, "wps_string"

    .line 604
    .local v3, wpsEventName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 605
    .local v4, wpsGetString:Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->onProcessWps(Ljava/lang/String;)V

    .line 639
    .end local v3           #wpsEventName:Ljava/lang/String;
    .end local v4           #wpsGetString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const-string v5, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 608
    const-string v1, "wapi_string"

    .line 610
    .local v1, wapiEventName:Ljava/lang/String;
    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 611
    .local v2, wapiGetEvent:I
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->onProcessWapi(I)V

    goto :goto_0

    .line 612
    .end local v1           #wapiEventName:Ljava/lang/String;
    .end local v2           #wapiGetEvent:I
    :cond_2
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 613
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 615
    :cond_3
    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 616
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 617
    :cond_4
    const-string v5, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 618
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    .line 619
    iput-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 621
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 622
    :cond_6
    const-string v5, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 623
    const-string v5, "newState"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 627
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-nez v5, :cond_0

    const-string v5, "supplicantError"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 629
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentConnectingNetworkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 630
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v5, v7, v8}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V

    goto :goto_0

    .line 633
    :cond_7
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 634
    const-string v5, "networkInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 636
    :cond_8
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 637
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0
.end method

.method private onProcessWapi(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 771
    packed-switch p1, :pswitch_data_0

    .line 781
    :goto_0
    return-void

    .line 773
    :pswitch_0
    const v0, 0x7f09012e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 777
    :pswitch_1
    const v0, 0x7f09012f

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onProcessWps(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string v2, " "

    .line 683
    const-string v0, "WPS-START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 685
    const-string v0, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 686
    if-eq v0, v7, :cond_12

    .line 687
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 691
    array-length v1, v0

    move v2, v8

    move v3, v7

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    .line 692
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 693
    array-length v5, v4

    if-eq v5, v9, :cond_1

    .line 691
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 698
    :cond_1
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 702
    aget-object v4, v4, v8

    const-string v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    .line 703
    goto :goto_2

    .line 707
    :cond_2
    if-eq v3, v7, :cond_3

    .line 708
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsNetworkId:I

    .line 761
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    .line 762
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getWpsState()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getWpsState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 763
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 768
    :cond_5
    :goto_4
    return-void

    .line 710
    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    if-nez v0, :cond_7

    const-string v0, "WPS-AP-AVAILABLE-PBC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 712
    const v0, 0x7f090141

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsState(I)V

    goto :goto_3

    .line 713
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    if-ne v0, v1, :cond_8

    const-string v0, "WPS-AP-AVAILABLE-PIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 715
    const v0, 0x7f090142

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsState(I)V

    goto :goto_3

    .line 716
    :cond_8
    const-string v0, "WPS-CRED-RECEIVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 717
    const v0, 0x7f090143

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsState(I)V

    goto :goto_3

    .line 718
    :cond_9
    const-string v0, "WPS-FAIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 719
    const v0, 0x7f090145

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsState(I)V

    .line 720
    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    .line 721
    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsNetworkId:I

    goto :goto_3

    .line 722
    :cond_a
    const-string v0, "WPS-TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 723
    const v0, 0x7f090146

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsState(I)V

    .line 724
    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    .line 725
    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsNetworkId:I

    goto :goto_3

    .line 726
    :cond_b
    const-string v0, "WPS-SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 727
    const v0, 0x7f090144

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsState(I)V

    .line 728
    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    .line 729
    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsNetworkId:I

    goto/16 :goto_3

    .line 730
    :cond_c
    const-string v0, "WPS-DONE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 732
    const-string v0, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 733
    if-eq v0, v7, :cond_11

    .line 734
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    :goto_5
    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 738
    array-length v1, v0

    move v2, v8

    move v3, v7

    :goto_6
    if-ge v2, v1, :cond_f

    aget-object v4, v0, v2

    .line 739
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 740
    array-length v5, v4

    if-eq v5, v9, :cond_e

    .line 738
    :cond_d
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 745
    :cond_e
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 749
    aget-object v4, v4, v8

    const-string v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v3, v5

    .line 750
    goto :goto_7

    .line 754
    :cond_f
    if-eq v3, v7, :cond_3

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 756
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 757
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 758
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_3

    .line 765
    :cond_10
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    const v1, 0x7f09013a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_4

    .line 746
    :catch_0
    move-exception v4

    goto :goto_7

    .line 699
    :catch_1
    move-exception v4

    goto/16 :goto_2

    :cond_11
    move-object v0, p1

    goto :goto_5

    :cond_12
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 471
    invoke-static {p1}, Lcom/android/settings/wifi/WifiDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 473
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 474
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    move v0, v1

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 1

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->enableNetworks()V

    .line 541
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 542
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 543
    return-void
.end method

.method private showApAdvSetting()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/ApAdvancedSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "networkId"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 303
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V

    .line 456
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 6
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "passwordIncorrect"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 466
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 467
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 468
    return-void
.end method

.method private showWpsDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 445
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {v0, p0, p0, v1, v1}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;IZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 446
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->show()V

    .line 447
    return-void
.end method

.method private showWpsState(I)V
    .locals 1
    .parameter "event"

    .prologue
    .line 450
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 452
    return-void
.end method

.method private startWps(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "wpsMethod"
    .parameter "wpsBssid"
    .parameter "wpsPin"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->startWps(ILjava/lang/String;Ljava/lang/String;)Z

    .line 518
    return-void
.end method

.method private stopWps()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->stopWps()Z

    .line 522
    return-void
.end method

.method private updateAccessPoints()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v1, accessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 549
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4

    .line 550
    iput v11, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    .line 551
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 553
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v9}, Ljava/util/BitSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 557
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v10, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    if-le v9, v10, :cond_1

    .line 558
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v9, p0, Lcom/android/settings/wifi/WifiSettings;->mLastPriority:I

    .line 562
    :cond_1
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v9, :cond_3

    .line 563
    const/4 v9, 0x2

    iput v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 568
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 569
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v9, v10}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 570
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 564
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    if-eqz v9, :cond_2

    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 565
    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 574
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 575
    .local v8, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v8, :cond_8

    .line 576
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 578
    .local v7, result:Landroid/net/wifi/ScanResult;
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    .line 582
    const/4 v4, 0x0

    .line 583
    .local v4, found:Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 584
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 585
    const/4 v4, 0x1

    goto :goto_3

    .line 588
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_7
    if-nez v4, :cond_5

    .line 589
    new-instance v9, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v9, p0, v7}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 594
    .end local v4           #found:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #result:Landroid/net/wifi/ScanResult;
    :cond_8
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 595
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 596
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v9, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 598
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_9
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 644
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_3

    .line 649
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 654
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 655
    if-eqz p1, :cond_2

    .line 656
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 659
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_4

    .line 660
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 659
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 651
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 663
    .restart local v0       #i:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_5

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_5

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 665
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 666
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->enableNetworks()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, -0x1

    .line 671
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 673
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 680
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 676
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 677
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    .line 678
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsNetworkId:I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 347
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 349
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->deleteSettings(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->forget(I)V

    .line 354
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 356
    const/4 v6, -0x3

    if-ne p2, v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showApAdvSetting()V

    .line 432
    :cond_0
    :goto_0
    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 433
    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 434
    return-void

    .line 358
    :cond_1
    if-ne p2, v7, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v6, :cond_6

    .line 359
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 361
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_2

    .line 362
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 363
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 364
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 366
    :cond_2
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v7, :cond_3

    .line 367
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_0

    .line 368
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 369
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->saveNetworks()V

    goto :goto_0

    .line 372
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 373
    .local v2, networkId:I
    if-eq v2, v7, :cond_0

    .line 374
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCurrentConnectingNetworkId:I

    .line 375
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v2, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 376
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 377
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v6, v6, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v6, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 378
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->saveNetworks()V

    goto :goto_0

    .line 380
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 384
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #networkId:I
    :cond_6
    if-ne p2, v7, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v6, :cond_0

    .line 386
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WpsDialog;->getWpsMethod()I

    move-result v6

    iput v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    .line 387
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WpsDialog;->getWpsSsid()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsSsid:Ljava/lang/String;

    .line 388
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v6}, Lcom/android/settings/wifi/WpsDialog;->getWpsPin()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPin:Ljava/lang/String;

    .line 389
    const-string v5, "any"

    .line 390
    .local v5, wpsBssid:Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPinPending:Z

    .line 392
    iget v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    if-ne v6, v9, :cond_c

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsSsid:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 393
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 394
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_9

    .line 395
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 397
    .local v3, result:Landroid/net/wifi/ScanResult;
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "[IBSS]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "-EAP-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 403
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "WPS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 404
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsSsid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 405
    const-string v6, "any"

    if-ne v5, v6, :cond_a

    .line 406
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 410
    :cond_8
    :goto_1
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "WPS-PIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 411
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 412
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPinPending:Z

    .line 419
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_9
    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPinPending:Z

    if-nez v6, :cond_b

    .line 420
    iget v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPin:Ljava/lang/String;

    invoke-direct {p0, v6, v5, v7}, Lcom/android/settings/wifi/WifiSettings;->startWps(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #result:Landroid/net/wifi/ScanResult;
    :cond_a
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 408
    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPinPending:Z

    goto :goto_1

    .line 423
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_b
    const-string v5, "any"

    .line 424
    iget v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPin:Ljava/lang/String;

    invoke-direct {p0, v6, v5, v7}, Lcom/android/settings/wifi/WifiSettings;->startWps(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    .end local v4           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_c
    iget v6, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsMethod:I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsPin:Ljava/lang/String;

    invoke-direct {p0, v6, v5, v7}, Lcom/android/settings/wifi/WifiSettings;->startWps(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 260
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 261
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 295
    :goto_0
    return v2

    .line 263
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 295
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 267
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_1
    move v2, v4

    .line 283
    goto :goto_0

    .line 270
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    .line 272
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 273
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v2, v2, Lcom/android/settings/wifi/AccessPoint;->adhoc:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->adhocSSID:Z

    .line 275
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 276
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 277
    .local v1, networkId:I
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 278
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 279
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 281
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #networkId:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_1

    .line 285
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showApAdvSetting()V

    move v2, v4

    .line 286
    goto :goto_0

    .line 288
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->deleteSettings(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->forget(I)V

    move v2, v4

    .line 290
    goto :goto_0

    .line 292
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    move v2, v4

    .line 293
    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "only_access_points"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 155
    :goto_0
    const-string v0, "add_wps_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getWpsState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getWpsState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 164
    :goto_1
    sget-boolean v0, Landroid/os/Build;->IS_MIONE:Z

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    :cond_1
    const-string v0, "access_points"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 170
    const-string v0, "add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetwork:Landroid/preference/Preference;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 173
    return-void

    .line 145
    :cond_2
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 146
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    const-string v0, "enable_wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 148
    const-string v0, "notify_open_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    const v1, 0x7f09013a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 237
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 241
    .local v0, preference:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 242
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .end local v0           #preference:Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 243
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 244
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x3

    const v2, 0x7f090137

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 247
    :cond_0
    const/4 v1, 0x6

    const v2, 0x7f090163

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 248
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_1

    .line 249
    const/4 v1, 0x4

    const v2, 0x7f090138

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 250
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    .line 251
    const/4 v1, 0x5

    const v2, 0x7f090139

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 256
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 213
    const/4 v0, 0x1

    const v1, 0x7f090135

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 215
    const/4 v0, 0x2

    const v1, 0x7f090136

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 217
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 232
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 224
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    :cond_0
    move v0, v2

    .line 227
    goto :goto_0

    .line 229
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/AdvancedSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 230
    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 200
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 204
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 206
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mResetNetworks:Z

    if-eqz v0, :cond_3

    .line 207
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->enableNetworks()V

    .line 209
    :cond_3
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 320
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 321
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 322
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    :goto_0
    move v0, v3

    .line 341
    :goto_1
    return v0

    .line 323
    .restart local p2
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWpsNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 324
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getWpsState()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getWpsState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showWpsDialog()V

    goto :goto_0

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->stopWps()V

    goto :goto_0

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    .line 332
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 333
    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 334
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_2

    .line 339
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 177
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 178
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v1, v3, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->test()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 183
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 184
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 185
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;)V

    .line 187
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iput v3, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 188
    return-void
.end method
