.class public Lcom/android/phone/CdmaCallForwardOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallForwardOptions.java"


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 74
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v6, 0x0

    .line 79
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, ""

    .line 81
    .local v8, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 83
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 92
    :cond_2
    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 92
    if-eqz v6, :cond_4

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v8}, Lcom/android/phone/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 89
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v0, "CdmaCallForwardOptions"

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 92
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v8}, Lcom/android/phone/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v8}, Lcom/android/phone/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v0, v8}, Lcom/android/phone/CdmaCallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallForwardOptions;->addPreferencesFromResource(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 39
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_cfu_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CdmaCallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    .line 40
    const-string v1, "button_cfb_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CdmaCallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    .line 41
    const-string v1, "button_cfnry_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CdmaCallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    .line 42
    const-string v1, "button_cfnrc_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CdmaCallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    .line 44
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CdmaCallForwardEditPreference;->mReason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 45
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CdmaCallForwardEditPreference;->mReason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 46
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CdmaCallForwardEditPreference;->mReason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 47
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CdmaCallForwardEditPreference;->mReason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 54
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 55
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 56
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 60
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CdmaCallForwardEditPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CdmaCallForwardEditPreference;->setEnabled(Z)V

    .line 69
    :cond_1
    return-void
.end method
