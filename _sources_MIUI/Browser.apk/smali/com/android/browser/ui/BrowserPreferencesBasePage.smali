.class public abstract Lcom/android/browser/ui/BrowserPreferencesBasePage;
.super Landroid/preference/PreferenceActivity;
.source "BrowserPreferencesBasePage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final CURRENT_PAGE:Ljava/lang/String; = "currentPage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initPreference(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 46
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    instance-of v2, v0, Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, value:Ljava/lang/String;
    check-cast v0, Landroid/preference/ListPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->trySetListPreferenceSummary(Landroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 57
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0       #pref:Landroid/preference/Preference;
    :cond_1
    instance-of v2, v0, Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .restart local v1       #value:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPreviewEnabled(Z)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setValuePreview(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 33
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/BrowserSettings;->syncSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 34
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "pref"
    .parameter "objValue"

    .prologue
    .line 38
    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/ui/BrowserPreferencesBasePage;->trySetListPreferenceSummary(Landroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 41
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 25
    invoke-static {p0}, Lcom/android/browser/util/SystemSettingsUtil;->applyDayOrNightModeSetting(Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method protected trySetListPreferenceSummary(Landroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "pref"
    .parameter "objValue"

    .prologue
    .line 60
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    return-void

    .line 61
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
