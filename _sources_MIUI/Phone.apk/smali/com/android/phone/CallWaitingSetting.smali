.class public Lcom/android/phone/CallWaitingSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CallWaitingSetting.java"


# instance fields
.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/phone/CallWaitingSetting;->addPreferencesFromResource(I)V

    .line 29
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 30
    const-string v0, "button_cw_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallWaitingSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallWaitingSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 31
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/android/phone/CallWaitingSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/android/phone/CallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallWaitingSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/phone/CallWaitingSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setEnabled(Z)V

    .line 42
    iget-object v0, p0, Lcom/android/phone/CallWaitingSetting;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v0, p0, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 44
    :cond_0
    return-void
.end method
