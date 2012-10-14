.class public Lcom/android/browser/controller/BookmarkFolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookmarkFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;
    }
.end annotation


# static fields
.field public static final FOLDER_TYPE:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.controller.BookmarkFolderAdapter"

.field public static final PREF_KEY_BOOKMARK_SORT_ORDER:Ljava/lang/String; = "pref_bookmark_sort_order"

.field public static final SORT_BY_A_TO_Z:I = 0x1

.field public static final SORT_BY_CREATION_TIME:I = 0x2

.field public static final WEBSITE_TYPE:I = 0x1


# instance fields
.field private lstFavoriteItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/controller/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

.field private mContext:Landroid/app/Activity;

.field private mFolderId:J

.field private mFolderNumber:I

.field public mMovePosition:F

.field private mSortOrder:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;JILandroid/view/View$OnTouchListener;)V
    .locals 4
    .parameter "context"
    .parameter "folderId"
    .parameter "sortOrder"
    .parameter "touchListener"

    .prologue
    const/4 v3, 0x1

    .line 235
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mFolderNumber:I

    .line 40
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mMovePosition:F

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mSortOrder:I

    .line 236
    iput-wide p2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mFolderId:J

    .line 237
    iput-object p1, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    .line 238
    iput p4, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mSortOrder:I

    .line 239
    iput-object p5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 240
    invoke-direct {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->initializeListFavoriteItems()V

    .line 242
    new-instance v0, Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;-><init>(Lcom/android/browser/controller/BookmarkFolderAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

    .line 243
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 246
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/browser/controller/BookmarkFolderAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->initializeListFavoriteItems()V

    return-void
.end method

.method private getFolderSortOrderSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    iget v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mSortOrder:I

    packed-switch v0, :pswitch_data_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sort order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mSortOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :pswitch_0
    const-string v0, "position"

    .line 212
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "title COLLATE LOCALIZED"

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWebSiteSortOrderSql()Ljava/lang/String;
    .locals 5

    .prologue
    .line 219
    iget v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mSortOrder:I

    packed-switch v0, :pswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sort order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mSortOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mFolderId:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, " ASC"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_1
    return-object v0

    .line 221
    :cond_0
    const-string v1, " DESC"

    goto :goto_0

    .line 224
    :pswitch_1
    const-string v0, "title COLLATE LOCALIZED"

    goto :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeListFavoriteItems()V
    .locals 41

    .prologue
    .line 109
    const/16 v20, 0x0

    .line 114
    .local v20, position:F
    const/16 v24, 0x0

    .line 115
    .local v24, title:Ljava/lang/String;
    const/16 v35, 0x0

    .line 116
    .local v35, url:Ljava/lang/String;
    const/16 v32, 0x0

    .line 117
    .local v32, favicon:Landroid/graphics/Bitmap;
    const/16 v33, 0x0

    .line 118
    .local v33, touchicon:Landroid/graphics/Bitmap;
    const/16 v36, 0x0

    .line 119
    .local v36, cursorFolder:Landroid/database/Cursor;
    const/16 v37, 0x0

    .line 122
    .local v37, cursorWebsite:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mFolderId:J

    move-wide v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getFolderSortOrderSql()Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, orderby:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    move-object v3, v0

    sget-object v4, Lcom/android/browser/model/BrowserHistoryDataProvider;->FOLDER_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_FOLDER_PROJECTION:[Ljava/lang/String;

    const-string v6, "created> 0"

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getWebSiteSortOrderSql()Ljava/lang/String;

    move-result-object v14

    .line 128
    .local v14, orderbyWebsite:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    move-object v9, v0

    sget-object v10, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v11, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v12, "bookmark = 1 AND folder_id IS NULL "

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .line 145
    .end local v8           #orderby:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    .line 146
    if-eqz v36, :cond_3

    .line 147
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 149
    const/4 v3, 0x5

    move-object/from16 v0, v36

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v20

    .line 151
    const/4 v3, 0x1

    move-object/from16 v0, v36

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 153
    const/4 v3, 0x0

    move-object/from16 v0, v36

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 155
    .local v16, cursorId:I
    const/4 v3, 0x2

    move-object/from16 v0, v36

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 157
    .local v19, folderFlag:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    move-object v3, v0

    new-instance v15, Lcom/android/browser/controller/FavoriteItem;

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v15 .. v25}, Lcom/android/browser/controller/FavoriteItem;-><init>(IIIIFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    .end local v14           #orderbyWebsite:Ljava/lang/String;
    .end local v16           #cursorId:I
    .end local v19           #folderFlag:I
    :catch_0
    move-exception v3

    move-object/from16 v40, v3

    .line 194
    .local v40, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "com.android.browser.controller.BookmarkFolderAdapter"

    const-string v4, "error"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    if-eqz v36, :cond_0

    .line 197
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 198
    const/16 v36, 0x0

    .line 200
    :cond_0
    if-eqz v37, :cond_1

    .line 201
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 202
    const/16 v37, 0x0

    .line 205
    .end local v40           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    :goto_2
    return-void

    .line 134
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getWebSiteSortOrderSql()Ljava/lang/String;

    move-result-object v14

    .line 135
    .restart local v14       #orderbyWebsite:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    move-object v9, v0

    sget-object v10, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v11, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v12, "bookmark = 1 AND folder_id = ? "

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mFolderId:J

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v3

    invoke-virtual/range {v9 .. v14}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    goto/16 :goto_0

    .line 161
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/controller/BookmarkFolderAdapter;->mFolderNumber:I

    .line 163
    if-eqz v37, :cond_8

    .line 164
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_8

    .line 166
    const/16 v33, 0x0

    .line 167
    const/16 v32, 0x0

    .line 168
    const/16 v3, 0xa

    move-object/from16 v0, v37

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v20

    .line 171
    const/4 v3, 0x0

    move-object/from16 v0, v37

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 172
    .restart local v16       #cursorId:I
    const/16 v3, 0xd

    move-object/from16 v0, v37

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 174
    .local v27, folderId:I
    const/16 v3, 0xc

    move-object/from16 v0, v37

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 175
    .local v28, mode:I
    const/4 v3, 0x5

    move-object/from16 v0, v37

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 176
    const/4 v3, 0x1

    move-object/from16 v0, v37

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 177
    const/4 v3, 0x6

    move-object/from16 v0, v37

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v38

    .line 179
    .local v38, dataFavicon:[B
    const-string v3, "touch_icon"

    move-object/from16 v0, v37

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v37

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v39

    .line 182
    .local v39, dataTouchIcon:[B
    if-eqz v39, :cond_4

    move-object/from16 v0, v39

    array-length v0, v0

    move v3, v0

    if-eqz v3, :cond_4

    .line 183
    const/4 v3, 0x0

    move-object/from16 v0, v39

    array-length v0, v0

    move v4, v0

    move-object/from16 v0, v39

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 186
    :cond_4
    if-eqz v38, :cond_5

    move-object/from16 v0, v38

    array-length v0, v0

    move v3, v0

    if-eqz v3, :cond_5

    .line 187
    const/4 v3, 0x0

    move-object/from16 v0, v38

    array-length v0, v0

    move v4, v0

    move-object/from16 v0, v38

    move v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 189
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    move-object v3, v0

    new-instance v25, Lcom/android/browser/controller/FavoriteItem;

    const/16 v29, 0x0

    const/16 v31, 0x0

    move/from16 v26, v16

    move/from16 v30, v20

    move-object/from16 v34, v24

    invoke-direct/range {v25 .. v35}, Lcom/android/browser/controller/FavoriteItem;-><init>(IIIIFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 196
    .end local v14           #orderbyWebsite:Ljava/lang/String;
    .end local v16           #cursorId:I
    .end local v27           #folderId:I
    .end local v28           #mode:I
    .end local v38           #dataFavicon:[B
    .end local v39           #dataTouchIcon:[B
    :catchall_0
    move-exception v3

    if-eqz v36, :cond_6

    .line 197
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 198
    const/16 v36, 0x0

    .line 200
    :cond_6
    if-eqz v37, :cond_7

    .line 201
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 202
    const/16 v37, 0x0

    :cond_7
    throw v3

    .line 196
    .restart local v14       #orderbyWebsite:Ljava/lang/String;
    :cond_8
    if-eqz v36, :cond_9

    .line 197
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 198
    const/16 v36, 0x0

    .line 200
    :cond_9
    if-eqz v37, :cond_1

    .line 201
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    .line 202
    const/16 v37, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public changeSortOrder(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mSortOrder:I

    if-ne p1, v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iput p1, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mSortOrder:I

    .line 69
    invoke-direct {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->initializeListFavoriteItems()V

    .line 70
    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getContentObserver()Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFavIcon(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "position"

    .prologue
    .line 289
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BookmarkFoderAdapter tried to get a title out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget-object v0, p0, Lcom/android/browser/controller/FavoriteItem;->_favicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFolderNumber()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mFolderNumber:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 319
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BookmarkFoderAdapter tried to get a id out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget v0, p0, Lcom/android/browser/controller/FavoriteItem;->_id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 328
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 329
    :cond_0
    const/4 v0, -0x1

    .line 335
    .end local p0
    :goto_0
    return v0

    .line 332
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget-boolean v0, p0, Lcom/android/browser/controller/FavoriteItem;->_isFolder:Z

    if-eqz v0, :cond_2

    .line 333
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getListFavoriteItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/controller/FavoriteItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    return-object v0
.end method

.method public getMode(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 305
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BookmarkFoderAdapter tried to get a mode out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget v0, p0, Lcom/android/browser/controller/FavoriteItem;->_mode:I

    return v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 273
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BookmarkFoderAdapter tried to get a title out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget-object v0, p0, Lcom/android/browser/controller/FavoriteItem;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTouchIcon(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "position"

    .prologue
    .line 281
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BookmarkFoderAdapter tried to get a title out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget-object v0, p0, Lcom/android/browser/controller/FavoriteItem;->_touchicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 264
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BookmarkFoderAdapter tried to get a url out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/controller/FavoriteItem;

    iget-boolean v0, v0, Lcom/android/browser/controller/FavoriteItem;->_isFolder:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget-object v0, p0, Lcom/android/browser/controller/FavoriteItem;->_url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const v8, 0x7f0d0006

    const v7, 0x7f0d0009

    .line 373
    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p1, v5, :cond_1

    .line 374
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "BookmarkFloderAdapter tried to get a view out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 378
    :cond_1
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/controller/FavoriteItem;

    iget-boolean v5, v5, Lcom/android/browser/controller/FavoriteItem;->_isFolder:Z

    if-eqz v5, :cond_4

    .line 379
    if-nez p2, :cond_2

    .line 380
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 381
    .local v0, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030002

    invoke-virtual {v0, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 385
    .end local v0           #factory:Landroid/view/LayoutInflater;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/browser/controller/BookmarkFolderAdapter;->isOneClickLuncherFolder(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 386
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    .end local p0
    .local v1, text:Ljava/lang/String;
    :goto_0
    const v5, 0x7f0d0003

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 391
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .end local v1           #text:Ljava/lang/String;
    .end local v3           #tv:Landroid/widget/TextView;
    :goto_1
    return-object p2

    .line 389
    .restart local p0
    :cond_3
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget-object v1, p0, Lcom/android/browser/controller/FavoriteItem;->_title:Ljava/lang/String;

    .restart local v1       #text:Ljava/lang/String;
    goto :goto_0

    .line 393
    .end local v1           #text:Ljava/lang/String;
    .restart local p0
    :cond_4
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/controller/FavoriteItem;

    iget-object v2, v5, Lcom/android/browser/controller/FavoriteItem;->_title:Ljava/lang/String;

    .line 394
    .local v2, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/controller/FavoriteItem;

    iget-object v4, v5, Lcom/android/browser/controller/FavoriteItem;->_url:Ljava/lang/String;

    .line 396
    .local v4, url:Ljava/lang/String;
    if-nez p2, :cond_5

    .line 397
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 398
    .restart local v0       #factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030004

    invoke-virtual {v0, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 401
    .end local v0           #factory:Landroid/view/LayoutInflater;
    :cond_5
    const v5, 0x7f0d0007

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const v5, 0x7f0d0008

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mSortOrder:I

    if-ne v5, v6, :cond_6

    .line 404
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 412
    :goto_2
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/controller/FavoriteItem;

    iget-object v5, v5, Lcom/android/browser/controller/FavoriteItem;->_touchicon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    .line 413
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget-object v6, p0, Lcom/android/browser/controller/FavoriteItem;->_touchicon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 406
    .restart local p0
    :cond_6
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f02001b

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 415
    :cond_7
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/controller/FavoriteItem;

    iget-object v5, v5, Lcom/android/browser/controller/FavoriteItem;->_favicon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_8

    .line 416
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget-object v6, p0, Lcom/android/browser/controller/FavoriteItem;->_favicon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 419
    .restart local p0
    :cond_8
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    const v5, 0x7f02005b

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x2

    return v0
.end method

.method public getWebsiteFolderId(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 297
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 300
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/controller/FavoriteItem;

    iget-boolean v0, v0, Lcom/android/browser/controller/FavoriteItem;->_isFolder:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget v0, p0, Lcom/android/browser/controller/FavoriteItem;->_folderId:I

    goto :goto_0

    .restart local p0
    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isOneClickLuncherFolder(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 345
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BookmarkFoderAdapter tried to get folder flag out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/controller/FavoriteItem;

    iget v0, p0, Lcom/android/browser/controller/FavoriteItem;->_folderFlag:I

    return v0
.end method

.method public notifyDragItemPosition(II)V
    .locals 6
    .parameter "firstPosition"
    .parameter "releasePosition"

    .prologue
    .line 353
    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/FavoriteItem;

    .line 354
    .local v1, item:Lcom/android/browser/controller/FavoriteItem;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/browser/controller/FavoriteItem;->_isModified:Z

    .line 355
    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/controller/FavoriteItem;

    iget-boolean v2, v2, Lcom/android/browser/controller/FavoriteItem;->_isFolder:Z

    if-nez v2, :cond_2

    .line 359
    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 360
    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v2, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 367
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/controller/FavoriteItem;

    iget v2, v2, Lcom/android/browser/controller/FavoriteItem;->_id:I

    int-to-long v4, v2

    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/controller/FavoriteItem;

    iget v2, v2, Lcom/android/browser/controller/FavoriteItem;->_id:I

    invoke-static {v3, v4, v5, v0, v2}, Lcom/android/browser/api_v8/Bookmarks;->updateFolderIdById(Landroid/content/Context;JLandroid/content/ContentResolver;I)V

    .line 365
    iget-object v2, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public reLoad()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;->onChange(Z)V

    .line 256
    return-void
.end method

.method public unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkFolderAdapter$MyContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    return-void
.end method

.method public declared-synchronized updateModifiedItemToDatabase()V
    .locals 8

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/browser/model/BrowserDatabaseHelper;

    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mContext:Landroid/app/Activity;

    invoke-direct {v2, v5}, Lcom/android/browser/model/BrowserDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v2, dbHelper:Lcom/android/browser/model/BrowserDatabaseHelper;
    const/4 v1, 0x0

    .line 82
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/browser/model/BrowserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 84
    iget v4, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->mFolderNumber:I

    .local v4, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkFolderAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/android/browser/controller/BookmarkFolderAdapter;->lstFavoriteItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/controller/FavoriteItem;

    iget v5, v5, Lcom/android/browser/controller/FavoriteItem;->_id:I

    int-to-long v5, v5

    int-to-float v7, v4

    invoke-static {v1, v5, v6, v0, v7}, Lcom/android/browser/api_v8/Bookmarks;->updatePositionById(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentResolver;F)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    if-eqz v1, :cond_2

    .line 92
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v4           #i:I
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 88
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 89
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v5, "com.android.browser.controller.BookmarkFolderAdapter"

    const-string v6, "error"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 78
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #dbHelper:Lcom/android/browser/model/BrowserDatabaseHelper;
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 91
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #dbHelper:Lcom/android/browser/model/BrowserDatabaseHelper;
    :catchall_1
    move-exception v5

    if-eqz v1, :cond_5

    .line 92
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 93
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
