.class public Lcom/android/thememanager/OnlineThemeResourceAdapter;
.super Lcom/miui/android/resourcebrowser/OnlineResourceAdapter;
.source "OnlineThemeResourceAdapter.java"


# instance fields
.field mResourceType:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "metaData"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/miui/android/resourcebrowser/OnlineResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 18
    iget-object v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

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
    .line 23
    iget-wide v1, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/miui/android/resourcebrowser/OnlineResourceAdapter;->getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 28
    :goto_0
    return-object v1

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->getHumanNameForAudioEffect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
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
    .line 33
    iget-wide v1, p0, Lcom/android/thememanager/OnlineThemeResourceAdapter;->mResourceType:J

    const-wide/32 v3, 0x8000

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 34
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/OnlineResourceAdapter;->getMusicPlayList(Lcom/miui/android/resourcebrowser/Resource;)Ljava/util/List;

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/miui/android/resourcebrowser/Resource;->getOnlinePreviews()Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v1, v0

    .line 42
    goto :goto_0
.end method
