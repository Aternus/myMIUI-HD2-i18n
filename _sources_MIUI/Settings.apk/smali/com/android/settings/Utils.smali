.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMonkeyRunning()Z
    .locals 2

    .prologue
    .line 99
    const-string v0, "ro.monkey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)Z
    .locals 9
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preference"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 65
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 69
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 71
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 72
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 73
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 75
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 79
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_0

    .line 81
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    const/4 v6, 0x1

    .line 92
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_1
    return v6

    .line 71
    .restart local v0       #i:I
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #listSize:I
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v6, v7

    .line 92
    goto :goto_1
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 2
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    .line 55
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 56
    .local v0, preference:Landroid/preference/Preference;
    if-nez v0, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 60
    :goto_0
    return v1

    :cond_0
    invoke-static {p0, p1, v0, p3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)Z

    move-result v1

    goto :goto_0
.end method
