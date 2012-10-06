.class public Lcom/android/thememanager/OnlineThemeResourceListActivity;
.super Lcom/miui/android/resourcebrowser/OnlineResourceListActivity;
.source "OnlineThemeResourceListActivity.java"


# instance fields
.field protected mResourceType:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/miui/android/resourcebrowser/OnlineResourceListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/android/resourcebrowser/ResourceAdapter;
    .locals 5

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".online.hottest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/thememanager/OnlineThemeResourceListActivity;->mResourceType:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/android/thememanager/OnlineThemeResourceAdapter;

    iget-object v1, p0, Lcom/android/thememanager/OnlineThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/OnlineThemeResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 3
    .parameter "metaData"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/OnlineResourceListActivity;->pickMetaData(Landroid/os/Bundle;)V

    .line 15
    const-string v0, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceListActivity;->mResourceType:J

    .line 16
    iget-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceListActivity;->mResourceType:J

    invoke-static {p0, v0, v1}, Lcom/android/thememanager/ThemeHelper;->setMusicVolumeType(Landroid/app/Activity;J)V

    .line 17
    return-void
.end method

.method protected updateTabState(Z)V
    .locals 4
    .parameter "showingHottest"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/OnlineResourceListActivity;->updateTabState(Z)V

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, subpackage:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".online.hottest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/thememanager/OnlineThemeResourceListActivity;->mResourceType:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/OnlineThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".online.latest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/thememanager/OnlineThemeResourceListActivity;->mResourceType:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
