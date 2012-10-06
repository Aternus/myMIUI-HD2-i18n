.class public Lcom/android/phone/BuildSearchIndexReceiver;
.super Landroid/preference/BuildSearchIndexReceiverBase;
.source "BuildSearchIndexReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/preference/BuildSearchIndexReceiverBase;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundBuild()V
    .locals 3

    .prologue
    const-class v2, Lcom/android/phone/Settings;

    .line 8
    const v0, 0x7f050004

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 9
    const v0, 0x7f050003

    const-class v1, Lcom/android/phone/CallFeaturesMoreSetting;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 10
    const v0, 0x7f05000b

    const-class v1, Lcom/android/phone/CellBroadcastSms;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 11
    const v0, 0x7f05000c

    const-class v1, Lcom/android/phone/DataUsage;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 12
    const v0, 0x7f05000d

    const-class v1, Lcom/android/phone/FdnSetting;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 13
    const v0, 0x7f050007

    const-class v1, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 14
    const v0, 0x7f050008

    const-class v1, Lcom/android/phone/NetworkSetting;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 15
    const v0, 0x7f050011

    const-class v1, Lcom/android/phone/Settings;

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 16
    const v0, 0x7f05000a

    const-class v1, Lcom/android/phone/Settings;

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 17
    const v0, 0x7f05000e

    const-class v1, Lcom/android/phone/Settings;

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 18
    const v0, 0x7f05000f

    const-class v1, Lcom/android/phone/IccLockSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/BuildSearchIndexReceiver;->addIndexForActivity(ILjava/lang/Class;)V

    .line 19
    return-void
.end method
