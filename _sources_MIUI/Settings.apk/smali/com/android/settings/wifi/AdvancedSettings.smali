.class public Lcom/android/settings/wifi/AdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DEBUGGABLE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private initNumChannelsPreference()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 92
    const-string v7, "num_channels"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 93
    .local v4, pref:Landroid/preference/ListPreference;
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 101
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getValidChannelCounts()[I

    move-result-object v5

    .line 102
    .local v5, validChannelCounts:[I
    if-nez v5, :cond_1

    .line 103
    const v7, 0x7f09016a

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-virtual {v4, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    array-length v7, v5

    new-array v0, v7, [Ljava/lang/String;

    .line 109
    .local v0, entries:[Ljava/lang/String;
    array-length v7, v5

    new-array v1, v7, [Ljava/lang/String;

    .line 111
    .local v1, entryValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_2

    .line 112
    aget v7, v5, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 113
    const v7, 0x7f09016b

    new-array v8, v11, [Ljava/lang/Object;

    aget v9, v5, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {v4, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 119
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getNumAllowedChannels()I

    move-result v3

    .line 120
    .local v3, numChannels:I
    if-ltz v3, :cond_0

    .line 121
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSleepPolicyPreference()V
    .locals 5

    .prologue
    .line 126
    const-string v2, "sleep_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 127
    .local v0, pref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, value:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private refreshMacAddress()V
    .locals 5

    .prologue
    .line 165
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 166
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 168
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 169
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    .line 170
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    return-void

    .line 169
    .end local v0           #macAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 170
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0901d4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f040040

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedSettings;->addPreferencesFromResource(I)V

    .line 55
    const-string v1, "ro.debuggable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    .line 61
    sget v1, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initNumChannelsPreference()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v1, "num_channels"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 70
    .local v0, chanPref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v6, 0x7f09016a

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_0

    move v4, v8

    .line 161
    .end local p2
    :goto_0
    return v4

    .line 137
    .restart local p2
    :cond_0
    const-string v4, "num_channels"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 139
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    .local v2, numChannels:I
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 141
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/net/wifi/WifiManager;->setNumAllowedChannels(IZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 142
    const v4, 0x7f09016a

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #numChannels:I
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    move v4, v8

    .line 161
    goto :goto_0

    .line 145
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 146
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v7

    .line 148
    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v4, "sleep_policy"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 155
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 156
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const v4, 0x7f09016e

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v7

    .line 158
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 84
    sget v0, Lcom/android/settings/wifi/AdvancedSettings;->DEBUGGABLE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initNumChannelsPreference()V

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->initSleepPolicyPreference()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedSettings;->refreshMacAddress()V

    .line 89
    return-void
.end method
