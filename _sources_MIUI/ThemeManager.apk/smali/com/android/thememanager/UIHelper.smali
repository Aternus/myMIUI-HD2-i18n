.class public Lcom/android/thememanager/UIHelper;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Lcom/miui/android/resourcebrowser/IntentConstants;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 80
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 81
    const-wide/16 v2, -0x1

    .line 82
    const-string v4, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    const-string v4, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-wide v1, v2

    .line 102
    :goto_0
    const-string v3, "com.android.thememanager.extra_theme_apply_flags"

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    const-string v3, ""

    .line 106
    const-wide/16 v3, 0x2

    cmp-long v3, v1, v3

    if-nez v3, :cond_4

    .line 107
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "/system/media/wallpaper"

    aput-object v4, v3, v9

    const-string v4, "/data/media/wallpaper"

    aput-object v4, v3, v7

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->INTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 111
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    .line 144
    :goto_1
    const-wide/32 v5, 0x8000

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    .line 145
    const-string v5, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    const-string v5, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    const-string v5, "com.miui.android.resourcebrowser.SHOW_RINGTONE_NAME"

    invoke-virtual {p0, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    :cond_0
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    invoke-static {v1, v2}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-static {v1, v2}, Lcom/android/thememanager/UIHelper;->getResourceSetCategory(J)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const-string v5, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    invoke-static {v1, v2}, Lcom/android/thememanager/UIHelper;->getDisplayType(J)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v5, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    invoke-static {v1, v2}, Lcom/android/thememanager/ConstantsHelper;->getResourceTypeParameter(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v5, "com.miui.android.resourcebrowser.CATEGORY_SUPPORTED"

    invoke-static {v1, v2}, Lcom/android/thememanager/UIHelper;->isCategorySupported(J)Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    const-string v5, "com.miui.android.resourcebrowser.VERSION_SUPPORTED"

    invoke-static {v1, v2}, Lcom/android/thememanager/UIHelper;->isVersionSupported(J)Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    const-string v5, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    const-string v4, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v3, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v3, "com.miui.android.resourcebrowser.LOCAL_LIST_ACTIVITY_CLASS"

    const-class v4, Lcom/android/thememanager/LocalThemeResourceListActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v3, "com.miui.android.resourcebrowser.ONLINE_LIST_ACTIVITY_CLASS"

    const-class v4, Lcom/android/thememanager/OnlineThemeResourceListActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v3, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    const-class v4, Lcom/android/thememanager/ThemeResourceDetailActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "com.miui.android.resourcebrowser.PLATFORM_VERSION_START"

    invoke-virtual {p0, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v3, "com.miui.android.resourcebrowser.PLATFORM_VERSION_END"

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v3, "com.miui.android.resourcebrowser.FORMAT_VERSION_START"

    invoke-virtual {p0, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    const-string v3, "com.miui.android.resourcebrowser.FORMAT_VERSION_END"

    invoke-virtual {p0, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const-wide/16 v7, -0x1

    cmp-long v7, v1, v7

    if-nez v7, :cond_a

    .line 175
    const-string v1, "preview_cover_"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v1, "cover_preview"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v9

    .line 177
    :goto_2
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    array-length v2, v2

    if-ge v1, v2, :cond_b

    .line 178
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v2, v1

    invoke-static {v7, v8}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v2, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v2, v1

    invoke-static {v7, v8}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v2, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v7, v2, v1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :pswitch_1
    const-wide/16 v1, 0x100

    .line 87
    goto/16 :goto_0

    .line 89
    :pswitch_2
    const-wide/16 v1, 0x200

    .line 90
    goto/16 :goto_0

    .line 92
    :pswitch_3
    const-wide/16 v1, 0x400

    goto/16 :goto_0

    .line 95
    :cond_1
    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const-wide/16 v1, 0x2

    goto/16 :goto_0

    .line 97
    :cond_2
    const-string v1, "android.intent.action.SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    const-wide/16 v1, 0x4

    goto/16 :goto_0

    .line 100
    :cond_3
    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    goto/16 :goto_0

    .line 112
    :cond_4
    const-wide/16 v3, 0x4

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    .line 113
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "/system/media/lockscreen"

    aput-object v4, v3, v9

    const-string v4, "/data/media/lockscreen"

    aput-object v4, v3, v7

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->INTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 117
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_LOCKSCREEN_PATH:Ljava/lang/String;

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_1

    .line 118
    :cond_5
    const-wide/16 v3, 0x40

    cmp-long v3, v1, v3

    if-eqz v3, :cond_6

    const-wide/16 v3, 0x100

    cmp-long v3, v1, v3

    if-nez v3, :cond_7

    .line 119
    :cond_6
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "/system/media/audio/ringtones"

    aput-object v4, v3, v9

    const-string v4, "/data/media/audio/ringtones"

    aput-object v4, v3, v7

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RINGTONE_PATH:Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RINGTONE_PATH:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 123
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_1

    .line 124
    :cond_7
    const-wide/16 v3, 0x200

    cmp-long v3, v1, v3

    if-nez v3, :cond_8

    .line 125
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "/system/media/audio/notifications"

    aput-object v4, v3, v9

    const-string v4, "/data/media/audio/notifications"

    aput-object v4, v3, v7

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->INTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 129
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_1

    .line 130
    :cond_8
    const-wide/16 v3, 0x400

    cmp-long v3, v1, v3

    if-nez v3, :cond_9

    .line 131
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "/system/media/audio/alarms"

    aput-object v4, v3, v9

    const-string v4, "/data/media/audio/alarms"

    aput-object v4, v3, v7

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->INTERNAL_ALARM_PATH:Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_ALARM_PATH:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 135
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_1

    .line 137
    :cond_9
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    aput-object v4, v3, v9

    const-string v4, "/system/media/theme"

    aput-object v4, v3, v7

    const-string v4, "/data/media/theme"

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v4, v3, v6

    sget-object v4, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    aput-object v4, v3, v8

    .line 141
    sget-object v4, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_1

    .line 184
    :cond_a
    invoke-static {v1, v2}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-static {v1, v2}, Lcom/android/thememanager/ThemeHelper;->getPreviewPrefixByFlag(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_b
    const-string v2, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX"

    new-array v1, v9, [Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 190
    const-string v2, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX_INDICATOR"

    new-array v1, v9, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    const-string v2, "com.miui.android.resourcebrowser.PREVIEW_PREFIX"

    new-array v1, v9, [Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    const-string v2, "com.miui.android.resourcebrowser.PREVIEW_PREFIX_INDICATOR"

    new-array v1, v9, [Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 194
    return-object p0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getDisplayType(J)I
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 20
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x800

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 24
    :cond_0
    const/4 v0, 0x3

    .line 36
    :goto_0
    return v0

    .line 25
    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 26
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    :cond_2
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 28
    const/4 v0, 0x2

    goto :goto_0

    .line 29
    :cond_3
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 30
    const/4 v0, 0x5

    goto :goto_0

    .line 31
    :cond_4
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x100

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-eqz v0, :cond_5

    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    .line 34
    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    .line 36
    :cond_6
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static getResourceSetCategory(J)I
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x2

    .line 61
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAudioResource(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 41
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCategorySupported(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 66
    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageResource(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 47
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVersionSupported(J)Z
    .locals 1
    .parameter "resourceType"

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportMenuPopup(J)Z
    .locals 2
    .parameter "resourceType"

    .prologue
    .line 51
    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isAudioResource(J)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
