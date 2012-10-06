.class public Lcom/android/phone/FdnSetting;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting.java"

# interfaces
.implements Lcom/android/phone/EditPinDialog$DialogClosedListener;


# instance fields
.field private mChangePin2:Landroid/preference/Preference;

.field private mDialog:Lcom/android/phone/EditPinDialog;

.field private mEnableFdn:Landroid/preference/CheckBoxPreference;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateEnableFDN()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public OnDialogClose(Lcom/android/phone/EditPinDialog;Z)V
    .locals 2
    .parameter "dialog"
    .parameter "cancel"

    .prologue
    .line 92
    if-nez p2, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/android/phone/EditPinDialog;->getMode()Lcom/android/phone/EditPinDialog$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 97
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting;->addPreferencesFromResource(I)V

    .line 53
    const-string v0, "button_fdn_enable_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    .line 54
    const-string v0, "button_change_pin2_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/FdnSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mChangePin2:Landroid/preference/Preference;

    .line 56
    new-instance v0, Lcom/android/phone/EditPinDialog;

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/phone/EditPinDialog;-><init>(Landroid/content/Context;Lcom/android/phone/EditPinDialog$Mode;Lcom/android/phone/EditPinDialog$DialogClosedListener;)V

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mDialog:Lcom/android/phone/EditPinDialog;

    .line 57
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 77
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/FdnSetting;->mEnableFdn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mDialog:Lcom/android/phone/EditPinDialog;

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->FDN:Lcom/android/phone/EditPinDialog$Mode;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinDialog;->setMode(Lcom/android/phone/EditPinDialog$Mode;)V

    .line 80
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mDialog:Lcom/android/phone/EditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/EditPinDialog;->show()V

    move v0, v2

    .line 87
    :goto_1
    return v0

    :cond_0
    move v1, v3

    .line 78
    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mChangePin2:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mDialog:Lcom/android/phone/EditPinDialog;

    sget-object v1, Lcom/android/phone/EditPinDialog$Mode;->PIN2:Lcom/android/phone/EditPinDialog$Mode;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPinDialog;->setMode(Lcom/android/phone/EditPinDialog$Mode;)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/FdnSetting;->mDialog:Lcom/android/phone/EditPinDialog;

    invoke-virtual {v0}, Lcom/android/phone/EditPinDialog;->show()V

    move v0, v2

    .line 85
    goto :goto_1

    :cond_2
    move v0, v3

    .line 87
    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 63
    invoke-direct {p0}, Lcom/android/phone/FdnSetting;->updateEnableFDN()V

    .line 64
    return-void
.end method
