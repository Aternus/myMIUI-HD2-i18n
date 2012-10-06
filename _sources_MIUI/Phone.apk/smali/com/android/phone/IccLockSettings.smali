.class public Lcom/android/phone/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/phone/EditPinDialog$DialogClosedListener;


# instance fields
.field private mChangePin1:Landroid/preference/Preference;

.field private mDialog:Lcom/android/phone/EditPinDialog;

.field private mEnableIccLock:Landroid/preference/CheckBoxPreference;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateEnableIccLock()V
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/phone/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 53
    .local v0, iccLocked:Z
    iget-object v1, p0, Lcom/android/phone/IccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 54
    iget-object v1, p0, Lcom/android/phone/IccLockSettings;->mChangePin1:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public OnDialogClose(Lcom/android/phone/EditPinDialog;Z)V
    .locals 2
    .parameter "dialog"
    .parameter "cancel"

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/android/phone/EditPinDialog;->getMode()Lcom/android/phone/EditPinDialog$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v0, v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/phone/IccLockSettings;->updateEnableIccLock()V

    .line 80
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/android/phone/IccLockSettings;->addPreferencesFromResource(I)V

    .line 38
    const-string v0, "button_icc_lock_enable_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/IccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    .line 39
    const-string v0, "button_change_pin1_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IccLockSettings;->mChangePin1:Landroid/preference/Preference;

    .line 41
    new-instance v0, Lcom/android/phone/EditPinDialog;

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/phone/EditPinDialog;-><init>(Landroid/content/Context;Lcom/android/phone/EditPinDialog$Mode;Lcom/android/phone/EditPinDialog$DialogClosedListener;)V

    iput-object v0, p0, Lcom/android/phone/IccLockSettings;->mDialog:Lcom/android/phone/EditPinDialog;

    .line 42
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    iget-object v0, p0, Lcom/android/phone/IccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/phone/IccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/IccLockSettings;->mEnableIccLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/phone/IccLockSettings;->mDialog:Lcom/android/phone/EditPinDialog;

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->ICC_LOCK:Lcom/android/phone/EditPinDialog$Mode;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinDialog;->setMode(Lcom/android/phone/EditPinDialog$Mode;)V

    .line 63
    iget-object v0, p0, Lcom/android/phone/IccLockSettings;->mDialog:Lcom/android/phone/EditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/EditPinDialog;->show()V

    move v0, v2

    .line 70
    :goto_1
    return v0

    :cond_0
    move v1, v3

    .line 61
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IccLockSettings;->mChangePin1:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/phone/IccLockSettings;->mDialog:Lcom/android/phone/EditPinDialog;

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->PIN1:Lcom/android/phone/EditPinDialog$Mode;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinDialog;->setMode(Lcom/android/phone/EditPinDialog$Mode;)V

    .line 67
    iget-object v0, p0, Lcom/android/phone/IccLockSettings;->mDialog:Lcom/android/phone/EditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/EditPinDialog;->show()V

    move v0, v2

    .line 68
    goto :goto_1

    :cond_2
    move v0, v3

    .line 70
    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 47
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 48
    invoke-direct {p0}, Lcom/android/phone/IccLockSettings;->updateEnableIccLock()V

    .line 49
    return-void
.end method
