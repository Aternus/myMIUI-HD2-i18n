.class public Lcom/android/phone/PreferedNetworkTypeListPreference;
.super Landroid/preference/PreferenceActivity;
.source "PreferedNetworkTypeListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private mCurrentNetworkType:I

.field private mHandler:Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 170
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PreferedNetworkTypeListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mCurrentNetworkType:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/PreferedNetworkTypeListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mCurrentNetworkType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/PreferedNetworkTypeListPreference;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PreferedNetworkTypeListPreference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/phone/PreferedNetworkTypeListPreference;->handleClick(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PreferedNetworkTypeListPreference;)Landroid/preference/RadioButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->getCheckedPreference()Landroid/preference/RadioButtonPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/PreferedNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private checkRadioPreference(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/RadioButtonPreference;

    .line 99
    .local v1, pref:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1}, Landroid/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 101
    .end local v1           #pref:Landroid/preference/RadioButtonPreference;
    :cond_0
    return-void
.end method

.method private getAllRadioPreference(Landroid/preference/Preference;)V
    .locals 5
    .parameter "pref"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    instance-of v3, p1, Landroid/preference/RadioButtonPreference;

    if-eqz v3, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Landroid/preference/RadioButtonPreference;

    move-object v3, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    :cond_0
    return-void

    .line 88
    :cond_1
    instance-of v3, p1, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceGroup;

    move-object v2, v0

    .line 90
    .local v2, pg:Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 91
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PreferedNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCheckedPreference()Landroid/preference/RadioButtonPreference;
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/RadioButtonPreference;

    .line 105
    .local v1, pref:Landroid/preference/RadioButtonPreference;
    invoke-virtual {v1}, Landroid/preference/RadioButtonPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 109
    .end local v1           #pref:Landroid/preference/RadioButtonPreference;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleClick(I)V
    .locals 3
    .parameter "networkType"

    .prologue
    .line 149
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mHandler:Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 152
    return-void
.end method

.method private isChineseIccOperator()Z
    .locals 2

    .prologue
    .line 160
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, iccOperatorNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIccOperatorEmpty()Z
    .locals 2

    .prologue
    .line 166
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, iccOperatorNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const-string v5, "network_type_list_gsm_umts"

    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 47
    new-instance v2, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;-><init>(Lcom/android/phone/PreferedNetworkTypeListPreference;Lcom/android/phone/PreferedNetworkTypeListPreference$1;)V

    iput-object v2, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mHandler:Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    .line 50
    const v2, 0x7f050012

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferedNetworkTypeListPreference;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 53
    iget-object v2, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 54
    .local v0, phoneType:I
    invoke-virtual {p0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, pref:Landroid/preference/Preference;
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 57
    const-string v2, "network_type_list_gsm_umts"

    invoke-virtual {p0, v5}, Lcom/android/phone/PreferedNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_0
    :goto_0
    sget-boolean v2, Landroid/os/Build;->IS_MIONE:Z

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "2"

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferedNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 67
    .restart local v1       #pref:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_1
    sget-boolean v2, Landroid/os/Build;->IS_MIONE_CT_CUSTOMIZATION:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->isChineseIccOperator()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->isIccOperatorEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    :cond_3
    const-string v2, "network_type_list_gsm_umts"

    invoke-virtual {p0, v5}, Lcom/android/phone/PreferedNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 76
    .restart local v1       #pref:Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PreferedNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    .line 80
    const-string v2, "PreferedNetworkTypeListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 59
    .restart local v1       #pref:Landroid/preference/Preference;
    :cond_5
    if-ne v0, v4, :cond_0

    .line 60
    const-string v2, "network_type_list_cdma"

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferedNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, networkType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 124
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c01fd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0289

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/phone/PreferedNetworkTypeListPreference$3;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/PreferedNetworkTypeListPreference$3;-><init>(Lcom/android/phone/PreferedNetworkTypeListPreference;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/phone/PreferedNetworkTypeListPreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/PreferedNetworkTypeListPreference$2;-><init>(Lcom/android/phone/PreferedNetworkTypeListPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/PreferedNetworkTypeListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferedNetworkTypeListPreference$1;-><init>(Lcom/android/phone/PreferedNetworkTypeListPreference;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 145
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 143
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/PreferedNetworkTypeListPreference;->handleClick(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PreferedNetworkTypeListPreference;->mHandler:Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PreferedNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 117
    return-void
.end method
