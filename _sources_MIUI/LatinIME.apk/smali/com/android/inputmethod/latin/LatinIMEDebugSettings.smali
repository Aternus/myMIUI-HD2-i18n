.class public Lcom/android/inputmethod/latin/LatinIMEDebugSettings;
.super Landroid/preference/PreferenceActivity;
.source "LatinIMEDebugSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DEBUG_MODE_KEY:Ljava/lang/String; = "debug_mode"

.field private static final TAG:Ljava/lang/String; = "LatinIMEDebugSettings"


# instance fields
.field private mDebugMode:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateDebugMode()V
    .locals 7

    .prologue
    .line 56
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_0

    .line 74
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 60
    .local v2, isDebugMode:Z
    const-string v3, ""

    .line 62
    .local v3, version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 63
    .local v1, info:Landroid/content/pm/PackageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 67
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_1
    if-nez v2, :cond_1

    .line 68
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 65
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "LatinIMEDebugSettings"

    const-string v5, "Could not find version info."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 71
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f05001a

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 42
    const-string v1, "debug_mode"

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    .line 43
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->updateDebugMode()V

    .line 44
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    const-string v2, "debug_mode"

    .line 47
    const-string v0, "debug_mode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug_mode"

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 50
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIMEDebugSettings;->updateDebugMode()V

    .line 53
    :cond_0
    return-void
.end method
