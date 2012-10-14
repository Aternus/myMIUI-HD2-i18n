.class public abstract Lcom/android/gallery/ui/FolderListActivity;
.super Landroid/app/Activity;
.source "FolderListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

.field protected mCurrSortOrder:I

.field protected mGrid:Landroid/widget/GridView;

.field protected mMediaCache:Lcom/android/gallery/data/MediaCache;

.field private mParameter:Lcom/android/gallery/data/NotificationParameter;

.field protected mToast:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mMediaCache:Lcom/android/gallery/data/MediaCache;

    .line 233
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderListActivity;->setupGrid()V

    .line 66
    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/FolderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery/ui/FolderListActivity;->mToast:Landroid/view/View;

    .line 67
    iget-object v1, p0, Lcom/android/gallery/ui/FolderListActivity;->mToast:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    .local v0, toastText:Landroid/widget/TextView;
    const v1, 0x1040016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->createNotifySpec()Lcom/android/gallery/data/NotificationParameter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery/ui/FolderListActivity;->mParameter:Lcom/android/gallery/data/NotificationParameter;

    .line 71
    return-void
.end method

.method private setupGrid()V
    .locals 2

    .prologue
    .line 224
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mGrid:Landroid/widget/GridView;

    .line 225
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mGrid:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    return-void
.end method


# virtual methods
.method protected createNotifySpec()Lcom/android/gallery/data/NotificationParameter;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/android/gallery/data/NotificationParameter;

    new-instance v1, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;

    invoke-direct {v1, p0}, Lcom/android/gallery/ui/FolderListActivity$RefreshHandler;-><init>(Lcom/android/gallery/ui/FolderListActivity;)V

    invoke-direct {v0, v1}, Lcom/android/gallery/data/NotificationParameter;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method protected getCurrSortOrder()I
    .locals 3

    .prologue
    .line 274
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->getSortOrderPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected abstract getSortOrderPreferenceKey()Ljava/lang/String;
.end method

.method protected isShowFavoriteOnly()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v1

    .line 97
    .local v0, target:Landroid/app/Activity;
    :goto_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 98
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->finish()V

    .line 101
    :cond_0
    return-void

    .end local v0           #target:Landroid/app/Activity;
    :cond_1
    move-object v0, p0

    .line 96
    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 188
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 189
    .local v2, position:I
    iget-object v4, p0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/gallery/ui/FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    .line 191
    .local v0, bucket:Lcom/android/gallery/data/DirInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 193
    :pswitch_0
    iget-object v4, p0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/gallery/ui/FolderListAdapter;->toggleFavorite(I)V

    move v4, v6

    .line 194
    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v4, p0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/gallery/ui/FolderListAdapter;->toggleHidden(I)V

    move v4, v6

    .line 198
    goto :goto_0

    .line 201
    :pswitch_2
    invoke-virtual {v0, v7}, Lcom/android/gallery/data/DirInfo;->setCustomizedCover(Lcom/android/gallery/data/BaseMeta;)V

    .line 202
    iget-object v4, p0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    invoke-virtual {v4}, Lcom/android/gallery/ui/FolderListAdapter;->notifyDataSetChanged()V

    move v4, v6

    .line 203
    goto :goto_0

    .line 206
    :pswitch_3
    new-instance v3, Lcom/android/gallery/ui/FolderListActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/android/gallery/ui/FolderListActivity$1;-><init>(Lcom/android/gallery/ui/FolderListActivity;I)V

    .line 212
    .local v3, refresh:Ljava/lang/Runnable;
    iget-object v4, v0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery/data/FileBucket;->getBucket(Ljava/lang/String;)Lcom/android/gallery/data/FileBucket;

    move-result-object v4

    const v5, 0x7f090018

    invoke-static {p0, v3, v4, v7, v5}, Lcom/android/gallery/app/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;I)V

    move v4, v6

    .line 218
    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0065
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderListActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderListActivity;->init()V

    .line 53
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mGrid:Landroid/widget/GridView;

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderListActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->getCurrSortOrder()I

    move-result v0

    iput v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mCurrSortOrder:I

    .line 55
    new-instance v0, Lcom/android/gallery/ui/FolderListAdapter;

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/gallery/ui/FolderListActivity;->mCurrSortOrder:I

    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->isShowFavoriteOnly()Z

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/gallery/ui/FolderListAdapter;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    .line 56
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 163
    .local v2, inflater:Landroid/view/MenuInflater;
    const/high16 v4, 0x7f0b

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 165
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 166
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    iget v5, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/android/gallery/ui/FolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/data/DirInfo;

    .line 169
    .local v1, bucket:Lcom/android/gallery/data/DirInfo;
    invoke-virtual {v1, p0}, Lcom/android/gallery/data/DirInfo;->getTilte(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 172
    const v4, 0x7f0c0065

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/gallery/data/DirInfo;->isFavorite()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f090028

    :goto_0
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 176
    const v4, 0x7f0c0066

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/gallery/data/DirInfo;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f09002a

    :goto_1
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 180
    invoke-virtual {v1}, Lcom/android/gallery/data/DirInfo;->getCustomizedCover()Lcom/android/gallery/data/BaseMeta;

    move-result-object v4

    if-nez v4, :cond_0

    .line 181
    const v4, 0x7f0c0067

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 183
    :cond_0
    return-void

    .line 172
    :cond_1
    const v5, 0x7f090029

    goto :goto_0

    .line 176
    :cond_2
    const v5, 0x7f09002b

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 106
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    .line 258
    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo;->increaseFrequency()V

    .line 260
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 265
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/gallery/ui/FolderViewActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 266
    const-string v2, "folder_path"

    iget-object v0, v0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery/ui/FolderListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 136
    invoke-static {p1}, Lcom/android/gallery/app/AppHelper;->handleSortOptionsItem(Landroid/view/MenuItem;)I

    move-result v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    iget v1, p0, Lcom/android/gallery/ui/FolderListActivity;->mCurrSortOrder:I

    if-eq v1, v0, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderListActivity;->updateCurrSortOrder(I)V

    :cond_0
    move v0, v2

    .line 156
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 156
    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mMediaCache:Lcom/android/gallery/data/MediaCache;

    invoke-virtual {v0}, Lcom/android/gallery/data/MediaCache;->triggerMediaMounted()V

    .line 147
    const v0, 0x7f090007

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 148
    goto :goto_0

    .line 150
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    const-class v1, Lcom/android/gallery/ui/GalleryPreferenceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/FolderListActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 153
    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x7f0c0071
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mMediaCache:Lcom/android/gallery/data/MediaCache;

    iget-object v1, p0, Lcom/android/gallery/ui/FolderListActivity;->mParameter:Lcom/android/gallery/data/NotificationParameter;

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/MediaCache;->unregisterChange(Lcom/android/gallery/data/NotificationParameter;)V

    .line 77
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    .line 112
    iget v3, p0, Lcom/android/gallery/ui/FolderListActivity;->mCurrSortOrder:I

    invoke-static {p0, p1, v3}, Lcom/android/gallery/app/AppHelper;->prepareSortOptionsMenu(Landroid/content/Context;Landroid/view/Menu;I)V

    .line 114
    iget-object v3, p0, Lcom/android/gallery/ui/FolderListActivity;->mMediaCache:Lcom/android/gallery/data/MediaCache;

    invoke-virtual {v3}, Lcom/android/gallery/data/MediaCache;->isMediaEjected()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/gallery/ui/FolderListActivity;->mMediaCache:Lcom/android/gallery/data/MediaCache;

    invoke-virtual {v3}, Lcom/android/gallery/data/MediaCache;->isScanning()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v5

    .line 115
    .local v2, supportRescan:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 116
    const/4 v0, 0x0

    .local v0, retry:I
    move v1, v0

    .line 119
    .end local v0           #retry:I
    .local v1, retry:I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1           #retry:I
    .restart local v0       #retry:I
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 120
    invoke-static {v5}, Lcom/android/gallery/util/StorageUtils;->hasStorage(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    const/4 v2, 0x0

    .line 130
    .end local v0           #retry:I
    :cond_0
    const v3, 0x7f0c0074

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 131
    return v5

    .line 114
    .end local v2           #supportRescan:Z
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 125
    .restart local v0       #retry:I
    .restart local v2       #supportRescan:Z
    :cond_2
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 127
    .end local v0           #retry:I
    .restart local v1       #retry:I
    goto :goto_1

    .line 126
    .end local v1           #retry:I
    .restart local v0       #retry:I
    :catch_0
    move-exception v3

    move v1, v0

    .line 127
    .end local v0           #retry:I
    .restart local v1       #retry:I
    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mToast:Landroid/view/View;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-static {v2}, Lcom/android/gallery/data/ThumbnailCacheManager;->setMaxTaskNum(I)V

    .line 86
    invoke-static {v2}, Lcom/android/gallery/data/BaseMeta;->setMaxTaskNum(I)V

    .line 89
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mMediaCache:Lcom/android/gallery/data/MediaCache;

    iget-object v1, p0, Lcom/android/gallery/ui/FolderListActivity;->mParameter:Lcom/android/gallery/data/NotificationParameter;

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/MediaCache;->registerChange(Lcom/android/gallery/data/NotificationParameter;)V

    .line 91
    iget-object v0, p0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    invoke-virtual {v0}, Lcom/android/gallery/ui/FolderListAdapter;->resetData()V

    .line 92
    return-void

    .line 83
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateCurrSortOrder(I)V
    .locals 4
    .parameter "newSortOrder"

    .prologue
    .line 279
    iput p1, p0, Lcom/android/gallery/ui/FolderListActivity;->mCurrSortOrder:I

    .line 280
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 281
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 282
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/gallery/ui/FolderListActivity;->getSortOrderPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    iget-object v2, p0, Lcom/android/gallery/ui/FolderListActivity;->mAdapter:Lcom/android/gallery/ui/FolderListAdapter;

    iget v3, p0, Lcom/android/gallery/ui/FolderListActivity;->mCurrSortOrder:I

    invoke-virtual {v2, v3}, Lcom/android/gallery/ui/FolderListAdapter;->setSortOrder(I)V

    .line 286
    return-void
.end method
