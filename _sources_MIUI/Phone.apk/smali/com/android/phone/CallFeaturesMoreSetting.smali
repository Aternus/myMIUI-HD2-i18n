.class public Lcom/android/phone/CallFeaturesMoreSetting;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CallFeaturesMoreSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonCrystalTalk:Landroid/preference/ListPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field mChangingVMorFwdDueToProviderChange:Z

.field mCurrentDialogId:I

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field mVMChangeCompletedSuccesfully:Z

.field mVMOrFwdSetError:I

.field mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallFeaturesMoreSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallFeaturesMoreSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 211
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallFeaturesMoreSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 297
    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 303
    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 310
    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 315
    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 320
    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 325
    iput v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mCurrentDialogId:I

    .line 331
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProviderSettingsForced:Z

    .line 337
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 343
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMChangeCompletedSuccesfully:Z

    .line 349
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mFwdChangesRequireRollback:Z

    .line 355
    iput v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMOrFwdSetError:I

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProvidersData:Ljava/util/Map;

    .line 391
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mReadingSettingsForDefaultProvider:Z

    .line 809
    new-instance v0, Lcom/android/phone/CallFeaturesMoreSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesMoreSetting$1;-><init>(Lcom/android/phone/CallFeaturesMoreSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 978
    new-instance v0, Lcom/android/phone/CallFeaturesMoreSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesMoreSetting$2;-><init>(Lcom/android/phone/CallFeaturesMoreSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1038
    new-instance v0, Lcom/android/phone/CallFeaturesMoreSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesMoreSetting$3;-><init>(Lcom/android/phone/CallFeaturesMoreSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mRevertOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallFeaturesMoreSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesMoreSetting;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallFeaturesMoreSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallFeaturesMoreSetting;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesMoreSetting;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesMoreSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesMoreSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1076
    iget-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1077
    const/4 v2, 0x1

    .line 1089
    .local v2, result:Z
    :cond_0
    :goto_0
    return v2

    .line 1081
    .end local v2           #result:Z
    :cond_1
    const/4 v2, 0x1

    .line 1082
    .restart local v2       #result:Z
    iget-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1083
    .local v1, reason:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1084
    const/4 v2, 0x0

    .line 1085
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1095
    const/4 v3, 0x0

    .line 1096
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1098
    .end local p0
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1099
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1100
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/AsyncResult;

    iget-object v1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1101
    .local v1, exception:Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1102
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1103
    if-nez v3, :cond_1

    .line 1104
    const-string v3, ""

    .line 1109
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1117
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, msg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1119
    const-string v1, ""

    .line 1123
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #msg:Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 1121
    goto :goto_0

    .line 1123
    .end local v0           #msg:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createSipCallSettings()V
    .locals 3

    .prologue
    .line 1459
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 1461
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 1462
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1463
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1466
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1471
    :goto_0
    return-void

    .line 1468
    :cond_0
    const-string v0, "sip_settings_category_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 1469
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_0

    .line 1830
    :goto_0
    return-void

    .line 1826
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 755
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesMoreSetting;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    return-void

    .line 756
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1833
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1834
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 4

    .prologue
    .line 1476
    const-string v0, "sip_call_options_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 1478
    const-string v1, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1480
    const-string v2, "sip_settings_category_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 1482
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1483
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v0, v1

    .line 1487
    :goto_0
    return-object v0

    .line 1486
    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 5

    .prologue
    .line 1130
    const/4 v2, 0x1

    .line 1131
    .local v2, success:Z
    const/4 v1, 0x0

    .line 1132
    .local v1, fwdFailure:Z
    const-string v0, ""

    .line 1133
    .local v0, exceptionMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1134
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_0

    .line 1136
    const/4 v2, 0x0

    .line 1137
    const/4 v1, 0x1

    .line 1140
    :cond_0
    if-eqz v2, :cond_1

    .line 1141
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1142
    if-eqz v0, :cond_1

    .line 1143
    const/4 v2, 0x0

    .line 1146
    :cond_1
    if-eqz v2, :cond_2

    .line 1148
    const/16 v3, 0x258

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesMoreSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1149
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->updateVoiceNumberField()V

    .line 1159
    :goto_0
    return-void

    .line 1151
    :cond_2
    if-eqz v1, :cond_3

    .line 1152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change FW failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesMoreSetting;->log(Ljava/lang/String;)V

    .line 1153
    const/16 v3, 0x191

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesMoreSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0

    .line 1155
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change VM failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesMoreSetting;->log(Ljava/lang/String;)V

    .line 1156
    const/16 v3, 0x190

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesMoreSetting;->handleVMOrFwdSetError(I)V

    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 1575
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1576
    .local v0, option:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 1577
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1579
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1580
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v4, "preferred_tty_mode"

    .line 1546
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1547
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1553
    if-eq v0, v1, :cond_0

    .line 1554
    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 1566
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1567
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->updatePreferredTtyModeSummary(I)V

    .line 1568
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1569
    const-string v2, "ttyPreferredMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1570
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->sendBroadcast(Landroid/content/Intent;)V

    .line 1572
    :cond_0
    return-void

    .line 1559
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 1174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1175
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesMoreSetting;->showVMDialog(I)V

    .line 1176
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesMoreSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesMoreSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;)V

    .line 721
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .parameter "msgId"

    .prologue
    const/4 v1, 0x0

    .line 1162
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1163
    iput p1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMOrFwdSetError:I

    .line 1164
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1165
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->switchToPreviousVoicemailProvider()V

    .line 1171
    :goto_0
    return-void

    .line 1168
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1169
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesMoreSetting;->showVMDialog(I)V

    .line 1170
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .parameter "infos"
    .parameter "reason"

    .prologue
    .line 902
    const/4 v4, 0x0

    .line 903
    .local v4, result:Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 904
    move-object v0, p1

    .local v0, arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 905
    .local v2, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 906
    move-object v4, v2

    .line 911
    .end local v0           #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1           #i$:I
    .end local v2           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3           #len$:I
    :cond_0
    return-object v4

    .line 904
    .restart local v0       #arr$:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1       #i$:I
    .restart local v2       #info:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initVoiceMailProviders()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    const-string v2, "com.android.phone.ProviderToIgnore"

    const-string v13, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    const-string v12, ""

    .line 1639
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vm_numbers"

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 1644
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1646
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1647
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1650
    :goto_0
    if-eqz v0, :cond_0

    .line 1651
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    .line 1655
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1658
    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1659
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProvidersData:Ljava/util/Map;

    const-string v3, ""

    new-instance v3, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;

    invoke-direct {v3, p0, v2, v4}, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesMoreSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1662
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1663
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1664
    const-string v4, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1665
    invoke-virtual {v3, v0, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1666
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v5, v11

    move v6, v0

    .line 1670
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 1671
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1672
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1673
    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesMoreSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v8

    .line 1675
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1677
    add-int/lit8 v0, v6, -0x1

    .line 1670
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v6, v0

    goto :goto_2

    .line 1680
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1681
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1682
    const-string v10, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1683
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1685
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProvidersData:Ljava/util/Map;

    new-instance v10, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;

    invoke-direct {v10, p0, v0, v9}, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesMoreSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v7, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    goto :goto_3

    .line 1693
    :cond_2
    new-array v1, v6, [Ljava/lang/String;

    .line 1694
    new-array v3, v6, [Ljava/lang/String;

    .line 1695
    aput-object v2, v1, v11

    .line 1696
    const-string v0, ""

    aput-object v12, v3, v11

    .line 1697
    const/4 v0, 0x1

    move v2, v11

    move v5, v0

    .line 1698
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1699
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v6

    .line 1700
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v5

    .line 1698
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move v5, v0

    goto :goto_4

    .line 1703
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;->name:Ljava/lang/String;

    aput-object v0, v1, v5

    .line 1704
    aput-object v6, v3, v5

    .line 1705
    add-int/lit8 v0, v5, 0x1

    goto :goto_5

    .line 1708
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1709
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1711
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1712
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 1713
    return-void

    :cond_5
    move-object v0, v4

    goto/16 :goto_0

    :cond_6
    move-object v1, v4

    goto/16 :goto_1
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1540
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .parameter "oldInfo"
    .parameter "newInfo"

    .prologue
    .line 916
    const/4 v0, 0x1

    .line 917
    .local v0, result:Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 920
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 921
    const/4 v0, 0x0

    .line 924
    :cond_0
    return v0
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1784
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1786
    if-nez v0, :cond_0

    move-object v0, v3

    .line 1815
    :goto_0
    return-object v0

    .line 1791
    :cond_0
    sget-object v1, Lcom/android/phone/CallFeaturesMoreSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1793
    iget-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1794
    if-lez v3, :cond_1

    .line 1795
    new-array v1, v3, [Lcom/android/internal/telephony/CallForwardInfo;

    move v3, v9

    .line 1796
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1797
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1798
    new-instance v5, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v5}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v5, v1, v3

    .line 1799
    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1801
    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Reason"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1804
    aget-object v5, v1, v3

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1805
    aget-object v5, v1, v3

    const/16 v6, 0x91

    iput v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 1806
    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#Number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1808
    aget-object v5, v1, v3

    iget-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "#Time"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x14

    invoke-interface {v6, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 1796
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1813
    :cond_1
    new-instance v2, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesMoreSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    move-object v0, v2

    .line 1815
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1598
    const-string v0, "CallFeaturesMoreSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .parameter "ai"

    .prologue
    .line 1716
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const-string v6, "#Length"

    .line 1746
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_1

    .line 1773
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesMoreSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;

    move-result-object v0

    .line 1750
    invoke-virtual {p2, v0}, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1758
    iget-object v2, p2, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1759
    sget-object v3, Lcom/android/phone/CallFeaturesMoreSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v2, v3, :cond_2

    .line 1760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#Length"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v4, v2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v3, v5

    .line 1761
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1763
    aget-object v5, v2, v3

    .line 1764
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1765
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Reason"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1767
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "#Time"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1761
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1770
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1772
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 928
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 929
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 930
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;)V
    .locals 6
    .parameter "key"
    .parameter "newSettings"

    .prologue
    const/4 v5, 0x0

    const-string v3, ""

    .line 766
    iget-object v1, p2, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewVMNumber:Ljava/lang/String;

    .line 768
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 769
    const-string v1, ""

    iput-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewVMNumber:Ljava/lang/String;

    .line 772
    :cond_0
    iget-object v1, p2, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 778
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 780
    sget-object v1, Lcom/android/phone/CallFeaturesMoreSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 784
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/CallFeaturesMoreSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v1, v2, :cond_2

    .line 785
    const/16 v1, 0x2bc

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->showVMDialog(I)V

    .line 807
    :goto_0
    return-void

    .line 789
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesMoreSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;)V

    .line 790
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMChangeCompletedSuccesfully:Z

    .line 791
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mFwdChangesRequireRollback:Z

    .line 792
    iput v5, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMOrFwdSetError:I

    .line 793
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 794
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mReadingSettingsForDefaultProvider:Z

    .line 797
    sget-object v1, Lcom/android/phone/CallFeaturesMoreSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 798
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/phone/CallFeaturesMoreSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 799
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 800
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallFeaturesMoreSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f6

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 803
    :cond_3
    const/16 v1, 0x642

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 805
    .end local v0           #i:I
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 935
    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 936
    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 937
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesMoreSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_3

    .line 938
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->resetForwardingChangeState()V

    .line 939
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 940
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v7, v0, v8

    .line 942
    .local v7, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/phone/CallFeaturesMoreSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v6

    .line 945
    .local v6, doUpdate:Z
    if-eqz v6, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 949
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v7, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    :goto_1
    iget v2, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v7, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v7, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v9, 0x1f5

    iget v10, v7, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v5, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 939
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v1, v11

    .line 949
    goto :goto_1

    .line 960
    .end local v6           #doUpdate:Z
    .end local v7           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    const/16 v0, 0x641

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->showDialogIfForeground(I)V

    .line 965
    .end local v8           #i:I
    :goto_2
    return-void

    .line 963
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/phone/CallFeaturesMoreSetting;->showDialog(I)V

    .line 751
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .parameter "msgStatus"

    .prologue
    .line 1328
    sparse-switch p1, :sswitch_data_0

    .line 1350
    :goto_0
    return-void

    .line 1332
    :sswitch_0
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1335
    :sswitch_1
    const/16 v0, 0x5dd

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1338
    :sswitch_2
    const/16 v0, 0x5de

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1341
    :sswitch_3
    const/16 v0, 0x578

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1344
    :sswitch_4
    const/16 v0, 0x640

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1328
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .parameter "preference"

    .prologue
    .line 1728
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 1729
    .local v6, adapter:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1730
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1731
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1736
    :cond_0
    return-void

    .line 1729
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 549
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMChangeCompletedSuccesfully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_5

    .line 551
    :cond_0
    const/16 v0, 0x643

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->showDialogIfForeground(I)V

    .line 552
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 554
    .local v9, prevSettings:Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMChangeCompletedSuccesfully:Z

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, v9, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewVMNumber:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 562
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_6

    .line 564
    if-nez v9, :cond_3

    const/4 v0, 0x0

    move-object v8, v0

    .line 566
    .local v8, prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    :goto_0
    if-eqz v8, :cond_6

    .line 567
    iget-object v11, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 569
    .local v11, results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->resetForwardingChangeState()V

    .line 570
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v8

    if-ge v7, v0, :cond_6

    .line 571
    aget-object v6, v8, v7

    .line 575
    .local v6, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 576
    .local v10, result:Landroid/os/AsyncResult;
    if-eqz v10, :cond_2

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    :goto_2
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v12, 0x1f5

    invoke-virtual {v5, v12, v7, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 570
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 564
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_3
    iget-object v0, v9, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    move-object v8, v0

    goto :goto_0

    .restart local v6       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v7       #i:I
    .restart local v8       #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v10       #result:Landroid/os/AsyncResult;
    .restart local v11       #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_4
    move v1, v13

    .line 578
    goto :goto_2

    .line 593
    .end local v6           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7           #i:I
    .end local v8           #prevFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9           #prevSettings:Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;
    .end local v10           #result:Landroid/os/AsyncResult;
    .end local v11           #results:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->onRevertDone()V

    .line 596
    :cond_6
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1583
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1584
    packed-switch p1, :pswitch_data_0

    .line 1592
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1593
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1595
    :goto_0
    return-void

    .line 1589
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1607
    .line 1608
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;

    .line 1614
    if-nez v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v1, 0x7f0c006d

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1616
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1617
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1618
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 1627
    :goto_0
    return-void

    .line 1620
    :cond_0
    iget-object v1, v0, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 1621
    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1622
    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c018a

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1624
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1625
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 3

    .prologue
    .line 1183
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v1, :cond_0

    .line 1195
    :goto_0
    return-void

    .line 1187
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1188
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1189
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1191
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1192
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mOldVmNumber:Ljava/lang/String;

    move-object v0, v1

    .line 1194
    .local v0, summary:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1192
    .end local v0           #summary:Ljava/lang/String;
    :cond_2
    const v1, 0x7f0c0188

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 11
    .parameter "ar"
    .parameter "idx"

    .prologue
    const/16 v7, 0x642

    const/4 v10, 0x0

    .line 823
    const/4 v3, 0x0

    .line 824
    .local v3, error:Ljava/lang/Throwable;
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    .line 827
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 829
    :cond_0
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 832
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v3           #error:Ljava/lang/Throwable;
    check-cast v3, Ljava/lang/Throwable;

    .line 836
    .restart local v3       #error:Ljava/lang/Throwable;
    :cond_1
    iget-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v6, :cond_3

    .line 899
    :cond_2
    :goto_0
    return-void

    .line 842
    :cond_3
    if-eqz v3, :cond_4

    .line 844
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 845
    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesMoreSetting;->dismissDialogSafely(I)V

    .line 846
    const/16 v6, 0x192

    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesMoreSetting;->showVMDialog(I)V

    goto :goto_0

    .line 851
    :cond_4
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v6

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v0

    .line 852
    .local v1, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v4, 0x0

    .line 853
    .local v4, fi:Lcom/android/internal/telephony/CallForwardInfo;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_5

    .line 854
    aget-object v6, v1, v5

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    .line 855
    aget-object v4, v1, v5

    .line 859
    :cond_5
    if-nez v4, :cond_a

    .line 864
    new-instance v4, Lcom/android/internal/telephony/CallForwardInfo;

    .end local v4           #fi:Lcom/android/internal/telephony/CallForwardInfo;
    invoke-direct {v4}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 865
    .restart local v4       #fi:Lcom/android/internal/telephony/CallForwardInfo;
    iput v10, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 866
    sget-object v6, Lcom/android/phone/CallFeaturesMoreSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v6, v6, p2

    iput v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 867
    const/4 v6, 0x1

    iput v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 876
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v4, v6, p2

    .line 879
    const/4 v2, 0x1

    .line 880
    .local v2, done:Z
    const/4 v5, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v6, v6

    if-ge v5, v6, :cond_7

    .line 881
    iget-object v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v6, v6, v5

    if-nez v6, :cond_c

    .line 882
    const/4 v2, 0x0

    .line 886
    :cond_7
    if-eqz v2, :cond_2

    .line 888
    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesMoreSetting;->dismissDialogSafely(I)V

    .line 889
    iget-boolean v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v6, :cond_8

    .line 890
    const-string v6, ""

    new-instance v7, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesMoreSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v6, v7}, Lcom/android/phone/CallFeaturesMoreSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;)V

    .line 893
    iput-boolean v10, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mReadingSettingsForDefaultProvider:Z

    .line 895
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_0

    .line 853
    .end local v2           #done:Z
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 870
    :cond_a
    iget-object v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 871
    :cond_b
    iput v10, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_2

    .line 880
    .restart local v2       #done:Z
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 21
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 615
    const/4 v5, 0x2

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 616
    const/4 v13, 0x0

    .line 620
    .local v13, failure:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProviderSettingsForced:Z

    move/from16 v17, v0

    .line 621
    .local v17, isVMProviderSettingsForced:Z
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProviderSettingsForced:Z

    .line 623
    const/16 v20, 0x0

    .line 624
    .local v20, vmNum:Ljava/lang/String;
    const/4 v5, -0x1

    move/from16 v0, p2

    move v1, v5

    if-eq v0, v1, :cond_2

    .line 626
    const/4 v13, 0x1

    .line 654
    :cond_0
    :goto_0
    if-eqz v13, :cond_7

    .line 656
    if-eqz v17, :cond_1

    .line 657
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesMoreSetting;->switchToPreviousVoicemailProvider()V

    .line 708
    .end local v13           #failure:Z
    .end local v17           #isVMProviderSettingsForced:Z
    .end local v20           #vmNum:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 628
    .restart local v13       #failure:Z
    .restart local v17       #isVMProviderSettingsForced:Z
    .restart local v20       #vmNum:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    .line 630
    const/4 v13, 0x1

    goto :goto_0

    .line 632
    :cond_3
    const-string v5, "com.android.phone.Signout"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 634
    if-eqz v17, :cond_4

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesMoreSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 638
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v19

    .line 640
    .local v19, victim:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    const-string v5, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v16, i:Landroid/content/Intent;
    const-string v5, "com.android.phone.ProviderToIgnore"

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const/high16 v5, 0x400

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 643
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 647
    .end local v16           #i:Landroid/content/Intent;
    .end local v19           #victim:Ljava/lang/String;
    :cond_5
    const-string v5, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 648
    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 650
    :cond_6
    const/4 v13, 0x1

    goto :goto_0

    .line 663
    :cond_7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallFeaturesMoreSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 664
    const-string v5, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 668
    .local v14, fwdNum:Ljava/lang/String;
    const-string v5, "com.android.phone.ForwardingNumberTime"

    const/16 v6, 0x14

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 672
    .local v15, fwdNumTime:I
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object v3, v14

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesMoreSetting;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallFeaturesMoreSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_1

    .line 677
    .end local v13           #failure:Z
    .end local v14           #fwdNum:Ljava/lang/String;
    .end local v15           #fwdNumTime:I
    .end local v17           #isVMProviderSettingsForced:Z
    .end local v20           #vmNum:Ljava/lang/String;
    :cond_8
    const/4 v5, -0x1

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 682
    const/4 v11, 0x0

    .line 683
    .local v11, cursor:Landroid/database/Cursor;
    const-string v18, ""

    .line 685
    .local v18, result:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/android/phone/CallFeaturesMoreSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 687
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_a

    .line 696
    :cond_9
    if-eqz v11, :cond_1

    .line 697
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 691
    :cond_a
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .line 696
    if-eqz v11, :cond_b

    .line 697
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_b
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 703
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 692
    :catch_0
    move-exception v5

    move-object v12, v5

    .line 693
    .local v12, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v5, "CallFeaturesMoreSetting"

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    if-eqz v11, :cond_1

    .line 697
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 696
    .end local v12           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_c

    .line 697
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v5

    .line 701
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v1, 0x5de

    .line 1292
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1293
    packed-switch p2, :pswitch_data_0

    .line 1321
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1322
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->finish()V

    .line 1324
    :cond_1
    :goto_1
    return-void

    .line 1299
    :pswitch_1
    iget v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1302
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1307
    :pswitch_2
    iget v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_2

    .line 1310
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1312
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->finish()V

    goto :goto_1

    .line 1293
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, ""

    .line 1358
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1361
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1363
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->addPreferencesFromResource(I)V

    .line 1365
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1368
    const-string v0, "button_voicemail_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1369
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v4, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1371
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1372
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0c012e

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 1375
    :cond_0
    const-string v0, "button_dtmf_settings"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 1376
    const-string v0, "button_auto_retry_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 1377
    const-string v0, "button_hac_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 1378
    const-string v0, "button_tty_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 1379
    const-string v0, "button_voicemail_provider_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1380
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 1381
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1382
    const-string v0, "button_voicemail_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1384
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->initVoiceMailProviders()V

    .line 1387
    :cond_1
    const-string v0, "button_other_settings_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 1388
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 1389
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1390
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1397
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 1398
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1399
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1406
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 1407
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1409
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1416
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 1417
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1418
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1430
    :cond_5
    :goto_3
    if-nez p1, :cond_6

    .line 1431
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v1, :cond_6

    .line 1433
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v4, :cond_c

    .line 1434
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1441
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->updateVoiceNumberField()V

    .line 1442
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProviderSettingsForced:Z

    .line 1444
    const-string v1, "button_crystal_talk_settings"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    .line 1445
    sget-boolean v1, Landroid/os/Build;->IS_MILESTONE:Z

    if-nez v1, :cond_7

    sget-boolean v1, Landroid/os/Build;->IS_DEFY:Z

    if-eqz v1, :cond_d

    .line 1446
    :cond_7
    new-instance v0, Lcom/android/phone/VoiceQualityUtility;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 1447
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/phone/VoiceQualityUtility;->getVoiceQualitySetting()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1448
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1454
    :goto_5
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->createSipCallSettings()V

    .line 1455
    return-void

    .line 1392
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1393
    iput-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_0

    .line 1401
    :cond_9
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1402
    iput-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 1411
    :cond_a
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1412
    iput-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_2

    .line 1420
    :cond_b
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1421
    iput-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto :goto_3

    .line 1436
    :cond_c
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v2, ""

    invoke-virtual {p0, v1, v5}, Lcom/android/phone/CallFeaturesMoreSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1437
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v2, ""

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 1450
    :cond_d
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1451
    iput-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    goto :goto_5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x643

    const/16 v8, 0x641

    const/4 v7, 0x0

    const v6, 0x7f0c0064

    .line 1215
    const/16 v5, 0x5dc

    if-eq p1, v5, :cond_0

    const/16 v5, 0x578

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5dd

    if-eq p1, v5, :cond_0

    const/16 v5, 0x5de

    if-eq p1, v5, :cond_0

    const/16 v5, 0x640

    if-ne p1, v5, :cond_1

    .line 1219
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1222
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0c005c

    .line 1223
    .local v4, titleId:I
    sparse-switch p1, :sswitch_data_0

    .line 1254
    const v3, 0x7f0c0061

    .line 1257
    .local v3, msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1261
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesMoreSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1262
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesMoreSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1263
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1264
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1265
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1268
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    move-object v5, v1

    .line 1284
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :goto_1
    return-object v5

    .line 1225
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    .restart local v4       #titleId:I
    :sswitch_0
    const v3, 0x7f0c0068

    .line 1226
    .restart local v3       #msgId:I
    const v4, 0x7f0c003a

    .line 1228
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1233
    .end local v3           #msgId:I
    :sswitch_1
    const v3, 0x7f0c006c

    .line 1234
    .restart local v3       #msgId:I
    const v4, 0x7f0c003a

    .line 1236
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1239
    .end local v3           #msgId:I
    :sswitch_2
    const v3, 0x7f0c0069

    .line 1241
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1244
    .end local v3           #msgId:I
    :sswitch_3
    const v3, 0x7f0c006a

    .line 1246
    .restart local v3       #msgId:I
    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1249
    .end local v3           #msgId:I
    :sswitch_4
    const v3, 0x7f0c006b

    .line 1250
    .restart local v3       #msgId:I
    const v5, 0x7f0c0183

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1251
    const v5, 0x7f0c0184

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1271
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #msgId:I
    .end local v4           #titleId:I
    :cond_1
    if-eq p1, v8, :cond_2

    const/16 v5, 0x642

    if-eq p1, v5, :cond_2

    if-ne p1, v9, :cond_5

    .line 1273
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1274
    .local v1, dialog:Landroid/app/ProgressDialog;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1275
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1276
    if-ne p1, v8, :cond_3

    const v5, 0x7f0c005e

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesMoreSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v5, v1

    .line 1280
    goto :goto_1

    .line 1276
    :cond_3
    if-ne p1, v9, :cond_4

    const v5, 0x7f0c005f

    goto :goto_2

    :cond_4
    const v5, 0x7f0c005d

    goto :goto_2

    .line 1284
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_5
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v5

    goto :goto_1

    .line 1223
    nop

    :sswitch_data_0
    .sparse-switch
        0x578 -> :sswitch_1
        0x5dc -> :sswitch_2
        0x5dd -> :sswitch_3
        0x5de -> :sswitch_4
        0x640 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 494
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    instance-of v1, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_0

    .line 498
    move-object v0, p1

    .line 500
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v0, v1, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 512
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v1, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->updateVoiceNumberField()V

    move-object v1, v2

    .line 529
    :goto_0
    return-object v1

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, vmDisplay:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 524
    goto :goto_0

    .line 529
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c003b

    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesMoreSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 381
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForeground:Z

    .line 383
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v9, 0x1

    .line 437
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_1

    .line 438
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 439
    .local v2, index:I
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dtmf_tone_type"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v2           #index:I
    :cond_0
    :goto_0
    move v7, v9

    .line 487
    :goto_1
    return v7

    .line 441
    .restart local p2
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_2

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesMoreSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_5

    .line 444
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, currentProviderKey:Ljava/lang/String;
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 448
    .local v3, newProviderKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    .line 450
    goto :goto_1

    .line 452
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesMoreSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 454
    iput-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 456
    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesMoreSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;

    move-result-object v4

    .line 465
    .local v4, newProviderSettings:Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;
    if-nez v4, :cond_4

    .line 468
    iput-boolean v9, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMProviderSettingsForced:Z

    .line 469
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesMoreSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 473
    :cond_4
    iput-boolean v9, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 474
    invoke-direct {p0, v3, v4}, Lcom/android/phone/CallFeaturesMoreSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;)V

    goto :goto_0

    .line 476
    .end local v1           #currentProviderKey:Ljava/lang/String;
    .end local v3           #newProviderKey:Ljava/lang/String;
    .end local v4           #newProviderSettings:Lcom/android/phone/CallFeaturesMoreSetting$VoiceMailProviderSettings;
    :cond_5
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_6

    .line 477
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonCrystalTalk:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .line 478
    .local v6, val:I
    new-instance v5, Lcom/android/phone/VoiceQualityUtility;

    invoke-direct {v5, p0}, Lcom/android/phone/VoiceQualityUtility;-><init>(Landroid/content/Context;)V

    .line 480
    .local v5, util:Lcom/android/phone/VoiceQualityUtility;
    invoke-virtual {v5, v6}, Lcom/android/phone/VoiceQualityUtility;->updateVoiceQualityParameter(I)V

    .line 481
    invoke-virtual {v5, v6}, Lcom/android/phone/VoiceQualityUtility;->setVoiceQualitySetting(I)V

    goto :goto_0

    .line 482
    .end local v5           #util:Lcom/android/phone/VoiceQualityUtility;
    .end local v6           #val:I
    .restart local p2
    :cond_6
    iget-object v7, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_0

    .line 483
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesMoreSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 400
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v1, :cond_0

    move v1, v5

    .line 425
    :goto_0
    return v1

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_1

    move v1, v5

    .line 403
    goto :goto_0

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_2

    move v1, v5

    .line 405
    goto :goto_0

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 407
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_auto_retry"

    iget-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v5

    .line 410
    goto :goto_0

    :cond_3
    move v3, v6

    .line 407
    goto :goto_1

    .line 411
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 412
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v5

    .line 414
    .local v0, hac:I
    :goto_2
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hearing_aid"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "%s=%s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "HACSetting"

    aput-object v4, v3, v6

    if-eqz v0, :cond_6

    const-string v4, "ON"

    :goto_3
    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    move v1, v5

    .line 419
    goto :goto_0

    .end local v0           #hac:I
    :cond_5
    move v0, v6

    .line 412
    goto :goto_2

    .line 418
    .restart local v0       #hac:I
    :cond_6
    const-string v4, "OFF"

    goto :goto_3

    .line 420
    .end local v0           #hac:I
    :cond_7
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_8

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 422
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/CallFeaturesMoreSetting;->startActivityForResult(Landroid/content/Intent;I)V

    move v1, v5

    .line 423
    goto :goto_0

    :cond_8
    move v1, v6

    .line 425
    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 1208
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1209
    iput p1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mCurrentDialogId:I

    .line 1210
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "button_icc_related"

    .line 1493
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 1494
    iput-boolean v6, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mForeground:Z

    .line 1496
    const-string v0, "button_icc_related"

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1497
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1498
    const-string v0, "button_icc_related"

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1500
    const-string v0, "sip_settings_category_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1501
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1502
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    move v3, v5

    .line 1503
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1504
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 1505
    if-eq v4, v0, :cond_0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1503
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_2

    .line 1510
    const-string v0, "button_icc_related"

    invoke-virtual {p0, v7}, Lcom/android/phone/CallFeaturesMoreSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1513
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 1514
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone_type"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1516
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1519
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 1520
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_auto_retry"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1522
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    move v0, v6

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1525
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 1526
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_aid"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1527
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    move v0, v6

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1530
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_6

    .line 1531
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1534
    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1535
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->updatePreferredTtyModeSummary(I)V

    .line 1537
    :cond_6
    return-void

    :cond_7
    move v0, v5

    .line 1522
    goto :goto_1

    :cond_8
    move v0, v5

    .line 1527
    goto :goto_2
.end method

.method onRevertDone()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 602
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesMoreSetting;->updateVoiceNumberField()V

    .line 603
    iget v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_0

    .line 604
    iget v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesMoreSetting;->showVMDialog(I)V

    .line 605
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mVMOrFwdSetError:I

    .line 607
    :cond_0
    return-void
.end method

.method setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesMoreSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 973
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 536
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 538
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
