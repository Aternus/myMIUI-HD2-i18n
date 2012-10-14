.class public Lcom/android/inputmethod/latin/LatinIMESettings;
.super Landroid/preference/PreferenceActivity;
.source "LatinIMESettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final PREDICTION_SETTINGS_KEY:Ljava/lang/String; = "prediction_settings"

.field static final PREF_LONG_PRESS_DELAY:Ljava/lang/String; = "long_press_delay"

.field static final PREF_SETTINGS_KEY:Ljava/lang/String; = "settings_key"

.field private static final QUICK_FIXES_KEY:Ljava/lang/String; = "quick_fixes"

.field private static final TAG:Ljava/lang/String; = "LatinIMESettings"

.field private static final VOICE_INPUT_CONFIRM_DIALOG:I = 0x0

.field private static final VOICE_SETTINGS_KEY:Ljava/lang/String; = "voice_mode"


# instance fields
.field private mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

.field private mLongPressDelay:I

.field private mLongPressDelayPreference:Lcom/android/inputmethod/latin/DialogSeekBarPreference;

.field private mOkClicked:Z

.field private mQuickFixes:Landroid/preference/CheckBoxPreference;

.field private mSettingsKeyPreference:Landroid/preference/ListPreference;

.field private mVoiceModeOff:Ljava/lang/String;

.field private mVoiceOn:Z

.field private mVoicePreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mOkClicked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/LatinIMESettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/LatinIMESettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/LatinIMESettings;)Lcom/android/inputmethod/voice/VoiceInputLogger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/inputmethod/latin/LatinIMESettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mOkClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/LatinIMESettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->updateVoicePreference()V

    return-void
.end method

.method private showVoiceConfirmation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mOkClicked:Z

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIMESettings;->showDialog(I)V

    .line 141
    return-void
.end method

.method private updateLongPressDelaySummary()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLongPressDelayPreference:Lcom/android/inputmethod/latin/DialogSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLongPressDelay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/DialogSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method private updateSettingsKeySummary()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method private updateVoiceModeSummary()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method private updateVoicePreference()V
    .locals 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 214
    .local v0, isChecked:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputSettingEnabled()V

    .line 219
    :goto_1
    return-void

    .line 213
    .end local v0           #isChecked:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 217
    .restart local v0       #isChecked:Z
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputSettingDisabled()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const-string v2, "voice_mode"

    const-string v3, "long_press_delay"

    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f050019

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIMESettings;->addPreferencesFromResource(I)V

    .line 70
    const-string v1, "quick_fixes"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v1, "voice_mode"

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 72
    const-string v1, "settings_key"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    .line 73
    const-string v1, "long_press_delay"

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/DialogSeekBarPreference;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLongPressDelayPreference:Lcom/android/inputmethod/latin/DialogSeekBarPreference;

    .line 74
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 77
    const v1, 0x7f0c0082

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    .line 78
    const-string v1, "voice_mode"

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceOn:Z

    .line 79
    const-string v1, "long_press_delay"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLongPressDelay:I

    .line 81
    invoke-static {p0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    .line 82
    return-void

    .line 78
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .parameter "id"

    .prologue
    const v12, 0x7f0c006f

    const v11, 0x7f0c006d

    const-string v10, "\n\n"

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 198
    const-string v7, "LatinIMESettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown dialog "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v7, 0x0

    :goto_0
    return-object v7

    .line 153
    :pswitch_0
    new-instance v2, Lcom/android/inputmethod/latin/LatinIMESettings$1;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/LatinIMESettings$1;-><init>(Lcom/android/inputmethod/latin/LatinIMESettings;)V

    .line 165
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c006b

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 173
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "latin_ime_voice_input_supported_locales"

    const-string v9, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    invoke-static {v7, v8, v9}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, supportedLocalesString:Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/LatinIME;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 179
    .local v6, voiceInputSupportedLocales:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 182
    .local v3, localeSupported:Z
    if-eqz v3, :cond_0

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, message:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 194
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 195
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v7}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogShown()V

    move-object v7, v1

    .line 196
    goto :goto_0

    .line 187
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v4           #message:Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0c006c

    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/android/inputmethod/latin/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/android/inputmethod/latin/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    .restart local v4       #message:Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 106
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 107
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogDismissed()V

    .line 205
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1}, Landroid/text/AutoText;->getSize(Landroid/view/View;)I

    move-result v0

    .line 88
    .local v0, autoTextSize:I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 89
    const-string v1, "prediction_settings"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    :cond_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->updateSettingsKeySummary()V

    .line 99
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->updateLongPressDelaySummary()V

    .line 100
    return-void

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->updateVoiceModeSummary()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    const-string v2, "voice_mode"

    .line 110
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 112
    const-string v0, "voice_mode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceOn:Z

    if-nez v0, :cond_0

    .line 113
    const-string v0, "voice_mode"

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->showVoiceConfirmation()V

    .line 118
    :cond_0
    const-string v0, "voice_mode"

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceOn:Z

    .line 119
    const-string v0, "long_press_delay"

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings;->mLongPressDelay:I

    .line 121
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->updateVoiceModeSummary()V

    .line 122
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->updateSettingsKeySummary()V

    .line 123
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMESettings;->updateLongPressDelaySummary()V

    .line 124
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
