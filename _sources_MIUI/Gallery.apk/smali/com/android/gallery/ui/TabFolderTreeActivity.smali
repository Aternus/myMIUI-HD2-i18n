.class public Lcom/android/gallery/ui/TabFolderTreeActivity;
.super Landroid/app/Activity;
.source "TabFolderTreeActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/EditableListView$EditModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/widget/EditableListActionBar;

.field private mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

.field private mBucket:Lcom/android/gallery/data/FileBucket;

.field private mCheckedFavoriteFolderCount:I

.field private mCheckedFileCount:I

.field private mCheckedFolderCount:I

.field private mDropdownNavigation:Landroid/view/View;

.field private mFilterFlags:I

.field private mIsGetContent:Z

.field private mIsPickContent:Z

.field private mIsSetLockscreen:Z

.field private mIsSetWallpaper:Z

.field private mListView:Landroid/widget/EditableListView;

.field private mNavigationBar:Landroid/view/View;

.field private mNavigationBarText:Landroid/widget/TextView;

.field private mNavigationBarUpDownArrow:Landroid/widget/ImageView;

.field private mNavigationClick:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Ljava/lang/String;

.field private mSelectedFileInfo:Lcom/android/gallery/data/FileInfo;

.field private mShouldCrop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mFilterFlags:I

    .line 83
    new-instance v0, Lcom/android/gallery/ui/TabFolderTreeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/gallery/ui/TabFolderTreeActivity$1;-><init>(Lcom/android/gallery/ui/TabFolderTreeActivity;)V

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    sget-object v0, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mRoot:Ljava/lang/String;

    .line 420
    new-instance v0, Lcom/android/gallery/ui/TabFolderTreeActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery/ui/TabFolderTreeActivity$2;-><init>(Lcom/android/gallery/ui/TabFolderTreeActivity;)V

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mNavigationClick:Landroid/view/View$OnClickListener;

    .line 699
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/ui/TabFolderTreeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery/ui/TabFolderTreeActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->showDropdownNavigation(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery/ui/TabFolderTreeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->switchFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery/ui/TabFolderTreeActivity;)Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery/ui/TabFolderTreeActivity;)Lcom/android/gallery/data/FileBucket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    return-object v0
.end method

.method private addMenuItem(Landroid/view/Menu;III)V
    .locals 6
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"

    .prologue
    .line 627
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 628
    return-void
.end method

.method private addMenuItem(Landroid/view/Menu;IIII)V
    .locals 2
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"
    .parameter "iconId"

    .prologue
    .line 631
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 632
    .local v0, item:Landroid/view/MenuItem;
    if-eqz p5, :cond_0

    .line 633
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 635
    :cond_0
    return-void
.end method

.method private getDisplayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mRoot:Ljava/lang/String;

    const v1, 0x7f09008a

    invoke-virtual {p0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displayPath"

    .prologue
    .line 417
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mRoot:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedMetas()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery/data/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    iget-object v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v6}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    iget-object v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v6}, Landroid/widget/EditableListActionBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    .line 309
    .local v0, checkable:Landroid/widget/EditableListView$EditableListViewCheckable;
    if-eqz v0, :cond_2

    .line 310
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInPositions()Ljava/util/HashSet;

    move-result-object v5

    .line 311
    .local v5, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 312
    .local v2, index:I
    iget-object v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v6, v2}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->getItem(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v3

    .line 313
    .local v3, item:Lcom/android/gallery/data/FileInfo;
    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .end local v0           #checkable:Landroid/widget/EditableListView$EditableListViewCheckable;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #item:Lcom/android/gallery/data/FileInfo;
    .end local v5           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mSelectedFileInfo:Lcom/android/gallery/data/FileInfo;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_2
    return-object v4
.end method

.method private onDelete(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery/data/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, selectedMetas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->switchEditMode()V

    .line 457
    :cond_0
    new-instance v0, Lcom/android/gallery/ui/TabFolderTreeActivity$3;

    invoke-direct {v0, p0}, Lcom/android/gallery/ui/TabFolderTreeActivity$3;-><init>(Lcom/android/gallery/ui/TabFolderTreeActivity;)V

    .line 465
    .local v0, refresh:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    const v2, 0x7f09008b

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/gallery/app/AppHelper;->delete(Landroid/content/Context;Ljava/lang/Runnable;Lcom/android/gallery/data/FileBucket;Ljava/util/ArrayList;I)V

    .line 471
    return-void
.end method

.method private setupClick(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "id"

    .prologue
    .line 327
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 328
    .local v0, button:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :cond_0
    return-void

    .line 327
    .end local v0           #button:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private setupListView()V
    .locals 2

    .prologue
    .line 155
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListActionBar;

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    .line 156
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    const v1, 0x7f0c0024

    invoke-direct {p0, v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->setupClick(Landroid/view/View;I)V

    .line 157
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    const v1, 0x7f0c0022

    invoke-direct {p0, v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->setupClick(Landroid/view/View;I)V

    .line 158
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    const v1, 0x7f0c0023

    invoke-direct {p0, v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->setupClick(Landroid/view/View;I)V

    .line 160
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    .line 161
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setLongClickable(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 167
    new-instance v0, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-direct {v0, p0}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;-><init>(Lcom/android/gallery/ui/TabFolderTreeActivity;)V

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    .line 168
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    return-void
.end method

.method private setupNaivgationBar()V
    .locals 2

    .prologue
    .line 139
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mNavigationBar:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mNavigationBar:Landroid/view/View;

    const v1, 0x7f0c001b

    invoke-direct {p0, v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->setupClick(Landroid/view/View;I)V

    .line 141
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mNavigationBarText:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    .line 143
    const/4 v0, 0x0

    const v1, 0x7f0c0018

    invoke-direct {p0, v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->setupClick(Landroid/view/View;I)V

    .line 144
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mDropdownNavigation:Landroid/view/View;

    .line 145
    return-void
.end method

.method private showDropdownNavigation(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mDropdownNavigation:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f020057

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    return-void

    .line 148
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 149
    :cond_1
    const v1, 0x7f020056

    goto :goto_1
.end method

.method private switchFolder(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/android/gallery/util/PreferenceHelper;->setLastVisitedFolderPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    invoke-static {p1}, Lcom/android/gallery/data/FileBucket;->getBucket(Ljava/lang/String;)Lcom/android/gallery/data/FileBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    .line 291
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    iget v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mFilterFlags:I

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/FileBucket;->setFilterFlags(I)V

    .line 292
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v0}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->notifyDataSetChanged()V

    .line 293
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->updateUI()V

    .line 294
    return-void
.end method

.method private updateUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 263
    invoke-static {}, Lcom/android/gallery/util/StorageUtils;->quickHasStorage()Z

    move-result v2

    .line 265
    .local v2, sdCardReady:Z
    const v3, 0x7f0c001d

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    if-eqz v2, :cond_1

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/EditableListView;->setVisibility(I)V

    .line 268
    const v3, 0x7f0c0017

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 269
    .local v1, navigationBar:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 270
    iget-object v3, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mRoot:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v4}, Lcom/android/gallery/data/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v3, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mNavigationBarText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v4}, Lcom/android/gallery/data/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :goto_3
    const v3, 0x7f0c001c

    invoke-virtual {p0, v3}, Lcom/android/gallery/ui/TabFolderTreeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, emptyView:Landroid/view/View;
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v3}, Lcom/android/gallery/data/FileBucket;->isModified()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 279
    iget-object v3, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v3}, Lcom/android/gallery/data/FileBucket;->loadAllMedias()V

    .line 280
    iget-object v3, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v3}, Lcom/android/gallery/data/FileBucket;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    move v3, v6

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v3, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v3}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->notifyDataSetChanged()V

    .line 286
    :goto_5
    return-void

    .end local v0           #emptyView:Landroid/view/View;
    .end local v1           #navigationBar:Landroid/view/View;
    :cond_0
    move v4, v6

    .line 265
    goto :goto_0

    :cond_1
    move v4, v5

    .line 266
    goto :goto_1

    .restart local v1       #navigationBar:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 270
    goto :goto_2

    .line 274
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .restart local v0       #emptyView:Landroid/view/View;
    :cond_4
    move v3, v5

    .line 280
    goto :goto_4

    .line 284
    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v3}, Lcom/android/gallery/data/FileBucket;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    move v3, v6

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_6
    move v3, v5

    goto :goto_6
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v1

    .line 299
    .local v0, target:Landroid/app/Activity;
    :goto_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 300
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->finish()V

    .line 303
    :cond_0
    return-void

    .end local v0           #target:Landroid/app/Activity;
    :cond_1
    move-object v0, p0

    .line 298
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mDropdownNavigation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->switchEditMode()V

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onOperationUpLevel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 7
    .parameter "checkable"

    .prologue
    const/4 v6, 0x0

    .line 184
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->getToggledIndex()Ljava/lang/Integer;

    move-result-object v3

    .line 185
    .local v3, lastToggledIndex:Ljava/lang/Integer;
    if-eqz v3, :cond_4

    .line 186
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckStateByPos(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v1, v4

    .line 187
    .local v1, delta:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->getItem(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v2

    .line 188
    .local v2, info:Lcom/android/gallery/data/FileInfo;
    invoke-virtual {v2}, Lcom/android/gallery/data/FileInfo;->isDir()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    iget v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFolderCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFolderCount:I

    .line 190
    check-cast v2, Lcom/android/gallery/data/DirInfo;

    .end local v2           #info:Lcom/android/gallery/data/FileInfo;
    invoke-virtual {v2}, Lcom/android/gallery/data/DirInfo;->isFavorite()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    iget v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFavoriteFolderCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFavoriteFolderCount:I

    .line 211
    .end local v1           #delta:I
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    const v5, 0x7f0c0023

    invoke-virtual {v4, v5}, Landroid/widget/EditableListActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 212
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFileCount:I

    if-nez v4, :cond_7

    .line 214
    iget v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFolderCount:I

    iget v5, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFavoriteFolderCount:I

    if-le v4, v5, :cond_6

    const v4, 0x7f090029

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 225
    :goto_3
    iget v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFileCount:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFolderCount:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v4}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v4}, Landroid/widget/EditableListView;->switchEditMode()V

    .line 228
    :cond_1
    return-void

    .line 186
    .end local v0           #button:Landroid/widget/Button;
    :cond_2
    const/4 v4, -0x1

    move v1, v4

    goto :goto_0

    .line 195
    .restart local v1       #delta:I
    .restart local v2       #info:Lcom/android/gallery/data/FileInfo;
    :cond_3
    iget v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFileCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFileCount:I

    goto :goto_1

    .line 199
    .end local v1           #delta:I
    .end local v2           #info:Lcom/android/gallery/data/FileInfo;
    :cond_4
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 200
    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    iget v4, v4, Lcom/android/gallery/data/FileBucket;->mFavoriteFolderCount:I

    iput v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFavoriteFolderCount:I

    .line 201
    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v4}, Lcom/android/gallery/data/FileBucket;->getFileCount()I

    move-result v4

    iput v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFileCount:I

    .line 202
    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v4}, Lcom/android/gallery/data/FileBucket;->getCount()I

    move-result v4

    iget v5, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFileCount:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFolderCount:I

    goto :goto_1

    .line 205
    :cond_5
    iput v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFavoriteFolderCount:I

    .line 206
    iput v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFolderCount:I

    .line 207
    iput v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFileCount:I

    goto :goto_1

    .line 214
    .restart local v0       #button:Landroid/widget/Button;
    :cond_6
    const v4, 0x7f090028

    goto :goto_2

    .line 218
    :cond_7
    iget v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFolderCount:I

    if-nez v4, :cond_8

    .line 219
    const v4, 0x7f090035

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 222
    :cond_8
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 337
    :sswitch_0
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v5

    .line 339
    .local v5, selectedMetas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    iget v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFileCount:I

    if-nez v6, :cond_3

    .line 340
    iget v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFavoriteFolderCount:I

    iget v7, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFolderCount:I

    if-ge v6, v7, :cond_1

    const/4 v6, 0x1

    move v4, v6

    .line 341
    .local v4, mark:Z
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery/data/FileInfo;

    .line 342
    .local v2, f:Lcom/android/gallery/data/BaseMeta;
    iget-object v6, v2, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery/data/BucketExt;->getBucketExtData(Ljava/lang/String;)Lcom/android/gallery/data/BucketExt$BucketExtData;

    move-result-object v1

    .line 343
    .local v1, data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    invoke-virtual {v1, v4}, Lcom/android/gallery/data/BucketExt$BucketExtData;->setIsFavorite(Z)V

    goto :goto_2

    .line 340
    .end local v1           #data:Lcom/android/gallery/data/BucketExt$BucketExtData;
    .end local v2           #f:Lcom/android/gallery/data/BaseMeta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mark:Z
    :cond_1
    const/4 v6, 0x0

    move v4, v6

    goto :goto_1

    .line 345
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #mark:Z
    :cond_2
    iget-object v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v6}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->notifyDataSetChanged()V

    .line 350
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mark:Z
    :goto_3
    iget-object v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v6}, Landroid/widget/EditableListView;->switchEditMode()V

    goto :goto_0

    .line 348
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onOperationSend()V

    goto :goto_3

    .line 353
    .end local v5           #selectedMetas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    :sswitch_1
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onDelete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 356
    :sswitch_2
    iget-object v6, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v6}, Landroid/widget/EditableListActionBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    .line 357
    .local v0, checkable:Landroid/widget/EditableListView$EditableListViewCheckable;
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkAll()V

    goto :goto_0

    .line 362
    .end local v0           #checkable:Landroid/widget/EditableListView$EditableListViewCheckable;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onNavigationBarClick()V

    goto :goto_0

    .line 365
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onOperationUpLevel()Z

    goto :goto_0

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x7f0c0018 -> :sswitch_3
        0x7f0c001b -> :sswitch_4
        0x7f0c0022 -> :sswitch_1
        0x7f0c0023 -> :sswitch_0
        0x7f0c0024 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/gallery/app/AppHelper;->isGetContent(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsGetContent:Z

    .line 109
    invoke-static {v0}, Lcom/android/gallery/app/AppHelper;->isSetWallpaper(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsSetWallpaper:Z

    .line 110
    invoke-static {v0}, Lcom/android/gallery/app/AppHelper;->isSetLockScreen(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsSetLockscreen:Z

    .line 111
    invoke-static {v0}, Lcom/android/gallery/app/AppHelper;->isPick(Landroid/content/Intent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsPickContent:Z

    .line 112
    const-string v2, "true"

    const-string v3, "crop"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mShouldCrop:Z

    .line 114
    iget-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsSetWallpaper:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsSetLockscreen:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mShouldCrop:Z

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    iget v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mFilterFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mFilterFlags:I

    .line 118
    :cond_1
    invoke-static {p0}, Lcom/android/gallery/util/PreferenceHelper;->getLastVisitedFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery/data/FileBucket;->getBucket(Ljava/lang/String;)Lcom/android/gallery/data/FileBucket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    .line 121
    iget-object v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    iget v3, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mFilterFlags:I

    invoke-virtual {v2, v3}, Lcom/android/gallery/data/FileBucket;->setFilterFlags(I)V

    .line 123
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/TabFolderTreeActivity;->setContentView(I)V

    .line 124
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->setupNaivgationBar()V

    .line 125
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->setupListView()V

    .line 127
    iget-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsGetContent:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsSetWallpaper:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsSetLockscreen:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsPickContent:Z

    if-nez v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mListView:Landroid/widget/EditableListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 131
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v8, 0x7f090085

    const/16 v7, 0x9

    const/4 v6, 0x0

    .line 559
    invoke-direct {p0, v6}, Lcom/android/gallery/ui/TabFolderTreeActivity;->showDropdownNavigation(Z)V

    .line 561
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 562
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v4, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v5}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->getItem(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v1

    .line 563
    .local v1, file:Lcom/android/gallery/data/FileInfo;
    iput-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mSelectedFileInfo:Lcom/android/gallery/data/FileInfo;

    .line 564
    if-eqz v1, :cond_1

    .line 565
    iget-object v4, v1, Lcom/android/gallery/data/FileInfo;->mFileName:Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 566
    invoke-virtual {v1}, Lcom/android/gallery/data/FileInfo;->isDir()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 567
    move-object v0, v1

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/gallery/data/DirInfo;->getCustomizedCover()Lcom/android/gallery/data/BaseMeta;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 568
    const/16 v4, 0x15

    const v5, 0x7f09002c

    invoke-direct {p0, p1, v4, v6, v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 570
    :cond_0
    const/16 v4, 0x16

    check-cast v1, Lcom/android/gallery/data/DirInfo;

    .end local v1           #file:Lcom/android/gallery/data/FileInfo;
    invoke-virtual {v1}, Lcom/android/gallery/data/DirInfo;->isFavorite()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f090028

    :goto_0
    invoke-direct {p0, p1, v4, v6, v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 572
    invoke-direct {p0, p1, v7, v6, v8}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 587
    :cond_1
    :goto_1
    return-void

    .line 570
    :cond_2
    const v5, 0x7f090029

    goto :goto_0

    .line 574
    .restart local v1       #file:Lcom/android/gallery/data/FileInfo;
    :cond_3
    const/16 v4, 0x11

    const v5, 0x7f09002d

    invoke-direct {p0, p1, v4, v6, v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 576
    invoke-virtual {v1}, Lcom/android/gallery/data/FileInfo;->isVideo()Z

    move-result v4

    if-nez v4, :cond_4

    .line 577
    const/16 v4, 0x12

    const v5, 0x7f090054

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v3

    .line 578
    .local v3, wallpaperMenu:Landroid/view/SubMenu;
    const/16 v4, 0x13

    const v5, 0x7f090055

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 579
    const/16 v4, 0x14

    const v5, 0x7f090056

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 582
    .end local v3           #wallpaperMenu:Landroid/view/SubMenu;
    :cond_4
    const/4 v4, 0x7

    const v5, 0x7f090083

    invoke-direct {p0, p1, v4, v6, v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 583
    const/16 v4, 0xa

    const v5, 0x7f090086

    invoke-direct {p0, p1, v4, v6, v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 584
    invoke-direct {p0, p1, v7, v6, v8}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 591
    invoke-direct {p0, v3}, Lcom/android/gallery/ui/TabFolderTreeActivity;->showDropdownNavigation(Z)V

    .line 593
    const/4 v0, 0x3

    const v1, 0x7f09007f

    invoke-interface {p1, v3, v0, v7, v1}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v6

    .line 594
    .local v6, sortMenu:Landroid/view/SubMenu;
    const v0, 0x7f020042

    invoke-interface {v6, v0}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 596
    const/16 v0, 0xb

    const v1, 0x7f090080

    invoke-direct {p0, v6, v0, v3, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 597
    const/16 v0, 0xc

    const v1, 0x7f090081

    invoke-direct {p0, v6, v0, v7, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 598
    const/16 v0, 0xd

    const/4 v1, 0x2

    const v2, 0x7f090082

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;III)V

    .line 600
    invoke-interface {v6, v3, v7, v7}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 602
    const/16 v2, 0xf

    const/4 v3, 0x6

    const v4, 0x7f090088

    const v5, 0x7f020040

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 603
    const/16 v2, 0x17

    const/4 v3, 0x7

    const v4, 0x7f090016

    const v5, 0x7f020041

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery/ui/TabFolderTreeActivity;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 604
    return v7
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 260
    return-void
.end method

.method public onEnterEditMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFavoriteFolderCount:I

    .line 174
    iput v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFolderCount:I

    .line 175
    iput v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mCheckedFileCount:I

    .line 176
    return-void
.end method

.method public onExitEditMode()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onFileClick(Lcom/android/gallery/data/FileInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 657
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 659
    :goto_0
    iget-boolean v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsGetContent:Z

    if-eqz v1, :cond_3

    .line 660
    iget-boolean v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mShouldCrop:Z

    if-eqz v1, :cond_2

    .line 661
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/gallery/app/AppHelper;->createCropImageIntent(Lcom/android/gallery/data/BaseMeta;Z)Landroid/content/Intent;

    move-result-object v0

    .line 662
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 663
    if-eqz v1, :cond_0

    .line 664
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 666
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 697
    :goto_1
    return-void

    :cond_1
    move-object v0, p0

    .line 657
    goto :goto_0

    .line 668
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 669
    invoke-static {p0, p1}, Lcom/android/gallery/util/Utils;->getContentUri(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 670
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 671
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->finish()V

    goto :goto_1

    .line 695
    :catch_0
    move-exception v0

    goto :goto_1

    .line 673
    :cond_3
    iget-boolean v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsSetWallpaper:Z

    if-eqz v1, :cond_4

    .line 674
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/gallery/app/AppHelper;->createWallpaperIntent(ZLcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 675
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 676
    :cond_4
    iget-boolean v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsSetLockscreen:Z

    if-eqz v1, :cond_5

    .line 677
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/gallery/app/AppHelper;->createWallpaperIntent(ZLcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 678
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 679
    :cond_5
    iget-boolean v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mIsPickContent:Z

    if-eqz v1, :cond_6

    .line 680
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 681
    iget-object v2, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery/util/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 682
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->finish()V

    goto :goto_1

    .line 685
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 686
    iget-object v1, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery/util/Utils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p1}, Lcom/android/gallery/data/FileInfo;->isVideo()Z

    move-result v1

    if-nez v1, :cond_7

    .line 688
    const-class v1, Lcom/android/gallery/ui/SingleViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 693
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 690
    :cond_7
    const-string v1, "android.intent.extra.finishOnCompletion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 691
    const-class v1, Lcom/android/gallery/ui/MovieView;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 639
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->getItem(I)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    .line 640
    .local v0, info:Lcom/android/gallery/data/FileInfo;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->showDropdownNavigation(Z)V

    .line 642
    if-nez v0, :cond_0

    .line 643
    const-string v1, "FileViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file does not exist on position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery/data/FileInfo;->isDir()Z

    move-result v1

    if-nez v1, :cond_1

    .line 648
    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onFileClick(Lcom/android/gallery/data/FileInfo;)V

    goto :goto_0

    .line 652
    :cond_1
    iget-object v1, v0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->switchFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 494
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 495
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 552
    :goto_0
    return v0

    .line 497
    :pswitch_1
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->updateUI()V

    :goto_1
    :pswitch_2
    move v0, v2

    .line 552
    goto :goto_0

    .line 500
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 501
    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onSortChanged(I)V

    goto :goto_1

    .line 504
    :pswitch_4
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 505
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onSortChanged(I)V

    goto :goto_1

    .line 508
    :pswitch_5
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 509
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onSortChanged(I)V

    goto :goto_1

    .line 512
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onOperationSend()V

    goto :goto_1

    .line 515
    :pswitch_7
    new-instance v0, Lcom/android/gallery/ui/TextInputDialog;

    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mSelectedFileInfo:Lcom/android/gallery/data/FileInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery/ui/TextInputDialog;-><init>(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)V

    invoke-virtual {v0}, Lcom/android/gallery/ui/TextInputDialog;->show()V

    goto :goto_1

    .line 518
    :pswitch_8
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->onDelete(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 521
    :pswitch_9
    new-instance v0, Lcom/android/gallery/ui/InformationDialog;

    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mSelectedFileInfo:Lcom/android/gallery/data/FileInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery/ui/InformationDialog;-><init>(Landroid/content/Context;Lcom/android/gallery/data/BaseMeta;)V

    invoke-virtual {v0}, Lcom/android/gallery/ui/InformationDialog;->show()V

    goto :goto_1

    .line 524
    :pswitch_a
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mSelectedFileInfo:Lcom/android/gallery/data/FileInfo;

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/DirInfo;->setCustomizedCover(Lcom/android/gallery/data/BaseMeta;)V

    .line 525
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v0}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 528
    :pswitch_b
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mSelectedFileInfo:Lcom/android/gallery/data/FileInfo;

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/FileBucket;->setCustomizedCover(Lcom/android/gallery/data/FileInfo;)V

    goto :goto_1

    .line 534
    :pswitch_c
    const/16 v1, 0x14

    if-ne v1, v0, :cond_0

    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mSelectedFileInfo:Lcom/android/gallery/data/FileInfo;

    invoke-static {v0, v1}, Lcom/android/gallery/app/AppHelper;->createWallpaperIntent(ZLcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    .line 537
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery/ui/TabFolderTreeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_0
    move v0, v3

    .line 534
    goto :goto_2

    .line 540
    :pswitch_d
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mSelectedFileInfo:Lcom/android/gallery/data/FileInfo;

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    .line 541
    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo;->isFavorite()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/gallery/data/DirInfo;->setFavorite(Z)V

    .line 542
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v0}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_1
    move v1, v3

    .line 541
    goto :goto_3

    .line 545
    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery/ui/GalleryPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 495
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected onNavigationBarClick()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x0

    .line 371
    iget-object v10, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 372
    invoke-direct {p0, v13}, Lcom/android/gallery/ui/TabFolderTreeActivity;->showDropdownNavigation(Z)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v10, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mDropdownNavigation:Landroid/view/View;

    const v11, 0x7f0c0020

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 376
    .local v4, list:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 378
    iget-object v10, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v10}, Lcom/android/gallery/data/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, displayPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 380
    .local v7, pos:I
    const/4 v3, 0x0

    .line 381
    .local v3, left:I
    :goto_1
    if-eq v7, v14, :cond_2

    .line 382
    const-string v10, "/"

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 383
    .local v1, end:I
    if-ne v1, v14, :cond_3

    .line 406
    .end local v1           #end:I
    :cond_2
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-lez v10, :cond_0

    .line 407
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/gallery/ui/TabFolderTreeActivity;->showDropdownNavigation(Z)V

    goto :goto_0

    .line 385
    .restart local v1       #end:I
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030004

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 386
    .local v6, listItem:Landroid/view/View;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    const v10, 0x7f0c000a

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 389
    .local v2, img:Landroid/widget/ImageView;
    if-nez v3, :cond_4

    const v10, 0x7f02001b

    :goto_2
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    const v10, 0x7f0c0009

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 394
    .local v5, listContent:Landroid/view/View;
    invoke-virtual {v5, v3, v13, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 395
    add-int/lit8 v3, v3, 0x14

    .line 397
    const v10, 0x7f0c000b

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 398
    .local v9, text:Landroid/widget/TextView;
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, substring:Ljava/lang/String;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    add-int/lit8 v7, v1, 0x1

    .line 402
    iget-object v10, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mNavigationClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 389
    .end local v5           #listContent:Landroid/view/View;
    .end local v8           #substring:Ljava/lang/String;
    .end local v9           #text:Landroid/widget/TextView;
    :cond_4
    const v10, 0x7f02001a

    goto :goto_2
.end method

.method public onOperationSend()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->getSelectedMetas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery/app/AppHelper;->send(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 450
    return-void
.end method

.method public onOperationUpLevel()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    invoke-direct {p0, v2}, Lcom/android/gallery/ui/TabFolderTreeActivity;->showDropdownNavigation(Z)V

    .line 433
    invoke-static {}, Lcom/android/gallery/util/StorageUtils;->quickHasStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->getParentPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->switchFolder(Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 609
    const/16 v0, 0xd

    .line 610
    .local v0, id:I
    iget-object v1, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v1}, Lcom/android/gallery/data/FileBucket;->getSortOrder()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 621
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 623
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 612
    :pswitch_0
    const/16 v0, 0xb

    .line 613
    goto :goto_0

    .line 615
    :pswitch_1
    const/16 v0, 0xc

    .line 616
    goto :goto_0

    .line 618
    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/16 v0, 0xb

    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 233
    invoke-static {v0}, Lcom/android/gallery/data/ThumbnailCacheManager;->setMaxTaskNum(I)V

    .line 234
    invoke-static {v0}, Lcom/android/gallery/data/BaseMeta;->setMaxTaskNum(I)V

    .line 235
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->updateUI()V

    .line 236
    return-void
.end method

.method public onSortChanged(I)V
    .locals 1
    .parameter "s"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0}, Lcom/android/gallery/data/FileBucket;->getSortOrder()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mBucket:Lcom/android/gallery/data/FileBucket;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/FileBucket;->setSortOrder(I)V

    .line 444
    iget-object v0, p0, Lcom/android/gallery/ui/TabFolderTreeActivity;->mAdapter:Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;

    invoke-virtual {v0}, Lcom/android/gallery/ui/TabFolderTreeActivity$FileListAdapter;->notifyDataSetChanged()V

    .line 446
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 241
    if-eqz p1, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/gallery/ui/TabFolderTreeActivity;->updateUI()V

    .line 244
    :cond_0
    return-void
.end method
