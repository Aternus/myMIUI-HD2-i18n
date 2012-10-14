.class public Lcom/android/sidekick/SearchableItemsSettings;
.super Landroid/preference/PreferenceActivity;
.source "SearchableItemsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCorporaPreferences:Landroid/preference/PreferenceGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createCorpusPreference(Landroid/app/SearchableInfo;)Landroid/preference/Preference;
    .locals 6
    .parameter "si"

    .prologue
    const-string v5, ""

    .line 60
    new-instance v3, Lcom/android/sidekick/SearchableItemPreference;

    invoke-direct {v3, p0}, Lcom/android/sidekick/SearchableItemPreference;-><init>(Landroid/content/Context;)V

    .line 61
    .local v3, sourcePref:Lcom/android/sidekick/SearchableItemPreference;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/sidekick/SearchableItemPreference;->setKey(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3, p0}, Lcom/android/sidekick/SearchableItemPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/sidekick/SearchableItemsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/SearchableInfo;->getActivityContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, ct:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/sidekick/SearchableItemsSettings;->getActivityname(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 65
    .local v2, label:Ljava/lang/CharSequence;
    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getLabelId()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/sidekick/SearchableItemsSettings;->getSearchableInfoText(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 68
    :cond_0
    if-nez v2, :cond_2

    const-string v4, ""

    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/sidekick/SearchableItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSettingsDescriptionId()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/android/sidekick/SearchableItemsSettings;->getSearchableInfoText(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 70
    .local v1, description:Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    const-string v4, ""

    move-object v1, v5

    .line 71
    :cond_1
    invoke-virtual {v3, v1}, Lcom/android/sidekick/SearchableItemPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v3, v1}, Lcom/android/sidekick/SearchableItemPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/sidekick/SearchableItemsSettings;->getActivityDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/sidekick/SearchableItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    return-object v3

    .end local v1           #description:Ljava/lang/CharSequence;
    :cond_2
    move-object v4, v2

    .line 68
    goto :goto_0
.end method

.method private getActivityDrawable(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "name"

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sidekick/SearchableItemsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getActivityname(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/sidekick/SearchableItemsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    .local v0, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private getSearchableInfoText(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private populateSourcePreference()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 44
    iget-object v6, p0, Lcom/android/sidekick/SearchableItemsSettings;->mCorporaPreferences:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/android/sidekick/SearchableItemsSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "search"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    .line 46
    .local v3, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v3}, Landroid/app/SearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v4

    .line 47
    .local v4, searchables:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchableInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchableInfo;

    .line 48
    .local v5, si:Landroid/app/SearchableInfo;
    invoke-direct {p0, v5}, Lcom/android/sidekick/SearchableItemsSettings;->createCorpusPreference(Landroid/app/SearchableInfo;)Landroid/preference/Preference;

    move-result-object v2

    .line 49
    .local v2, pref:Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v6}, Lcom/android/sidekick/GroupCorpus;->indexOfDefaultEnabledComponent(Landroid/content/ComponentName;)I

    move-result v1

    .line 50
    .local v1, index:I
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 51
    const/16 v6, 0x32

    if-ge v1, v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 52
    iget-object v6, p0, Lcom/android/sidekick/SearchableItemsSettings;->mCorporaPreferences:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    move v6, v8

    .line 51
    goto :goto_1

    .line 54
    .end local v1           #index:I
    .end local v2           #pref:Landroid/preference/Preference;
    .end local v5           #si:Landroid/app/SearchableInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    const-class v1, Lcom/android/sidekick/SideKickActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/sidekick/SearchableItemsSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/sidekick/SearchableItemsSettings;->addPreferencesFromResource(I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/sidekick/SearchableItemsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "search_corpora"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/sidekick/SearchableItemsSettings;->mCorporaPreferences:Landroid/preference/PreferenceGroup;

    .line 40
    invoke-direct {p0}, Lcom/android/sidekick/SearchableItemsSettings;->populateSourcePreference()V

    .line 41
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 119
    invoke-virtual {p0}, Lcom/android/sidekick/SearchableItemsSettings;->finish()V

    .line 120
    return-void
.end method
