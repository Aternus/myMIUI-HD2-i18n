.class public Lcom/android/settings/SystemSettings;
.super Landroid/preference/PreferenceActivity;
.source "SystemSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;,
        Lcom/android/settings/SystemSettings$UpdateWifiValueTask;
    }
.end annotation


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/android/settings/SystemSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SystemSettings$1;-><init>(Lcom/android/settings/SystemSettings;)V

    iput-object v0, p0, Lcom/android/settings/SystemSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v3, 0x7f040032

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->addPreferencesFromResource(I)V

    .line 58
    const-string v3, "toggle_airplane"

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 59
    .local v0, airplane:Landroid/preference/CheckBoxPreference;
    const-string v3, "toggle_nfc"

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 60
    .local v1, nfc:Landroid/preference/CheckBoxPreference;
    new-instance v3, Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v3, p0, Lcom/android/settings/SystemSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 61
    new-instance v3, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v3, p0, Lcom/android/settings/SystemSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 64
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 65
    const-string v3, "network"

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    :cond_0
    const-string v3, "system"

    invoke-virtual {p0, v3}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 69
    .local v2, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Lcom/android/settings/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    const-string v3, "pc_connection_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    const-string v3, "dock_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/SystemSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SystemSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/SystemSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/SystemSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 190
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/settings/SystemSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/SystemSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    new-instance v2, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;

    invoke-direct {v2, p0, v6}, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;-><init>(Lcom/android/settings/SystemSettings;Lcom/android/settings/SystemSettings$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/SystemSettings$UpdateWifiValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    new-instance v2, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;

    invoke-direct {v2, p0, v6}, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;-><init>(Lcom/android/settings/SystemSettings;Lcom/android/settings/SystemSettings$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings/SystemSettings$UpdateBluetoothValueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    iget-object v2, p0, Lcom/android/settings/SystemSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 177
    iget-object v2, p0, Lcom/android/settings/SystemSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 179
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/SystemSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 180
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v2, "carrier_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v5, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 181
    return-void

    :cond_0
    move v3, v4

    .line 180
    goto :goto_0
.end method
