.class public Lcom/android/phone/GsmUmtsCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsCallForwardOptions.java"


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final DBG:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mDoneIndexes:[Z

.field private mIcicle:Landroid/os/Bundle;

.field private mInstanceStateSaved:Z

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->DBG:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mDoneIndexes:[Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 157
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v6, 0x0

    .line 162
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, ""

    .line 164
    .local v8, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 175
    :cond_2
    if-eqz v6, :cond_0

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 170
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 175
    if-eqz v6, :cond_4

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v0, v8}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 172
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v0, "GsmUmtsCallForwardOptions"

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    if-eqz v6, :cond_0

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 175
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v0, v8}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v0, v8}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v0, v8}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 180
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
    .line 50
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsCallForwardOptions;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 55
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_cfu_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    .line 56
    const-string v1, "button_cfb_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    .line 57
    const-string v1, "button_cfnry_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    .line 58
    const-string v1, "button_cfnrc_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    .line 60
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 61
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 62
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 63
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference;->setParentActivity(Landroid/app/Activity;I)V

    .line 65
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInstanceStateSaved:Z

    .line 71
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 5
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 117
    move-object v0, p1

    check-cast v0, Lcom/android/phone/CallForwardEditPreference;

    move-object v3, v0

    iget v2, v3, Lcom/android/phone/CallForwardEditPreference;->reason:I

    .line 118
    .local v2, index:I
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mDoneIndexes:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 119
    const/4 v2, -0x1

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mDoneIndexes:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mDoneIndexes:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_2

    .line 122
    move v2, v1

    .line 126
    :cond_0
    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsCallForwardOptions;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallForwardEditPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 130
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 131
    return-void

    .line 120
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 75
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 77
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v6, v8}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 78
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v6, v8}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 79
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v6, v8}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 80
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v6, v8}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 83
    .local v4, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v6, v7, :cond_0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 86
    :cond_0
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v6, v9}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 87
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v6, v9}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 88
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v6, v9}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 89
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v6, v9}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-boolean v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInstanceStateSaved:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 94
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mDoneIndexes:[Z

    invoke-static {v6, v8}, Ljava/util/Arrays;->fill([ZZ)V

    .line 95
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallForwardEditPreference;

    .line 96
    .local v5, pref:Lcom/android/phone/CallForwardEditPreference;
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v5}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 97
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "toggle"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 98
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 99
    .local v1, cf:Lcom/android/internal/telephony/CallForwardInfo;
    const-string v6, "number"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 100
    const-string v6, "status"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 101
    invoke-virtual {v5, v1}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 102
    invoke-virtual {v5, p0, v8}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_1

    .line 106
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cf:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #pref:Lcom/android/phone/CallForwardEditPreference;
    :cond_3
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mDoneIndexes:[Z

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([ZZ)V

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, currentIndex:I
    sget v6, Lcom/android/phone/CallForwardEditPreference;->sCurrentWorkReason:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 109
    sget v2, Lcom/android/phone/CallForwardEditPreference;->sCurrentWorkReason:I

    .line 111
    :cond_4
    iget-object v6, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v6, p0, v9}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    .line 138
    .local v2, pref:Lcom/android/phone/CallForwardEditPreference;
    iget-object v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mDoneIndexes:[Z

    iget v4, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    .line 152
    .end local v2           #pref:Lcom/android/phone/CallForwardEditPreference;
    :goto_1
    return-void

    .line 142
    .restart local v2       #pref:Lcom/android/phone/CallForwardEditPreference;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "toggle"

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    iget-object v3, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_1

    .line 145
    const-string v3, "number"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "status"

    iget-object v4, v2, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    :cond_1
    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 150
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #pref:Lcom/android/phone/CallForwardEditPreference;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mInstanceStateSaved:Z

    .line 151
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    goto :goto_1
.end method
