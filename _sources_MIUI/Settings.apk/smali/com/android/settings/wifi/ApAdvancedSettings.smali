.class public Lcom/android/settings/wifi/ApAdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApAdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static ACTION_AP_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String;

.field private static DEBUGGABLE:I

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mForgetPreference:Landroid/preference/Preference;

.field private mIpPreferenceKeys:[Ljava/lang/String;

.field private mNetworkId:I

.field private mProxyClear:Landroid/preference/Preference;

.field private mProxyHost:Landroid/preference/EditTextPreference;

.field private mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

.field private mProxyPort:Landroid/preference/EditTextPreference;

.field private mSettingNames:[Ljava/lang/String;

.field private mSsid:Ljava/lang/String;

.field private mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "android.intent.action.ap_advanced_settings_changed"

    sput-object v0, Lcom/android/settings/wifi/ApAdvancedSettings;->ACTION_AP_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wifi_static_ip"

    aput-object v1, v0, v2

    const-string v1, "wifi_static_gateway"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_netmask"

    aput-object v1, v0, v4

    const-string v1, "wifi_static_dns1"

    aput-object v1, v0, v5

    const-string v1, "wifi_static_dns2"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ip_address"

    aput-object v1, v0, v2

    const-string v1, "gateway"

    aput-object v1, v0, v3

    const-string v1, "netmask"

    aput-object v1, v0, v4

    const-string v1, "dns1"

    aput-object v1, v0, v5

    const-string v1, "dns2"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private canForget()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 136
    iget v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mNetworkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    .line 159
    :goto_0
    return v2

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_use_static_ip"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 140
    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, settingValue:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 147
    goto :goto_0

    .line 143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    .end local v1           #settingValue:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "http_proxy_not_use_global"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    .line 152
    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "http_proxy"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 156
    goto :goto_0

    :cond_5
    move v2, v5

    .line 159
    goto :goto_0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 365
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/ApAdvancedSettings;->sNotSet:Ljava/lang/String;

    .line 368
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private checkPort(Ljava/lang/String;)Z
    .locals 4
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    .line 373
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 374
    .local v1, p:I
    if-lez v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    const/4 v2, 0x1

    .line 376
    .end local v1           #p:I
    :goto_0
    return v2

    .restart local v1       #p:I
    :cond_0
    move v2, v3

    .line 374
    goto :goto_0

    .line 375
    .end local v1           #p:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 376
    goto :goto_0
.end method

.method private contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "array"
    .parameter "str"

    .prologue
    .line 228
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 229
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    const/4 v4, 0x1

    .line 232
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 228
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private fillProxy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "http_proxy_not_use_global"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/net/Proxy;->getWifiHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/net/Proxy;->getWifiPort(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, port:I
    if-lez v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 131
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    return-void

    .end local v0           #port:I
    :cond_0
    move v2, v4

    .line 118
    goto :goto_0

    .line 128
    .restart local v0       #port:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x0

    .line 237
    const/4 v4, 0x0

    .line 238
    .local v4, start:I
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 239
    .local v2, end:I
    const/4 v3, 0x0

    .line 241
    .local v3, numBlocks:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 243
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 248
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 249
    .local v0, block:I
    const/16 v5, 0xff

    if-gt v0, v5, :cond_1

    if-gez v0, :cond_2

    :cond_1
    move v5, v6

    .line 262
    .end local v0           #block:I
    :goto_1
    return v5

    .line 252
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/NumberFormatException;
    move v5, v6

    .line 253
    goto :goto_1

    .line 256
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #block:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 258
    add-int/lit8 v4, v2, 0x1

    .line 259
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 262
    .end local v0           #block:I
    :cond_3
    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method private saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 345
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkPort(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendProxyChangedBroadcast()V

    goto :goto_0
.end method

.method private sendIpChangedBroadcast()V
    .locals 3

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/wifi/ApAdvancedSettings;->ACTION_AP_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    return-void
.end method

.method private sendProxyChangedBroadcast()V
    .locals 3

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    return-void
.end method

.method private updateSettingsProvider()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 316
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "wifi_use_static_ip"

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    :goto_0
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 321
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    :cond_0
    move v4, v6

    .line 316
    goto :goto_0

    .line 326
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "http_proxy_not_use_global"

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    :goto_2
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendIpChangedBroadcast()V

    .line 331
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendProxyChangedBroadcast()V

    .line 332
    return-void

    :cond_2
    move v5, v6

    .line 326
    goto :goto_2
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v5, "wifi_use_static_ip"

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 300
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 301
    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 302
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, settingValue:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    :cond_1
    move v5, v6

    .line 297
    goto :goto_0

    .line 309
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mForgetPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->canForget()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v3, 0x7f040041

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/ApAdvancedSettings;->sNotSet:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 92
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "ssid"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    .line 93
    const-string v3, "networkId"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mNetworkId:I

    .line 94
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSsid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    const-string v3, "use_static_ip"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    .line 96
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mUseStaticIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string v3, "wifi_forget"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mForgetPreference:Landroid/preference/Preference;

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 102
    .local v2, preference:Landroid/preference/Preference;
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_0
    const-string v3, "proxy_not_use_globle_setting"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    .line 106
    const-string v3, "clear_proxy"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyClear:Landroid/preference/Preference;

    .line 107
    const-string v3, "proxy_host"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    .line 108
    const-string v3, "proxy_port"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    .line 109
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyNotUseGlobal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    iget-object v3, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->fillProxy()V

    .line 114
    const-string v3, "ro.debuggable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/wifi/ApAdvancedSettings;->DEBUGGABLE:I

    .line 115
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 267
    const/4 v0, 0x1

    const v1, 0x7f090171

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 270
    const/4 v0, 0x2

    const v1, 0x7f090172

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 273
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 279
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 291
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 282
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->updateSettingsProvider()V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->finish()V

    move v0, v1

    .line 284
    goto :goto_0

    .line 287
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->finish()V

    move v0, v1

    .line 288
    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 182
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, key:Ljava/lang/String;
    if-nez v3, :cond_0

    move v6, v9

    .line 224
    .end local p2
    :goto_0
    return v6

    .line 186
    .restart local p2
    :cond_0
    const-string v6, "use_static_ip"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 187
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 188
    .local v5, value:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_use_static_ip"

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_1

    move v8, v9

    :cond_1
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendIpChangedBroadcast()V

    .line 223
    .end local v5           #value:Z
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mForgetPreference:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->canForget()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    move v6, v9

    .line 224
    goto :goto_0

    .line 191
    .restart local p2
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 192
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 194
    .local v5, value:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/ApAdvancedSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 195
    const v6, 0x7f090173

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v8

    .line 197
    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 202
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mIpPreferenceKeys:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendIpChangedBroadcast()V

    goto :goto_1

    .line 201
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 209
    .end local v2           #i:I
    .end local v5           #value:Ljava/lang/String;
    :cond_6
    const-string v6, "proxy_not_use_globle_setting"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 210
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 211
    .local v5, value:Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy_not_use_global"

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_7

    move v8, v9

    :cond_7
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->sendProxyChangedBroadcast()V

    goto :goto_1

    .line 214
    .end local v5           #value:Z
    .restart local p2
    :cond_8
    const-string v6, "proxy_host"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 215
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 216
    .local v1, host:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/android/settings/wifi/ApAdvancedSettings;->saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 218
    .end local v1           #host:Ljava/lang/String;
    :cond_9
    const-string v6, "proxy_port"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 219
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 220
    .local v4, port:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkPort(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v6, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/android/settings/wifi/ApAdvancedSettings;->saveHostAndPort(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 220
    :cond_a
    const-string v7, ""

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mForgetPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ApAdvancedSettings;->setResult(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->finish()V

    .line 178
    :cond_0
    :goto_0
    return v3

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/ApAdvancedSettings;->mProxyClear:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/ApAdvancedSettings;->getSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->fillProxy()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 166
    invoke-direct {p0}, Lcom/android/settings/wifi/ApAdvancedSettings;->updateUi()V

    .line 167
    return-void
.end method
