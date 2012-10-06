.class public Lcom/android/thememanager/LocalThemeResourceListActivity;
.super Lcom/miui/android/resourcebrowser/LocalResourceListActivity;
.source "LocalThemeResourceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/LocalThemeResourceListActivity$NameComparator;
    }
.end annotation


# instance fields
.field private mFooter:Landroid/view/View;

.field private mPickerIntent:Landroid/content/Intent;

.field protected mResourceType:J

.field private mThemeSourcePath:Ljava/lang/String;

.field private mThirdAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/android/resourcebrowser/LocalResourceListActivity;-><init>()V

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThemeSourcePath:Ljava/lang/String;

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/LocalThemeResourceListActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/thememanager/LocalThemeResourceListActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/thememanager/LocalThemeResourceListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListActivity;->resolveIntent()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/thememanager/LocalThemeResourceListActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/thememanager/LocalThemeResourceListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThirdAppInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getMenuTitleId()I
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-static {v0, v1}, Lcom/android/thememanager/UIHelper;->supportMenuPopup(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const v0, 0x7f070026

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveIntent(Landroid/content/Intent;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "targetIntent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, skipList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/thememanager/LocalThemeResourceListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 273
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v2, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 275
    .local v3, resolveList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_2

    .line 276
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v0, v6, v7

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 277
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 278
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 279
    .local v5, skipItem:Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 280
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 276
    .end local v5           #skipItem:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 287
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 288
    new-instance v6, Lcom/android/thememanager/LocalThemeResourceListActivity$NameComparator;

    invoke-direct {v6, v2}, Lcom/android/thememanager/LocalThemeResourceListActivity$NameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v6
.end method

.method private resolveIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v5, "android.intent.extra.ringtone.TYPE"

    .line 246
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThirdAppInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    const-class v1, Lcom/android/thememanager/ThemeResourceTabActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/android/thememanager/LocalThemeResourceListActivity;->resolveIntent(Landroid/content/Intent;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThirdAppInfoList:Ljava/util/ArrayList;

    .line 269
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_LOCKSCREEN_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    goto :goto_0

    .line 255
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v3, 0x200

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    :goto_1
    const-class v1, Lcom/android/internal/app/RingtonePickerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_3
    iget-wide v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v3, 0x400

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 261
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x4

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 263
    :cond_4
    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mPickerIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method protected getAdapter()Lcom/miui/android/resourcebrowser/ResourceAdapter;
    .locals 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".local"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/android/thememanager/LocalThemeResourceAdapter;

    iget-object v1, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Lcom/android/thememanager/LocalThemeResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 169
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v5, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/miui/android/resourcebrowser/LocalResourceListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    if-eqz p3, :cond_0

    .line 175
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThemeSourcePath:Ljava/lang/String;

    .line 176
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThemeSourcePath:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/thememanager/ThemeHelper;->moveThemeFileIntoLibrary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThemeSourcePath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 180
    .local v2, slashPos:I
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThemeSourcePath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThemeSourcePath:Ljava/lang/String;

    goto :goto_0

    .line 186
    .end local v2           #slashPos:I
    :pswitch_1
    if-eqz p3, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 189
    .local v0, changed:Z
    const-string v4, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 190
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/miui/android/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, path:Ljava/lang/String;
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x40

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 192
    invoke-static {p0, v1}, Lcom/android/thememanager/ThemeHelper;->applyBootAudio(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 201
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 202
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-static {p0, v4, v5, v1}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 205
    :cond_3
    invoke-static {p0, v0}, Lcom/android/thememanager/ThemeHelper;->showThemeChangedToast(Landroid/content/Context;Z)V

    goto :goto_0

    .line 193
    :cond_4
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x100

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 194
    const/4 v4, 0x1

    invoke-static {p0, v4, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 195
    :cond_5
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x200

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 196
    const/4 v4, 0x2

    invoke-static {p0, v4, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 197
    :cond_6
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x400

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 198
    const/4 v4, 0x4

    invoke-static {p0, v4, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/LocalResourceListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lcom/android/thememanager/ThemeHelper;->deleteDeprecatedPreviewCache()V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-direct {p0}, Lcom/android/thememanager/LocalThemeResourceListActivity;->getMenuTitleId()I

    move-result v0

    .line 215
    .local v0, titleId:I
    if-eqz v0, :cond_0

    .line 216
    invoke-interface {p1, v1, v0, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 218
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/LocalResourceListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f070026

    if-ne v2, v3, :cond_0

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mThemeSourcePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 226
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    const-string v2, "root_directory"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v2, "ext_filter"

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "zip"

    aput-object v4, v3, v5

    const-string v4, "mtz"

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v2, "ext_file_first"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    const-string v2, "back_to_parent_directory"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0, v7}, Lcom/android/thememanager/LocalThemeResourceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/LocalResourceListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 125
    invoke-super {p0}, Lcom/miui/android/resourcebrowser/LocalResourceListActivity;->onResume()V

    .line 126
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v5, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, filename:Ljava/lang/String;
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x100

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 129
    const/4 v4, 0x1

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 130
    .local v3, uri:Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/miui/android/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mAdapter:Lcom/miui/android/resourcebrowser/ResourceAdapter;

    invoke-virtual {v4, v1}, Lcom/miui/android/resourcebrowser/ResourceAdapter;->setCurrentUsingPath(Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mAdapter:Lcom/miui/android/resourcebrowser/ResourceAdapter;

    invoke-virtual {v4}, Lcom/miui/android/resourcebrowser/ResourceAdapter;->notifyDataSetChanged()V

    .line 160
    .end local v1           #filename:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mFooter:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x1000

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 161
    invoke-static {}, Lcom/android/thememanager/LockscreenConfigSettings;->containConfigFile()Z

    move-result v0

    .line 162
    .local v0, canCustomized:Z
    iget-object v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mFooter:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    iget-object p0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mFooter:Landroid/view/View;

    .end local p0
    check-cast p0, Landroid/widget/ImageTextButton;

    invoke-virtual {p0}, Landroid/widget/ImageTextButton;->getTextView()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_9

    const/high16 v5, -0x100

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    .end local v0           #canCustomized:Z
    :cond_2
    return-void

    .line 131
    .restart local v1       #filename:Ljava/lang/String;
    .restart local p0
    :cond_3
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x200

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 132
    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 133
    .restart local v3       #uri:Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/miui/android/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 134
    goto :goto_0

    .end local v3           #uri:Landroid/net/Uri;
    :cond_4
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x400

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    .line 135
    const/4 v4, 0x4

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 136
    .restart local v3       #uri:Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/miui/android/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 137
    goto :goto_0

    .end local v3           #uri:Landroid/net/Uri;
    :cond_5
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x40

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/system/theme"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "boots/bootaudio.mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 139
    const-string v1, ""

    goto/16 :goto_0

    .line 141
    :cond_6
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 142
    .local v2, pref:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_8

    .line 144
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-static {v4, v5}, Lcom/android/thememanager/UIHelper;->isImageResource(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Lcom/android/thememanager/LocalThemeResourceListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 147
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 148
    :cond_7
    iget-wide v4, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-static {p0, v4, v5}, Lcom/android/thememanager/ThemeHelper;->wallpaperPrefOlderThanSystem(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 153
    :cond_8
    const-string v1, "/system/media/theme/default.mtz"

    goto/16 :goto_0

    .line 163
    .end local v1           #filename:Ljava/lang/String;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    .end local p0
    .restart local v0       #canCustomized:Z
    :cond_9
    const v5, -0x777778

    goto/16 :goto_1
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 3
    .parameter "metaData"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/LocalResourceListActivity;->pickMetaData(Landroid/os/Bundle;)V

    .line 113
    const-string v0, "com.android.thememanager.extra_theme_apply_flags"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    .line 114
    iget-wide v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-static {p0, v0, v1}, Lcom/android/thememanager/ThemeHelper;->setMusicVolumeType(Landroid/app/Activity;J)V

    .line 115
    return-void
.end method

.method protected setupUI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 54
    invoke-super {p0}, Lcom/miui/android/resourcebrowser/LocalResourceListActivity;->setupUI()V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, footer:Landroid/view/View;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/thememanager/LocalThemeResourceListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 57
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 58
    const v3, 0x7f030005

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    new-instance v3, Lcom/android/thememanager/LocalThemeResourceListActivity$1;

    invoke-direct {v3, p0}, Lcom/android/thememanager/LocalThemeResourceListActivity$1;-><init>(Lcom/android/thememanager/LocalThemeResourceListActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 104
    const v3, 0x10201e6

    invoke-virtual {p0, v3}, Lcom/android/thememanager/LocalThemeResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 105
    .local v2, root:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    .end local v2           #root:Landroid/widget/LinearLayout;
    :cond_1
    iput-object v0, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mFooter:Landroid/view/View;

    .line 108
    return-void

    .line 69
    :cond_2
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    const-wide/16 v5, 0x1000

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 70
    const v3, 0x7f030007

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    new-instance v3, Lcom/android/thememanager/LocalThemeResourceListActivity$2;

    invoke-direct {v3, p0}, Lcom/android/thememanager/LocalThemeResourceListActivity$2;-><init>(Lcom/android/thememanager/LocalThemeResourceListActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 81
    :cond_3
    iget-wide v3, p0, Lcom/android/thememanager/LocalThemeResourceListActivity;->mResourceType:J

    invoke-static {v3, v4}, Lcom/android/thememanager/UIHelper;->supportMenuPopup(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    const v3, 0x7f030006

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    new-instance v3, Lcom/android/thememanager/LocalThemeResourceListActivity$3;

    invoke-direct {v3, p0}, Lcom/android/thememanager/LocalThemeResourceListActivity$3;-><init>(Lcom/android/thememanager/LocalThemeResourceListActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
