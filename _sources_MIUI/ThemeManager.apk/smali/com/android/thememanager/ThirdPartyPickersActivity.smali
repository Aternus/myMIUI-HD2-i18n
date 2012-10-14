.class public Lcom/android/thememanager/ThirdPartyPickersActivity;
.super Landroid/preference/PreferenceActivity;
.source "ThirdPartyPickersActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 73
    const/high16 v0, 0x10a

    const v1, 0x10a0037

    invoke-virtual {p0, v0, v1}, Lcom/android/thememanager/ThirdPartyPickersActivity;->overridePendingTransition(II)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 26
    .local v6, intent:Landroid/content/Intent;
    const-string v18, "android.intent.extra.INTENT"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    .line 27
    .local v17, targetParcelable:Landroid/os/Parcelable;
    const-string v18, "extra_resource_type"

    const-wide/16 v19, 0x0

    move-object v0, v6

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 28
    .local v10, resourceType:J
    const-string v18, "extra_resolve_info_list"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 30
    .local v9, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/content/Intent;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-eqz v18, :cond_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_1

    .line 32
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->finish()V

    .line 60
    .end local p1
    :goto_0
    return-void

    .line 35
    .restart local p1
    :cond_1
    move-object/from16 v0, v17

    check-cast v0, Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 37
    .local v16, targetIntent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 38
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 40
    .local v13, screen:Landroid/preference/PreferenceScreen;
    const v18, 0x7f070028

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v10, v11}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/thememanager/ThirdPartyPickersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 44
    .local v14, size:I
    const/4 v5, 0x0

    .end local p1
    .local v5, i:I
    :goto_1
    if-ge v5, v14, :cond_2

    .line 45
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 47
    .local v12, ri:Landroid/content/pm/ResolveInfo;
    new-instance v15, Landroid/content/Intent;

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 48
    .local v15, specificIntent:Landroid/content/Intent;
    const/high16 v18, 0x300

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    .line 50
    .local v4, ai:Landroid/content/pm/ActivityInfo;
    new-instance v18, Landroid/content/ComponentName;

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    new-instance v8, Landroid/preference/PreferenceScreen;

    const/16 v18, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    .local v8, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {v12, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v12, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v13, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 59
    .end local v4           #ai:Landroid/content/pm/ActivityInfo;
    .end local v8           #pref:Landroid/preference/PreferenceScreen;
    .end local v12           #ri:Landroid/content/pm/ResolveInfo;
    .end local v15           #specificIntent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/thememanager/ThirdPartyPickersActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/thememanager/ThirdPartyPickersActivity;->finish()V

    .line 67
    const/4 v1, 0x1

    return v1
.end method
