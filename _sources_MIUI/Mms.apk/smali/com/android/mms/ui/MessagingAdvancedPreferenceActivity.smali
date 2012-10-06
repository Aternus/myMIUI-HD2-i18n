.class public Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingAdvancedPreferenceActivity.java"


# instance fields
.field private mManageSimPref:Landroid/preference/Preference;

.field private mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmscAddressPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 147
    new-instance v0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 155
    new-instance v0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method private removeUnavailablePrefs()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 78
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-nez v10, :cond_2

    move v8, v12

    .line 80
    .local v8, removeSimRelatedPrefs:Z
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    move v7, v12

    .line 82
    .local v7, removeMmsRelatedPrefs:Z
    :goto_1
    if-nez v8, :cond_0

    if-eqz v7, :cond_7

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 84
    .local v6, ps:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    if-ge v0, v10, :cond_7

    .line 85
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v9, toRemove:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 87
    .local v5, pc:Landroid/preference/PreferenceCategory;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 88
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 89
    .local v3, p:Landroid/preference/Preference;
    if-eqz v8, :cond_4

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_sim_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_4

    .line 90
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0           #i:I
    .end local v2           #j:I
    .end local v3           #p:Landroid/preference/Preference;
    .end local v5           #pc:Landroid/preference/PreferenceCategory;
    .end local v6           #ps:Landroid/preference/PreferenceScreen;
    .end local v7           #removeMmsRelatedPrefs:Z
    .end local v8           #removeSimRelatedPrefs:Z
    .end local v9           #toRemove:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_2
    move v8, v11

    .line 78
    goto :goto_0

    .restart local v8       #removeSimRelatedPrefs:Z
    :cond_3
    move v7, v11

    .line 80
    goto :goto_1

    .line 91
    .restart local v0       #i:I
    .restart local v2       #j:I
    .restart local v3       #p:Landroid/preference/Preference;
    .restart local v5       #pc:Landroid/preference/PreferenceCategory;
    .restart local v6       #ps:Landroid/preference/PreferenceScreen;
    .restart local v7       #removeMmsRelatedPrefs:Z
    .restart local v9       #toRemove:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_4
    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_mms_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_1

    .line 92
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 95
    .end local v3           #p:Landroid/preference/Preference;
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 96
    .restart local v3       #p:Landroid/preference/Preference;
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 84
    .end local v3           #p:Landroid/preference/Preference;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #j:I
    .end local v5           #pc:Landroid/preference/PreferenceCategory;
    .end local v6           #ps:Landroid/preference/PreferenceScreen;
    .end local v9           #toRemove:Ljava/util/List;,"Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_7
    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v11, "mione_plus_cdma"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 103
    iget-object v10, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmscAddressPref:Landroid/preference/Preference;

    invoke-virtual {v10}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v4

    .line 104
    .local v4, parent:Landroid/preference/PreferenceGroup;
    if-eqz v4, :cond_8

    .line 105
    iget-object v10, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmscAddressPref:Landroid/preference/Preference;

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    .end local v4           #parent:Landroid/preference/PreferenceGroup;
    :cond_8
    return-void
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f090076

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f090076

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->addPreferencesFromResource(I)V

    .line 39
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 40
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 41
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 43
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    .line 44
    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setRightIndicatorVisibility(I)V

    .line 49
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->setSmsDisplayLimit()V

    .line 50
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->setMmsDisplayLimit()V

    .line 52
    const-string v0, "pref_key_edit_sim_smsc_address"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmscAddressPref:Landroid/preference/Preference;

    .line 53
    const-string v0, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 54
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    const v1, 0x7f090179

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->removeUnavailablePrefs()V

    .line 62
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmscAddressPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SmscAddressSettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 129
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f09007a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingAdvancedPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f09007b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0
.end method
