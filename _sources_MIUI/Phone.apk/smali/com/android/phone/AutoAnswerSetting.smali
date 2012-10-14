.class public Lcom/android/phone/AutoAnswerSetting;
.super Landroid/preference/PreferenceActivity;
.source "AutoAnswerSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createScenarios()V
    .locals 9

    .prologue
    const-string v8, "pref_auto_answer_scenario"

    .line 52
    invoke-virtual {p0}, Lcom/android/phone/AutoAnswerSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "pref_auto_answer_scenario"

    const/4 v7, 0x0

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 54
    .local v3, scenario:I
    const-string v6, "pref_auto_answer_scenario"

    invoke-virtual {p0, v8}, Lcom/android/phone/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreferenceCategory;

    .line 55
    .local v5, scenarios:Landroid/preference/CheckBoxPreferenceCategory;
    invoke-virtual {p0}, Lcom/android/phone/AutoAnswerSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, scenarioStrings:[Ljava/lang/String;
    new-instance v1, Lcom/android/phone/AutoAnswerSetting$2;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/AutoAnswerSetting$2;-><init>(Lcom/android/phone/AutoAnswerSetting;[Ljava/lang/String;)V

    .line 69
    .local v1, listener:Landroid/preference/Preference$OnPreferenceClickListener;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 70
    new-instance v2, Landroid/preference/RadioButtonPreference;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Landroid/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    .local v2, pref:Landroid/preference/RadioButtonPreference;
    aget-object v6, v4, v0

    invoke-virtual {v2, v6}, Landroid/preference/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v2, v1}, Landroid/preference/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 73
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v2           #pref:Landroid/preference/RadioButtonPreference;
    :cond_0
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreferenceCategory;->setCheckedPosition(I)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/phone/AutoAnswerSetting;->addPreferencesFromResource(I)V

    .line 36
    invoke-direct {p0}, Lcom/android/phone/AutoAnswerSetting;->createScenarios()V

    .line 37
    new-instance v0, Lcom/android/phone/AutoAnswerSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AutoAnswerSetting$1;-><init>(Lcom/android/phone/AutoAnswerSetting;)V

    .line 46
    .local v0, listener:Landroid/preference/Preference$OnPreferenceChangeListener;
    const-string v2, "pref_auto_answer"

    invoke-virtual {p0, v2}, Lcom/android/phone/AutoAnswerSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 47
    .local v1, switcher:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
