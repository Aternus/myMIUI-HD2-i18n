.class public Lcom/android/settings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 115
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 8
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    const-string v7, ":"

    .line 374
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 375
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 376
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 378
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 366
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 367
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 342
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 343
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 345
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 350
    .local v0, address:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 349
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 350
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    const v3, 0x7f0901d4

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 231
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 235
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 332
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 333
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 335
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 336
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 337
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    return-void

    .line 336
    .end local v0           #macAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 337
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0901d4

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 247
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 264
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void

    .line 251
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    goto :goto_0

    .line 254
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    goto :goto_0

    .line 260
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 3

    .prologue
    .line 242
    const-string v0, "network_type"

    const-string v1, "gsm.network.type"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 7
    .parameter "serviceState"

    .prologue
    const-string v6, "roaming_state"

    .line 268
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 269
    .local v3, state:I
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, display:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 284
    :goto_0
    const-string v4, "service_state"

    invoke-direct {p0, v4, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    const-string v4, "roaming_state"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_1
    const-string v4, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, rawNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .line 295
    .local v1, formattedNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 296
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_0
    const-string v4, "number"

    invoke-direct {p0, v4, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void

    .line 273
    .end local v1           #formattedNumber:Ljava/lang/String;
    .end local v2           #rawNumber:Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    goto :goto_0

    .line 280
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    const-string v4, "roaming_state"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const-string v7, "phone"

    const-string v6, "min_number"

    const-string v5, "meid_number"

    const-string v4, "imei_sv"

    const-string v3, "imei"

    .line 125
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v1, Lcom/android/settings/deviceinfo/Status$MyHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 130
    const-string v1, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 132
    const v1, 0x7f040016

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 135
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mUnknown:Ljava/lang/String;

    .line 139
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 141
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 142
    const-string v1, "up_time"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 145
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    const-string v1, "meid_number"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "min_number"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "prl_version"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "imei"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 153
    .local v0, removablePref:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_1
    const-string v1, "imei_sv"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 184
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 189
    return-void

    .line 161
    .end local v0           #removablePref:Landroid/preference/Preference;
    :cond_3
    const-string v1, "imei"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "imei_sv"

    const-string v1, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "prl_version"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 170
    .restart local v0       #removablePref:Landroid/preference/Preference;
    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :cond_4
    const-string v1, "meid_number"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_5
    const-string v1, "min_number"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 209
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 211
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method updateSignalStrength()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    const-string v7, " "

    .line 307
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 308
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 310
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 312
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 314
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 319
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 321
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrength()I

    move-result v1

    .line 323
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 324
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090019

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f09001a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    .end local v0           #r:Landroid/content/res/Resources;
    .end local v1           #signalAsu:I
    .end local v2           #signalDbm:I
    .end local v3           #state:I
    :cond_4
    return-void
.end method

.method updateTimes()V
    .locals 6

    .prologue
    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 358
    .local v0, ut:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 359
    const-wide/16 v0, 0x1

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    return-void
.end method
