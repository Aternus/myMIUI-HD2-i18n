.class public Lcom/miui/player/ui/FolderBrowserActivity;
.super Lcom/miui/player/ui/BaseListActivity;
.source "FolderBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;
.implements Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;
    }
.end annotation


# static fields
.field private static final DELETE_PLAYLIST:I = 0x1d

.field private static final RENAME_PLAYLIST:I = 0x1e

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mCurrentPath:Ljava/lang/String;

.field private mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

.field private mIsMediaChanged:Z

.field private mMediaProviderObserver:Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mRefreshRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 44
    sput v0, Lcom/miui/player/ui/FolderBrowserActivity;->mLastListPosCourse:I

    .line 46
    sput v0, Lcom/miui/player/ui/FolderBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/miui/player/ui/BaseListActivity;-><init>()V

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mIsMediaChanged:Z

    .line 344
    new-instance v0, Lcom/miui/player/ui/FolderBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/FolderBrowserActivity$1;-><init>(Lcom/miui/player/ui/FolderBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/player/ui/FolderBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mIsMediaChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/player/ui/FolderBrowserActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->setTitle(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public inititalizeTab()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 251
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    if-nez v2, :cond_0

    .line 275
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v1

    .line 255
    .local v1, folderProvider:Lcom/miui/player/helper/FolderProvider;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/miui/player/ui/FolderBrowserActivity;->enableDatabaseError(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move v2, v5

    .line 255
    goto :goto_1

    .line 261
    :cond_2
    sget v2, Lcom/miui/player/ui/FolderBrowserActivity;->mLastListPosCourse:I

    if-ltz v2, :cond_3

    .line 262
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    sget v3, Lcom/miui/player/ui/FolderBrowserActivity;->mLastListPosCourse:I

    sget v4, Lcom/miui/player/ui/FolderBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 263
    const/4 v2, -0x1

    sput v2, Lcom/miui/player/ui/FolderBrowserActivity;->mLastListPosCourse:I

    .line 266
    :cond_3
    invoke-virtual {v1}, Lcom/miui/player/helper/FolderProvider;->getFolderCount()I

    move-result v0

    .line 267
    .local v0, count:I
    if-nez v0, :cond_4

    .line 268
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "num"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 271
    :cond_4
    const v2, 0x7f0c0051

    const v3, 0x7f0800a1

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/FolderBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v0}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 274
    invoke-direct {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method public isEnableScanReceiver()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public isRecoveryCompleteReceiver()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 15
    .parameter "item"

    .prologue
    .line 146
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    check-cast v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 147
    .local v6, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-eqz v6, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v4

    .line 149
    .local v4, folderProvider:Lcom/miui/player/helper/FolderProvider;
    iget-wide v11, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v4, v11, v12}, Lcom/miui/player/helper/FolderProvider;->getPathById(J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCurrentPath:Ljava/lang/String;

    .line 150
    iget-object v11, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCurrentPath:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 151
    const/4 v11, 0x1

    .line 203
    .end local v4           #folderProvider:Lcom/miui/player/helper/FolderProvider;
    :goto_0
    return v11

    .line 155
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 203
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v11, 0x1

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v11, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCurrentPath:Ljava/lang/String;

    invoke-static {p0, v11}, Lcom/miui/player/MusicUtils;->playFolder(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :pswitch_2
    iget-object v11, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCurrentPath:Ljava/lang/String;

    invoke-static {p0, v11}, Lcom/miui/player/MusicUtils;->getFolderAudioListId(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v5

    .line 162
    .local v5, list:[J
    invoke-static {p0, v5}, Lcom/miui/player/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 163
    const/4 v11, 0x1

    goto :goto_0

    .line 167
    .end local v5           #list:[J
    :pswitch_3
    iget-object v11, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCurrentPath:Ljava/lang/String;

    invoke-static {p0, v11}, Lcom/miui/player/MusicUtils;->getFolderAudioListId(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v5

    .line 168
    .restart local v5       #list:[J
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "playlist"

    const-wide/16 v13, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 169
    .local v9, playlist:J
    const/4 v11, 0x1

    invoke-static {p0, v5, v9, v10, v11}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    .line 170
    const/4 v11, 0x1

    goto :goto_0

    .line 173
    .end local v5           #list:[J
    .end local v9           #playlist:J
    :pswitch_4
    const/16 v11, 0x16

    invoke-static {p0, p0, v11}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/miui/player/ui/CreatorDialog;->show()V

    .line 174
    const/4 v11, 0x1

    goto :goto_0

    .line 178
    :pswitch_5
    iget-object v11, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v13, "path"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, path:Ljava/lang/String;
    iget-object v11, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v12, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v13, "name"

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, name:Ljava/lang/String;
    invoke-static {p0, v8}, Lcom/miui/player/MusicUtils;->getFolderAudioListId(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v5

    .line 184
    .restart local v5       #list:[J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v0, b:Landroid/os/Bundle;
    const v11, 0x7f080008

    invoke-virtual {p0, v11}, Lcom/miui/player/ui/FolderBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, f:Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, desc:Ljava/lang/String;
    const-string v11, "description"

    invoke-virtual {v0, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v11, "items"

    invoke-virtual {v0, v11, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 189
    new-instance v11, Lcom/miui/player/ui/DeleteItems;

    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-direct {v11, p0, v0, v12, v13}, Lcom/miui/player/ui/DeleteItems;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    invoke-virtual {v11}, Lcom/miui/player/ui/DeleteItems;->show()V

    .line 191
    iget-object v11, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 192
    const v11, 0x7f080018

    invoke-virtual {p0, v11}, Lcom/miui/player/ui/FolderBrowserActivity;->setTitle(I)V

    goto/16 :goto_1

    .line 196
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #desc:Ljava/lang/String;
    .end local v3           #f:Ljava/lang/String;
    .end local v5           #list:[J
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #path:Ljava/lang/String;
    :pswitch_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v1, bundle:Landroid/os/Bundle;
    const-string v11, "rename"

    iget-wide v12, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    const-string v11, "playlist_type"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    new-instance v11, Lcom/miui/player/ui/RenamePlaylist;

    const/16 v12, 0x1e

    invoke-direct {v11, p0, p0, v1, v12}, Lcom/miui/player/ui/RenamePlaylist;-><init>(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;Landroid/os/Bundle;I)V

    invoke-virtual {v11}, Lcom/miui/player/ui/RenamePlaylist;->show()V

    goto/16 :goto_1

    .line 155
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 57
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->setContentView(I)V

    .line 60
    invoke-static {p0}, Lcom/miui/player/MusicUtils;->updateGoHome(Landroid/app/Activity;)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 62
    .local v9, lv:Landroid/widget/ListView;
    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 63
    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 64
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->setTitle(I)V

    .line 66
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v8

    .line 67
    .local v8, folderProvider:Lcom/miui/player/helper/FolderProvider;
    new-instance v7, Lcom/miui/player/helper/ArrayListCursor;

    sget-object v0, Lcom/miui/player/model/FolderBrowserAdapter;->FOLDER_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/miui/player/helper/FolderProvider;->getFolders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/miui/player/helper/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 70
    .local v7, folderCursor:Lcom/miui/player/helper/ArrayListCursor;
    invoke-virtual {v8, p0}, Lcom/miui/player/helper/FolderProvider;->addRefreshFolderListener(Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;)V

    .line 71
    invoke-virtual {v8}, Lcom/miui/player/helper/FolderProvider;->asyncRefreshDir()V

    .line 73
    const-string v0, "sort_key"

    invoke-virtual {v8}, Lcom/miui/player/helper/FolderProvider;->hasMiuiDownloadFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    :goto_0
    invoke-static {v7, v0, v1}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 75
    new-instance v0, Lcom/miui/player/model/FolderBrowserAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f030014

    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v11

    new-array v5, v10, [I

    const v6, 0x1020014

    aput v6, v5, v11

    iget-object v6, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFastScroller()Landroid/widget/FastScroller;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/model/FolderBrowserAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;)V

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    .line 82
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->inititalizeTab()V

    .line 84
    new-instance v0, Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;-><init>(Lcom/miui/player/ui/FolderBrowserActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMediaProviderObserver:Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;

    .line 85
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMediaProviderObserver:Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    return-void

    :cond_0
    move v1, v11

    .line 73
    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    const/4 v5, 0x0

    .line 128
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 130
    .local v1, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const/16 v3, 0x17

    const v4, 0x7f080024

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 131
    const/16 v3, 0x14

    const v4, 0x7f080025

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 132
    .local v2, sub:Landroid/view/SubMenu;
    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 133
    const/16 v3, 0x1d

    const v4, 0x7f080019

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 135
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-eqz v3, :cond_0

    .line 136
    const/16 v3, 0x1e

    const v4, 0x7f08001a

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 139
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 140
    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 142
    return-void
.end method

.method public onCreateOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 279
    const/4 v0, 0x7

    const v1, 0x7f0800b2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 280
    const/4 v0, 0x6

    const v1, 0x7f08003d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020036

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 99
    .local v2, lv:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sput v3, Lcom/miui/player/ui/FolderBrowserActivity;->mLastListPosCourse:I

    .line 101
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sput v3, Lcom/miui/player/ui/FolderBrowserActivity;->mLastListPosFine:I

    .line 106
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    invoke-virtual {v3, v4}, Lcom/miui/player/model/FolderBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 113
    :cond_1
    invoke-virtual {p0, v4}, Lcom/miui/player/ui/FolderBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iput-object v4, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    .line 115
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v1

    .line 116
    .local v1, folderProvider:Lcom/miui/player/helper/FolderProvider;
    invoke-virtual {v1, p0}, Lcom/miui/player/helper/FolderProvider;->removeRefreshFolder(Lcom/miui/player/helper/FolderProvider$RefreshFolderAsPlaylist;)V

    .line 117
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mMediaProviderObserver:Lcom/miui/player/ui/FolderBrowserActivity$MediaProviderObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 118
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onDestroy()V

    .line 119
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 208
    sparse-switch p1, :sswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 210
    :sswitch_0
    if-eqz p2, :cond_0

    .line 211
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 212
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 213
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mCurrentPath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/miui/player/MusicUtils;->getFolderAudioListId(Landroid/content/Context;Ljava/lang/String;)[J

    move-result-object v0

    .line 214
    .local v0, list:[J
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {p0, v0, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    goto :goto_0

    .line 220
    .end local v0           #list:[J
    .end local v1           #uri:Landroid/net/Uri;
    :sswitch_1
    if-nez p2, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->finish()V

    goto :goto_0

    .line 225
    :sswitch_2
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->refreshAfterRecovery()V

    goto :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x16 -> :sswitch_0
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v6, "num"

    .line 233
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gez v2, :cond_0

    .line 247
    :goto_0
    return-void

    .line 237
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.music.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v2, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v2, "folderpath"

    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v5, "path"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v4, "num"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, numStr:Ljava/lang/String;
    const-string v2, "num"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    invoke-static {p0, v0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelectedForParent(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 304
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 295
    :pswitch_0
    new-instance v1, Lcom/miui/player/helper/SleepModeManager;

    invoke-direct {v1}, Lcom/miui/player/helper/SleepModeManager;-><init>()V

    .line 296
    .local v1, sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/helper/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V

    move v2, v3

    .line 297
    goto :goto_0

    .line 299
    .end local v1           #sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/player/ui/PreferencesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v0, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v2, v3

    .line 301
    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public refreshAfterRecovery()V
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v0

    .line 355
    .local v0, folderProvider:Lcom/miui/player/helper/FolderProvider;
    invoke-virtual {v0}, Lcom/miui/player/helper/FolderProvider;->asyncRefreshDir()V

    .line 356
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshAfterRecovery()V

    .line 357
    return-void
.end method

.method public refreshBeforeRecovery()V
    .locals 2

    .prologue
    .line 361
    iget-boolean v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mIsMediaChanged:Z

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v0

    .line 363
    .local v0, folderProvider:Lcom/miui/player/helper/FolderProvider;
    invoke-virtual {v0}, Lcom/miui/player/helper/FolderProvider;->asyncRefreshDir()V

    .line 364
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mIsMediaChanged:Z

    .line 366
    .end local v0           #folderProvider:Lcom/miui/player/helper/FolderProvider;
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->refreshBeforeRecovery()V

    .line 367
    return-void
.end method

.method public refreshFolderPlaylistId()V
    .locals 5

    .prologue
    .line 309
    invoke-static {p0}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v1

    .line 310
    .local v1, folderProvider:Lcom/miui/player/helper/FolderProvider;
    new-instance v0, Lcom/miui/player/helper/ArrayListCursor;

    sget-object v2, Lcom/miui/player/model/FolderBrowserAdapter;->FOLDER_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/player/helper/FolderProvider;->getFolders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/miui/player/helper/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 312
    .local v0, folderCursor:Lcom/miui/player/helper/ArrayListCursor;
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_0
    const-string v2, "sort_key"

    invoke-virtual {v1}, Lcom/miui/player/helper/FolderProvider;->hasMiuiDownloadFolder()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {v0, v2, v3}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 317
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Lcom/miui/player/model/FolderBrowserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 319
    iget-object v2, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 320
    const v2, 0x7f0c0051

    const v3, 0x7f0800a1

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/FolderBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/player/helper/FolderProvider;->getFolderCount()I

    move-result v4

    invoke-static {p0, v2, v3, v4}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 324
    :cond_1
    return-void

    .line 315
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public scan()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 371
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/helper/FolderProvider;->instance(Landroid/content/Context;)Lcom/miui/player/helper/FolderProvider;

    move-result-object v8

    .line 374
    .local v8, folderProvider:Lcom/miui/player/helper/FolderProvider;
    invoke-virtual {v8}, Lcom/miui/player/helper/FolderProvider;->syncRefreshDir()V

    .line 375
    new-instance v7, Lcom/miui/player/helper/ArrayListCursor;

    sget-object v0, Lcom/miui/player/model/FolderBrowserAdapter;->FOLDER_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/miui/player/helper/FolderProvider;->getFolders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/miui/player/helper/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 377
    .local v7, folderCursor:Lcom/miui/player/helper/ArrayListCursor;
    const-string v0, "sort_key"

    invoke-virtual {v8}, Lcom/miui/player/helper/FolderProvider;->hasMiuiDownloadFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v6

    :goto_0
    invoke-static {v7, v0, v1}, Lcom/miui/player/model/SectionCursor;->wrap(Landroid/database/Cursor;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    .line 379
    new-instance v0, Lcom/miui/player/model/FolderBrowserAdapter;

    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f030014

    iget-object v3, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "name"

    aput-object v5, v4, v9

    new-array v5, v6, [I

    const v6, 0x1020014

    aput v6, v5, v9

    iget-object v6, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFastScroller()Landroid/widget/FastScroller;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/model/FolderBrowserAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILandroid/widget/FastScroller;)V

    iput-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    .line 386
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mFolderAdapter:Lcom/miui/player/model/FolderBrowserAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderBrowserActivity;->inititalizeTab()V

    .line 389
    .end local v7           #folderCursor:Lcom/miui/player/helper/ArrayListCursor;
    .end local v8           #folderProvider:Lcom/miui/player/helper/FolderProvider;
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->scan()V

    .line 390
    return-void

    .restart local v7       #folderCursor:Lcom/miui/player/helper/ArrayListCursor;
    .restart local v8       #folderProvider:Lcom/miui/player/helper/FolderProvider;
    :cond_1
    move v1, v9

    .line 377
    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/miui/player/ui/FolderBrowserActivity;->mList:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/miui/player/MusicUtils;->updateAlphabetScroller(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V

    .line 94
    return-void
.end method
