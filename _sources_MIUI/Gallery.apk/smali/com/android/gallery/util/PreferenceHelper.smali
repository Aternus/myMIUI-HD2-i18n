.class public Lcom/android/gallery/util/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field private static sLastVisitedFolderPath:Ljava/lang/String;

.field private static sLastVisitedTabId:Ljava/lang/String;

.field public static sShowHiddenAlbum:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery/util/PreferenceHelper;->sShowHiddenAlbum:Z

    .line 28
    sput-object v1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedTabId:Ljava/lang/String;

    .line 29
    sput-object v1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVisitedFolderPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    sget-object v1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "last_visited_folder"

    sget-object v2, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    .line 79
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    sget-object v1, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    sput-object v1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    .line 82
    :cond_1
    sget-object v1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getLastVisitedTabId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    sget-object v1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedTabId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "last_visited_tab"

    const-string v2, "tab_id_favorite"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedTabId:Ljava/lang/String;

    .line 61
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    sget-object v1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedTabId:Ljava/lang/String;

    return-object v1
.end method

.method public static getSlideshowAnimation(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v3, "slideshow_animation_value"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, s:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    .local v1, ret:I
    if-ltz v1, :cond_0

    const/4 v3, 0x7

    if-gt v1, v3, :cond_0

    move v3, v1

    .line 96
    .end local v1           #ret:I
    :goto_0
    return v3

    .line 94
    :catch_0
    move-exception v3

    .line 96
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSlideshowInterval(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x2

    .line 103
    .local v0, interval:I
    :try_start_0
    const-string v2, "slideshow_interval"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 106
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    return v2

    .line 104
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSlideshowRepeatMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "slideshow_repeat_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static setLastVisitedFolderPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "folderPath"

    .prologue
    .line 65
    sget-object v2, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    sput-object p1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_visited_folder"

    sget-object v3, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedFolderPath:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setLastVisitedTabId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "tabId"

    .prologue
    .line 47
    sget-object v2, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedTabId:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    sput-object p1, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedTabId:Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_visited_tab"

    sget-object v3, Lcom/android/gallery/util/PreferenceHelper;->sLastVisitedTabId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static updateShowHiddenValue(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "show_hidden_album"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/gallery/util/PreferenceHelper;->sShowHiddenAlbum:Z

    .line 117
    return-void
.end method
