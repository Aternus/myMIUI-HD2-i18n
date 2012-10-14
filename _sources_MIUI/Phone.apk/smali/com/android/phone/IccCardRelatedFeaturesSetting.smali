.class public Lcom/android/phone/IccCardRelatedFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "IccCardRelatedFeaturesSetting.java"


# instance fields
.field private mCdmaCallForwarding:Landroid/preference/Preference;

.field private mCdmaCallWaiting:Landroid/preference/Preference;

.field private mCdmaVoicePrivacy:Landroid/preference/Preference;

.field private mGsmCallForwarding:Landroid/preference/Preference;

.field private mGsmCallWaiting:Landroid/preference/Preference;

.field private mGsmCallerId:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f050010

    invoke-virtual {p0, v1}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->addPreferencesFromResource(I)V

    .line 41
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 43
    const-string v1, "button_call_forwarding"

    invoke-virtual {p0, v1}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallForwarding:Landroid/preference/Preference;

    .line 44
    const-string v1, "button_call_waiting"

    invoke-virtual {p0, v1}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallWaiting:Landroid/preference/Preference;

    .line 45
    const-string v1, "button_caller_id"

    invoke-virtual {p0, v1}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallerId:Landroid/preference/Preference;

    .line 46
    const-string v1, "button_cdma_call_forwarding"

    invoke-virtual {p0, v1}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaCallForwarding:Landroid/preference/Preference;

    .line 47
    const-string v1, "button_cdma_cw_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaCallWaiting:Landroid/preference/Preference;

    .line 48
    const-string v1, "button_voice_privacy_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaVoicePrivacy:Landroid/preference/Preference;

    .line 50
    iget-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 51
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallForwarding:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallForwarding:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 53
    iget-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallWaiting:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallWaiting:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 54
    iget-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallerId:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallerId:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 62
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaCallForwarding:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaCallForwarding:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 57
    iget-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaCallWaiting:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaCallWaiting:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 58
    iget-object v1, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaVoicePrivacy:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaVoicePrivacy:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "button_fdn"

    .line 66
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 84
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallForwarding:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallWaiting:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mGsmCallerId:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaCallWaiting:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/phone/IccCardRelatedFeaturesSetting;->mCdmaVoicePrivacy:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 79
    const-string v0, "button_fdn"

    invoke-virtual {p0, v3}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0c00e6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "button_fdn"

    invoke-virtual {p0, v3}, Lcom/android/phone/IccCardRelatedFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0c00e7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
