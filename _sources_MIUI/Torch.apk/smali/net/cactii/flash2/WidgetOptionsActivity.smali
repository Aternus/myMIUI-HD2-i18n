.class public Lnet/cactii/flash2/WidgetOptionsActivity;
.super Landroid/preference/PreferenceActivity;
.source "WidgetOptionsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAppWidgetId:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStrobeFrequency:Lnet/cactii/flash2/SeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/cactii/flash2/WidgetOptionsActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lnet/cactii/flash2/WidgetOptionsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lnet/cactii/flash2/WidgetOptionsActivity;->addPreferencesFromResource(I)V

    .line 31
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 32
    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 33
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 35
    const-string v5, "appWidgetId"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mAppWidgetId:I

    .line 39
    :cond_0
    const-string v5, "widget_bright"

    invoke-virtual {p0, v5}, Lnet/cactii/flash2/WidgetOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 40
    .local v2, mBrightPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 42
    const-string v5, "widget_strobe"

    invoke-virtual {p0, v5}, Lnet/cactii/flash2/WidgetOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 43
    .local v4, mStrobePref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 45
    const-string v5, "widget_strobe_freq"

    invoke-virtual {p0, v5}, Lnet/cactii/flash2/WidgetOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lnet/cactii/flash2/SeekBarPreference;

    iput-object v5, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mStrobeFrequency:Lnet/cactii/flash2/SeekBarPreference;

    .line 46
    iget-object v5, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mStrobeFrequency:Lnet/cactii/flash2/SeekBarPreference;

    invoke-virtual {v5, v6}, Lnet/cactii/flash2/SeekBarPreference;->setEnabled(Z)V

    .line 48
    invoke-virtual {p0}, Lnet/cactii/flash2/WidgetOptionsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 49
    const-string v5, "saveSettings"

    invoke-virtual {p0, v5}, Lnet/cactii/flash2/WidgetOptionsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 50
    .local v3, mSave:Landroid/preference/Preference;
    new-instance v5, Lnet/cactii/flash2/WidgetOptionsActivity$1;

    invoke-direct {v5, p0}, Lnet/cactii/flash2/WidgetOptionsActivity$1;-><init>(Lnet/cactii/flash2/WidgetOptionsActivity;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 101
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const-string v2, "widget_strobe"

    .line 105
    const-string v0, "widget_strobe"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lnet/cactii/flash2/WidgetOptionsActivity;->mStrobeFrequency:Lnet/cactii/flash2/SeekBarPreference;

    const-string v1, "widget_strobe"

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/cactii/flash2/SeekBarPreference;->setEnabled(Z)V

    .line 109
    :cond_0
    return-void
.end method
