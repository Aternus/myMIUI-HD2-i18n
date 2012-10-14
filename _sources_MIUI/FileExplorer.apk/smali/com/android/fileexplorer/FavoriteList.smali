.class public Lcom/android/fileexplorer/FavoriteList;
.super Ljava/lang/Object;
.source "FavoriteList.java"

# interfaces
.implements Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFavoriteDatabase:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

.field private mFavoriteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/fileexplorer/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mListViewContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mListener:Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;

.field private menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;Lcom/android/fileexplorer/FileIconHelper;)V
    .locals 3
    .parameter "context"
    .parameter "list"
    .parameter "listener"
    .parameter "iconHelper"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Lcom/android/fileexplorer/FavoriteList$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FavoriteList$3;-><init>(Lcom/android/fileexplorer/FavoriteList;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mListViewContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 162
    new-instance v0, Lcom/android/fileexplorer/FavoriteList$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FavoriteList$4;-><init>(Lcom/android/fileexplorer/FavoriteList;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 43
    iput-object p1, p0, Lcom/android/fileexplorer/FavoriteList;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    invoke-direct {v0, p1, p0}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteDatabase:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    .line 46
    new-instance v0, Lcom/android/fileexplorer/FavoriteListAdapter;

    const v1, 0x7f030001

    iget-object v2, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1, v2, p4}, Lcom/android/fileexplorer/FavoriteListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/android/fileexplorer/FileIconHelper;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteListAdapter:Landroid/widget/ArrayAdapter;

    .line 47
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/FavoriteList;->setupFavoriteListView(Landroid/widget/ListView;)V

    .line 48
    iput-object p3, p0, Lcom/android/fileexplorer/FavoriteList;->mListener:Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/FavoriteList;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/FavoriteList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FavoriteList;->deleteFavorite(I)V

    return-void
.end method

.method private deleteFavorite(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FavoriteItem;

    .line 187
    .local v0, favorite:Lcom/android/fileexplorer/FavoriteItem;
    iget-object v1, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteDatabase:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    iget-wide v2, v0, Lcom/android/fileexplorer/FavoriteItem;->id:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->delete(JZ)V

    .line 188
    iget-object v1, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 190
    iget-object v1, p0, Lcom/android/fileexplorer/FavoriteList;->mListener:Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;

    invoke-interface {v1}, Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;->onFavoriteDatabaseChanged()V

    .line 191
    return-void
.end method

.method private setupFavoriteListView(Landroid/widget/ListView;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/fileexplorer/FavoriteList;->mListView:Landroid/widget/ListView;

    .line 110
    iget-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/fileexplorer/FavoriteList;->mListViewContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/fileexplorer/FavoriteList$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FavoriteList$1;-><init>(Lcom/android/fileexplorer/FavoriteList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public getArrayAdapter()Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/fileexplorer/FavoriteItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public initList()V
    .locals 6

    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteDatabase:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->query()Landroid/database/Cursor;

    move-result-object v0

    .line 88
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteDatabase:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->isFirstCreate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/fileexplorer/Util;->getDefaultFavorites(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/FavoriteItem;

    .line 93
    .local v1, fi:Lcom/android/fileexplorer/FavoriteItem;
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteDatabase:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    iget-object v4, v1, Lcom/android/fileexplorer/FavoriteItem;->title:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/fileexplorer/FavoriteItem;->location:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->insert(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0

    .line 97
    .end local v1           #fi:Lcom/android/fileexplorer/FavoriteItem;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FavoriteList;->update()V

    .line 98
    return-void
.end method

.method public onFavoriteDatabaseChanged()V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/fileexplorer/FavoriteList;->update()V

    .line 196
    iget-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mListener:Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;->onFavoriteDatabaseChanged()V

    .line 197
    return-void
.end method

.method public onFavoriteListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 122
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/FavoriteItem;

    .line 124
    .local v2, favorite:Lcom/android/fileexplorer/FavoriteItem;
    iget-object v3, v2, Lcom/android/fileexplorer/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-boolean v3, v3, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v3, :cond_1

    .line 125
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v3

    const-string v4, "FileView"

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/ActivitiesManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileViewActivity;

    .line 127
    .local v0, ac:Lcom/android/fileexplorer/FileViewActivity;
    if-eqz v0, :cond_0

    .line 128
    iget-object v3, v2, Lcom/android/fileexplorer/FavoriteItem;->location:Ljava/lang/String;

    new-instance v4, Lcom/android/fileexplorer/FavoriteList$2;

    invoke-direct {v4, p0}, Lcom/android/fileexplorer/FavoriteList$2;-><init>(Lcom/android/fileexplorer/FavoriteList;)V

    invoke-virtual {v0, v3, v4}, Lcom/android/fileexplorer/FileViewActivity;->setPath(Ljava/lang/String;Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;)Z

    .line 138
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/fileexplorer/Util;->showTab(I)V

    .line 148
    .end local v0           #ac:Lcom/android/fileexplorer/FileViewActivity;
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/fileexplorer/FavoriteList;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/android/fileexplorer/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/FileInfo;

    iget-object v4, v4, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/fileexplorer/IntentBuilder;->viewFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 145
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "FavoriteList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to view file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public show(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/fileexplorer/FavoriteList;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 106
    return-void

    .line 105
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public update()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 56
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 58
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteDatabase:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->query()Landroid/database/Cursor;

    move-result-object v0

    .line 59
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 60
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    new-instance v4, Lcom/android/fileexplorer/FavoriteItem;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/fileexplorer/FavoriteItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v4, item:Lcom/android/fileexplorer/FavoriteItem;
    iget-object v5, v4, Lcom/android/fileexplorer/FavoriteItem;->location:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/fileexplorer/Util;->GetFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/FileInfo;

    move-result-object v5

    iput-object v5, v4, Lcom/android/fileexplorer/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/FileInfo;

    .line 63
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v4           #item:Lcom/android/fileexplorer/FavoriteItem;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v3, v5, v10

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_3

    .line 71
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/FavoriteItem;

    iget-object v5, v5, Lcom/android/fileexplorer/FavoriteItem;->location:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 75
    :cond_2
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/FavoriteItem;

    .line 76
    .local v1, favorite:Lcom/android/fileexplorer/FavoriteItem;
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteDatabase:Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    iget-wide v6, v1, Lcom/android/fileexplorer/FavoriteItem;->id:J

    invoke-virtual {v5, v6, v7, v9}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->delete(JZ)V

    .line 77
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 81
    .end local v1           #favorite:Lcom/android/fileexplorer/FavoriteItem;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteList;->mFavoriteListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    return-void
.end method
