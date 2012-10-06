.class public Lcom/android/thememanager/LocalThemeResourceAdapter;
.super Lcom/miui/android/resourcebrowser/LocalResourceAdapter;
.source "LocalThemeResourceAdapter.java"


# instance fields
.field mResourceType:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "metaData"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/miui/android/resourcebrowser/LocalResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 18
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    .line 19
    return-void
.end method


# virtual methods
.method protected getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 35
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/miui/android/resourcebrowser/LocalResourceAdapter;->getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->getHumanNameForAudioEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, name:Ljava/lang/String;
    const-string v1, "%s (%d/%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, p2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getMusicPlayList(Lcom/miui/android/resourcebrowser/Resource;)Ljava/util/List;
    .locals 5
    .parameter "resourceItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/android/resourcebrowser/Resource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 46
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/LocalResourceAdapter;->getMusicPlayList(Lcom/miui/android/resourcebrowser/Resource;)Ljava/util/List;

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/miui/android/resourcebrowser/Resource;->getLocalPreviews()Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v1, v0

    .line 54
    goto :goto_0
.end method

.method protected getVisitor(Ljava/lang/String;)Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor;
    .locals 6
    .parameter "folder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lcom/miui/android/resourcebrowser/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 24
    .local v0, resourceSetCategory:I
    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mResourceType:J

    const-wide/32 v4, 0x8000

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 26
    :cond_0
    new-instance v1, Lcom/android/thememanager/ThemeResourceFolder;

    iget-object v2, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/thememanager/ThemeResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .local v1, result:Lcom/miui/android/resourcebrowser/ResourceFolder;
    move-object v2, v1

    .line 29
    .end local v1           #result:Lcom/miui/android/resourcebrowser/ResourceFolder;
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/LocalResourceAdapter;->getVisitor(Ljava/lang/String;)Landroid/widget/AsyncAdapter$AsyncLoadDataVisitor;

    move-result-object v2

    goto :goto_0
.end method
