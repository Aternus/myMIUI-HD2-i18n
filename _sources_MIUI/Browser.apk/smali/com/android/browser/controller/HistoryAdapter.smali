.class public Lcom/android/browser/controller/HistoryAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.controller.HistoryAdapter"

.field private static sInstance:Lcom/android/browser/controller/HistoryAdapter;


# instance fields
.field private mContentObserver:Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDateIndex:I

.field private mDateSorter:Landroid/webkit/DateSorter;

.field private mIdIndex:I

.field private mItemMap:[I

.field private mNumberOfBins:I

.field private mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 11
    .parameter "context"
    .parameter "dateIndex"

    .prologue
    const/4 v10, 0x1

    .line 107
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/webkit/DateSorter;

    invoke-direct {v0, p1}, Landroid/webkit/DateSorter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    .line 110
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 111
    .local v8, pre:Landroid/content/SharedPreferences;
    const-string v0, "clear_history_date"

    const-wide/16 v1, 0x0

    invoke-interface {v8, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 113
    .local v6, lastClearTime:J
    const-string v5, "date DESC"

    .line 114
    .local v5, orderbyDate:Ljava/lang/String;
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "visits > 0 AND date > ? "

    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    .line 120
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mIdIndex:I

    .line 123
    iput p2, p0, Lcom/android/browser/controller/HistoryAdapter;->mDateIndex:I

    .line 124
    invoke-direct {p0}, Lcom/android/browser/controller/HistoryAdapter;->buildMap()V

    .line 126
    new-instance v0, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;-><init>(Lcom/android/browser/controller/HistoryAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mContentObserver:Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;

    .line 127
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/controller/HistoryAdapter;->mContentObserver:Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/browser/controller/HistoryAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/controller/HistoryAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/controller/HistoryAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/browser/controller/HistoryAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/browser/controller/HistoryAdapter;->mNumberOfBins:I

    return p1
.end method

.method private buildMap()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 169
    new-array v0, v7, [I

    .line 171
    .local v0, array:[I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 172
    aput v6, v0, v5

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iput v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mNumberOfBins:I

    .line 175
    const/4 v3, -0x1

    .line 176
    .local v3, dateIndex:I
    iget-object v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 177
    :goto_1
    iget-object v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 178
    iget-object v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/browser/controller/HistoryAdapter;->mDateIndex:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 179
    .local v1, date:J
    iget-object v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-virtual {v6, v1, v2}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v4

    .line 180
    .local v4, index:I
    if-le v4, v3, :cond_3

    .line 181
    iget v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mNumberOfBins:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mNumberOfBins:I

    .line 182
    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 185
    iget-object v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v0, v4

    .line 195
    .end local v1           #date:J
    .end local v4           #index:I
    :cond_1
    iput-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mItemMap:[I

    .line 196
    return-void

    .line 189
    .restart local v1       #date:J
    .restart local v4       #index:I
    :cond_2
    move v3, v4

    .line 191
    :cond_3
    aget v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v3

    .line 192
    iget-object v6, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public static getInstance(Landroid/app/Activity;I)Lcom/android/browser/controller/HistoryAdapter;
    .locals 1
    .parameter "context"
    .parameter "dateIndex"

    .prologue
    .line 56
    sget-object v0, Lcom/android/browser/controller/HistoryAdapter;->sInstance:Lcom/android/browser/controller/HistoryAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/browser/controller/HistoryAdapter;->sInstance:Lcom/android/browser/controller/HistoryAdapter;

    iget-object v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/android/browser/controller/HistoryAdapter;->sInstance:Lcom/android/browser/controller/HistoryAdapter;

    iget v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mDateIndex:I

    if-eq v0, p1, :cond_2

    .line 57
    :cond_0
    sget-object v0, Lcom/android/browser/controller/HistoryAdapter;->sInstance:Lcom/android/browser/controller/HistoryAdapter;

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/android/browser/controller/HistoryAdapter;->sInstance:Lcom/android/browser/controller/HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/HistoryAdapter;->destroy()V

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/controller/HistoryAdapter;->sInstance:Lcom/android/browser/controller/HistoryAdapter;

    .line 61
    :cond_1
    new-instance v0, Lcom/android/browser/controller/HistoryAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/controller/HistoryAdapter;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/android/browser/controller/HistoryAdapter;->sInstance:Lcom/android/browser/controller/HistoryAdapter;

    .line 63
    :cond_2
    sget-object v0, Lcom/android/browser/controller/HistoryAdapter;->sInstance:Lcom/android/browser/controller/HistoryAdapter;

    return-object v0
.end method

.method private getIsBookmark(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 393
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private groupPositionToBin(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    const/4 v2, 0x5

    .line 312
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "group position out of range"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 315
    :cond_1
    iget v1, p0, Lcom/android/browser/controller/HistoryAdapter;->mNumberOfBins:I

    if-eq v2, v1, :cond_2

    iget v1, p0, Lcom/android/browser/controller/HistoryAdapter;->mNumberOfBins:I

    if-nez v1, :cond_3

    :cond_2
    move v1, p1

    .line 331
    :goto_0
    return v1

    .line 324
    :cond_3
    const/4 v0, -0x1

    .line 325
    .local v0, arrayPosition:I
    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-le p1, v1, :cond_5

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 327
    iget-object v1, p0, Lcom/android/browser/controller/HistoryAdapter;->mItemMap:[I

    array-length v1, v1

    if-le v1, v0, :cond_4

    iget-object v1, p0, Lcom/android/browser/controller/HistoryAdapter;->mItemMap:[I

    aget v1, v1, v0

    if-eqz v1, :cond_4

    .line 328
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    move v1, v0

    .line 331
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/HistoryAdapter;->mContentObserver:Lcom/android/browser/controller/HistoryAdapter$ChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    .line 137
    :cond_0
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/controller/HistoryAdapter;->moveCursorToChildPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/controller/HistoryAdapter;->mIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 355
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChildMode(II)I
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/controller/HistoryAdapter;->moveCursorToChildPosition(II)Z

    .line 200
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getChildUrl(II)Ljava/lang/String;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/controller/HistoryAdapter;->moveCursorToChildPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 213
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/controller/HistoryAdapter;->getGroupCount()I

    move-result v2

    move/from16 v0, p1

    move v1, v2

    if-ge v0, v1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/controller/HistoryAdapter;->getChildrenCount(I)I

    move-result v2

    move/from16 v0, p2

    move v1, v2

    if-lt v0, v1, :cond_1

    .line 215
    :cond_0
    const/4 v2, 0x0

    .line 291
    .end local p1
    :goto_0
    return-object v2

    .line 217
    .restart local p1
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/browser/controller/HistoryAdapter;->moveCursorToChildPosition(II)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object v2, v0

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 221
    .local v4, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object v2, v0

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 223
    .local v8, mode:I
    invoke-virtual/range {p0 .. p2}, Lcom/android/browser/controller/HistoryAdapter;->getChildId(II)J

    move-result-wide v2

    long-to-int v15, v2

    .line 224
    .local v15, position:I
    move v14, v15

    .line 226
    .local v14, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object v2, v0

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 227
    .local v9, dataFavicon:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    const-string v7, "touch_icon"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 230
    .local v10, dataTouchIcon:[B
    if-nez p4, :cond_2

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 232
    .local v12, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 234
    .end local v12           #factory:Landroid/view/LayoutInflater;
    :cond_2
    const v2, 0x7f0d0007

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const v2, 0x7f0d0008

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    if-eqz v10, :cond_3

    array-length v2, v10

    if-eqz v2, :cond_3

    .line 238
    const v2, 0x7f0d0006

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    array-length v3, v10

    invoke-static {v10, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    :goto_1
    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/browser/controller/HistoryAdapter;->getIsBookmark(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 251
    const v2, 0x7f0d0009

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f020001

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    :goto_2
    if-eqz v10, :cond_6

    array-length v2, v10

    if-eqz v2, :cond_6

    .line 259
    const/4 v2, 0x0

    array-length v3, v10

    invoke-static {v10, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 265
    .local v7, thumb:Landroid/graphics/Bitmap;
    :goto_3
    const v2, 0x7f0d0009

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 266
    .local v13, iv:Landroid/widget/ImageView;
    new-instance v2, Lcom/android/browser/controller/HistoryAdapter$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/browser/controller/HistoryAdapter$1;-><init>(Lcom/android/browser/controller/HistoryAdapter;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v4           #id:I
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v8           #mode:I
    .end local v9           #dataFavicon:[B
    .end local v10           #dataTouchIcon:[B
    .end local v13           #iv:Landroid/widget/ImageView;
    .end local v14           #pos:I
    .end local v15           #position:I
    :goto_4
    move-object/from16 v2, p4

    .line 291
    goto/16 :goto_0

    .line 241
    .restart local v4       #id:I
    .restart local v5       #url:Ljava/lang/String;
    .restart local v6       #title:Ljava/lang/String;
    .restart local v8       #mode:I
    .restart local v9       #dataFavicon:[B
    .restart local v10       #dataTouchIcon:[B
    .restart local v14       #pos:I
    .restart local v15       #position:I
    :cond_3
    if-eqz v9, :cond_4

    array-length v2, v9

    if-eqz v2, :cond_4

    .line 242
    const v2, 0x7f0d0006

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v9, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 287
    .end local v4           #id:I
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    .end local v8           #mode:I
    .end local v9           #dataFavicon:[B
    .end local v10           #dataTouchIcon:[B
    .end local v14           #pos:I
    .end local v15           #position:I
    :catch_0
    move-exception v2

    move-object v11, v2

    .line 288
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "com.android.browser.controller.HistoryAdapter"

    const-string v3, "error while accessing DB"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 246
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v4       #id:I
    .restart local v5       #url:Ljava/lang/String;
    .restart local v6       #title:Ljava/lang/String;
    .restart local v8       #mode:I
    .restart local v9       #dataFavicon:[B
    .restart local v10       #dataTouchIcon:[B
    .restart local v14       #pos:I
    .restart local v15       #position:I
    :cond_4
    const v2, 0x7f0d0006

    :try_start_1
    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f02001c

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 254
    :cond_5
    const v2, 0x7f0d0009

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/high16 v2, 0x7f02

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 260
    :cond_6
    if-eqz v9, :cond_7

    array-length v2, v9

    if-eqz v2, :cond_7

    .line 261
    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v9, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .restart local v7       #thumb:Landroid/graphics/Bitmap;
    goto :goto_3

    .line 263
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    :cond_7
    const/4 v7, 0x0

    .restart local v7       #thumb:Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mItemMap:[I

    invoke-direct {p0, p1}, Lcom/android/browser/controller/HistoryAdapter;->groupPositionToBin(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/android/browser/controller/HistoryAdapter;->mNumberOfBins:I

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 375
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 336
    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    invoke-direct {p0, p1}, Lcom/android/browser/controller/HistoryAdapter;->groupPositionToBin(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/webkit/DateSorter;->getLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, label:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 338
    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 339
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 341
    .end local v1           #factory:Landroid/view/LayoutInflater;
    :cond_0
    move-object v0, p3

    check-cast v0, Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-object p3
.end method

.method groupFromChildId(J)I
    .locals 6
    .parameter "childId"

    .prologue
    .line 145
    const/4 v1, -0x1

    .line 146
    .local v1, group:I
    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 148
    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/browser/controller/HistoryAdapter;->mIdIndex:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 149
    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    iget-object v4, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/browser/controller/HistoryAdapter;->mDateIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/webkit/DateSorter;->getIndex(J)I

    move-result v0

    .line 152
    .local v0, bin:I
    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter;->mDateSorter:Landroid/webkit/DateSorter;

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/browser/controller/HistoryAdapter;->mNumberOfBins:I

    if-ne v3, v4, :cond_0

    move v3, v0

    .line 161
    .end local v0           #bin:I
    :goto_1
    return v3

    .line 154
    .restart local v0       #bin:I
    :cond_0
    const/4 v1, 0x0

    .line 155
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 156
    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter;->mItemMap:[I

    aget v3, v3, v2

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 155
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 147
    .end local v0           #bin:I
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_3
    move v3, v1

    .line 161
    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method moveCursorToChildPosition(II)Z
    .locals 3
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 295
    iget-object v2, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 301
    :goto_0
    return v2

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/browser/controller/HistoryAdapter;->groupPositionToBin(I)I

    move-result p1

    .line 297
    move v1, p2

    .line 298
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/browser/controller/HistoryAdapter;->mItemMap:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/HistoryAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    goto :goto_0
.end method
