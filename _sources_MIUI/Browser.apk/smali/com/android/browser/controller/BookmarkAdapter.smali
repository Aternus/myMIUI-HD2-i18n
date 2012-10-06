.class public Lcom/android/browser/controller/BookmarkAdapter;
.super Landroid/widget/BaseAdapter;
.source "BookmarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;
    }
.end annotation


# static fields
.field public static final TAB_NAME_FAVORITE:I = 0x0

.field public static final TAB_NAME_MOSTVISITED:I = 0x1

.field private static mostVisitedInstance:Lcom/android/browser/controller/BookmarkAdapter;


# instance fields
.field private mBookmarkTabId:I

.field private mContentObserver:Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;

.field private final mContext:Landroid/app/Activity;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 4
    .parameter "context"
    .parameter "tabNameId"

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;

    .line 114
    iput p2, p0, Lcom/android/browser/controller/BookmarkAdapter;->mBookmarkTabId:I

    .line 116
    iget v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mBookmarkTabId:I

    invoke-direct {p0, v0}, Lcom/android/browser/controller/BookmarkAdapter;->getData(I)V

    .line 118
    new-instance v0, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;-><init>(Lcom/android/browser/controller/BookmarkAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;

    .line 119
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/controller/BookmarkAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mBookmarkTabId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/controller/BookmarkAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/browser/controller/BookmarkAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private getData(I)V
    .locals 15
    .parameter "tabId"

    .prologue
    .line 74
    const-string v11, "visits DESC"

    .line 75
    .local v11, orderbyVisit:Ljava/lang/String;
    const-string v5, "position DESC"

    .line 76
    .local v5, orderByPosition:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "the bookmark center doesn\'t have the tab. Please have a check."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "bookmark = 1 AND folder_id IS NULL "

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    .line 99
    :goto_0
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 87
    .local v14, pre:Landroid/content/SharedPreferences;
    const-string v0, "clear_history_date"

    const-wide/16 v1, 0x0

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 88
    .local v12, lastClearTime:J
    iget-object v6, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;

    sget-object v7, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/browser/api_v8/BrowserInternal;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v9, "visits != 0 AND date > ?"

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-virtual/range {v6 .. v11}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIsBookmark(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v2

    .line 273
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v3, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static getMostVisitedInstance(Landroid/app/Activity;)Lcom/android/browser/controller/BookmarkAdapter;
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    sget-object v0, Lcom/android/browser/controller/BookmarkAdapter;->mostVisitedInstance:Lcom/android/browser/controller/BookmarkAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/browser/controller/BookmarkAdapter;->mostVisitedInstance:Lcom/android/browser/controller/BookmarkAdapter;

    iget-object v0, v0, Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;

    if-eq p0, v0, :cond_2

    .line 104
    :cond_0
    sget-object v0, Lcom/android/browser/controller/BookmarkAdapter;->mostVisitedInstance:Lcom/android/browser/controller/BookmarkAdapter;

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/android/browser/controller/BookmarkAdapter;->mostVisitedInstance:Lcom/android/browser/controller/BookmarkAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/BookmarkAdapter;->destroy()V

    .line 107
    :cond_1
    new-instance v0, Lcom/android/browser/controller/BookmarkAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/BookmarkAdapter;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/android/browser/controller/BookmarkAdapter;->mostVisitedInstance:Lcom/android/browser/controller/BookmarkAdapter;

    .line 109
    :cond_2
    sget-object v0, Lcom/android/browser/controller/BookmarkAdapter;->mostVisitedInstance:Lcom/android/browser/controller/BookmarkAdapter;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContentObserver:Lcom/android/browser/controller/BookmarkAdapter$MyContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    .line 130
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 181
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMode(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 157
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BrowserBookmarksAdapter tried to get a view out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 162
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 148
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BrowserBookmarksAdapter tried to get a view out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 153
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 136
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BrowserBookmarksAdapter tried to get a view out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 141
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 187
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/BookmarkAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BrowserBookmarksAdapter tried to get a view out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 192
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, url:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 195
    .local v2, id:I
    move v10, p1

    .line 198
    .local v10, pos:I
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 199
    .local v6, dataFavicon:[B
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/browser/controller/BookmarkAdapter;->mCursor:Landroid/database/Cursor;

    const-string v5, "touch_icon"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 202
    .local v7, dataTouchIcon:[B
    if-nez p2, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/browser/controller/BookmarkAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 204
    .local v8, factory:Landroid/view/LayoutInflater;
    const v0, 0x7f030004

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 207
    .end local v8           #factory:Landroid/view/LayoutInflater;
    :cond_2
    const v0, 0x7f0d0007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v0, 0x7f0d0008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    if-eqz v7, :cond_3

    array-length v0, v7

    if-eqz v0, :cond_3

    .line 211
    const v0, 0x7f0d0006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/browser/controller/BookmarkAdapter;->getIsBookmark(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    const v0, 0x7f0d0009

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f020001

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    :goto_1
    if-eqz v7, :cond_6

    array-length v0, v7

    if-eqz v0, :cond_6

    .line 233
    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 240
    .local v5, thumb:Landroid/graphics/Bitmap;
    :goto_2
    const v0, 0x7f0d0009

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 241
    .local v9, iv:Landroid/widget/ImageView;
    new-instance v0, Lcom/android/browser/controller/BookmarkAdapter$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/controller/BookmarkAdapter$1;-><init>(Lcom/android/browser/controller/BookmarkAdapter;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    return-object p2

    .line 214
    .end local v5           #thumb:Landroid/graphics/Bitmap;
    .end local v9           #iv:Landroid/widget/ImageView;
    .restart local p1
    :cond_3
    if-eqz v6, :cond_4

    array-length v0, v6

    if-eqz v0, :cond_4

    .line 215
    const v0, 0x7f0d0006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v0, 0x0

    array-length v1, v6

    invoke-static {v6, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 219
    :cond_4
    const v0, 0x7f0d0006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f02005b

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 227
    :cond_5
    const v0, 0x7f0d0009

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    const/high16 v0, 0x7f02

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 234
    :cond_6
    if-eqz v6, :cond_7

    array-length v0, v6

    if-eqz v0, :cond_7

    .line 235
    const/4 v0, 0x0

    array-length v1, v6

    invoke-static {v6, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5       #thumb:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 237
    .end local v5           #thumb:Landroid/graphics/Bitmap;
    :cond_7
    const/4 v5, 0x0

    .restart local v5       #thumb:Landroid/graphics/Bitmap;
    goto :goto_2
.end method
