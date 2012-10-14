.class public Lcom/android/settings/BuildSearchIndexReceiver;
.super Landroid/preference/BuildSearchIndexReceiverBase;
.source "BuildSearchIndexReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/BuildSearchIndexReceiverBase;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundBuild()V
    .locals 7

    .prologue
    const-class v6, Lcom/android/settings/wifi/AdvancedSettings;

    const-class v5, Lcom/android/settings/bluetooth/BluetoothSettings;

    const-class v4, Lcom/android/settings/SecuritySettings;

    const-class v3, Lcom/android/settings/LanguageSettings;

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    .line 22
    const v0, 0x7f040001

    const-class v1, Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 25
    const v0, 0x7f040003

    const-class v1, Lcom/android/settings/ApnEditor;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 28
    const v0, 0x7f040004

    const-class v1, Lcom/android/settings/ApnSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 31
    const v0, 0x7f040005

    const-class v1, Lcom/android/settings/ApplicationSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 34
    const v0, 0x7f040007

    const-class v1, Lcom/android/settings/BacklightActivity;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 37
    const v0, 0x7f040009

    const-class v1, Lcom/android/settings/BatterySettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 40
    const v0, 0x7f04000a

    const-class v1, Lcom/android/settings/bluetooth/ConnectSpecificProfilesActivity;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 43
    const v0, 0x7f04000b

    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 46
    const v0, 0x7f040010

    const-class v1, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 49
    const v0, 0x7f040011

    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 52
    const v0, 0x7f040012

    const-class v1, Lcom/android/settings/DefaultApplicationSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 55
    const v0, 0x7f040013

    const-class v1, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 58
    const v0, 0x7f040014

    const-class v1, Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 61
    const v0, 0x7f040015

    const-class v1, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 64
    const v0, 0x7f040016

    const-class v1, Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 67
    const v0, 0x7f040017

    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 70
    const v0, 0x7f040018

    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 73
    const v0, 0x7f040019

    const-class v1, Lcom/android/settings/DockSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 76
    const v0, 0x7f04001a

    const-class v1, Lcom/android/settings/HapticTweaksActivity;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 79
    const v0, 0x7f04001b

    const-class v1, Lcom/android/settings/InputMethodPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 82
    const v0, 0x7f04001d

    const-class v1, Lcom/android/settings/KeySettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 85
    const v0, 0x7f04001e

    const-class v1, Lcom/android/settings/PhysicalKeyboardSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 88
    const v0, 0x7f04001f

    const-class v1, Lcom/android/settings/LanguageSettings;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 91
    const v0, 0x7f040020

    const-class v1, Lcom/android/settings/LocationSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 94
    const v0, 0x7f040021

    const-class v1, Lcom/android/settings/wifi/AdvancedSettings;

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 97
    const v0, 0x7f040022

    const-class v1, Lcom/android/settings/PCConnectionSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 100
    const v0, 0x7f040023

    const-class v1, Lcom/android/settings/PersonalSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 103
    const v0, 0x7f040024

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 106
    const v0, 0x7f040025

    const-class v1, Lcom/android/settings/PrivacySettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 109
    const v0, 0x7f040026

    const-class v1, Lcom/android/settings/ProgramSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 112
    const v0, 0x7f040027

    const-class v1, Lcom/android/settings/ProxySettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 115
    const v0, 0x7f040028

    const-class v1, Lcom/android/settings/quicklaunch/QuickLaunchSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 118
    const v0, 0x7f04002b

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 121
    const v0, 0x7f04002c

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 124
    const v0, 0x7f04002d

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 127
    const v0, 0x7f04002e

    const-class v1, Lcom/android/settings/ChooseLockGeneric;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 130
    const v0, 0x7f04002a

    const-class v1, Lcom/android/settings/SecuritySettings;

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 133
    const v0, 0x7f040030

    const-class v1, Lcom/android/settings/SoundSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 136
    const v0, 0x7f040032

    const-class v1, Lcom/android/settings/SystemSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 139
    const v0, 0x7f040033

    const-class v1, Lcom/android/settings/TestingSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 142
    const v0, 0x7f040034

    const-class v1, Lcom/android/settings/wifi/WifiInfo;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 145
    const v0, 0x7f040035

    const-class v1, Lcom/android/settings/TetherSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 148
    const v0, 0x7f040036

    const-class v1, Lcom/android/settings/ZoneList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 151
    const v0, 0x7f040037

    const-class v1, Lcom/android/settings/TrackballSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 154
    const v0, 0x7f040038

    const-class v1, Lcom/android/settings/TextToSpeechSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 157
    const v0, 0x7f040039

    const-class v1, Lcom/android/settings/LanguageSettings;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 160
    const v0, 0x7f04003b

    const-class v1, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 163
    const v0, 0x7f04003c

    const-class v1, Lcom/android/settings/vpn/VpnEditor;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 166
    const v0, 0x7f04003d

    const-class v1, Lcom/android/settings/vpn/VpnSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 169
    const v0, 0x7f04003e

    const-class v1, Lcom/android/settings/vpn/VpnTypeSelection;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 172
    const v0, 0x7f04003f

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 175
    const v0, 0x7f040040

    const-class v1, Lcom/android/settings/wifi/AdvancedSettings;

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 178
    const v0, 0x7f040042

    const-class v1, Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 181
    const v0, 0x7f040043

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 184
    const v0, 0x7f040044

    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 187
    return-void
.end method
