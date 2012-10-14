.class public Lcom/android/mms/ui/BookmarkListAdapter;
.super Landroid/widget/CursorAdapter;
.source "BookmarkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

.field private mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mLinksable:Z

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/BookmarkListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 47
    iput-object p1, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/BookmarkListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    .line 50
    iput-boolean v3, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mLinksable:Z

    .line 51
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 53
    new-instance v0, Lcom/android/mms/ui/BookmarkListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/BookmarkListAdapter$1;-><init>(Lcom/android/mms/ui/BookmarkListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 59
    return-void
.end method

.method public static getKey(Ljava/lang/String;J)J
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 152
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    neg-long v0, p1

    .line 155
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p1

    goto :goto_0
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 108
    instance-of v6, p1, Lcom/android/mms/ui/BookmarkListItem;

    if-eqz v6, :cond_0

    .line 109
    iget-object v6, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, type:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v6, v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 111
    .local v1, msgId:J
    invoke-virtual {p0, v5, v1, v2, p3}, Lcom/android/mms/ui/BookmarkListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 112
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/BookmarkListItem;

    move-object v4, v0

    .line 113
    .local v4, smsBookmarkListItem:Lcom/android/mms/ui/BookmarkListItem;
    if-eqz v3, :cond_1

    .line 114
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/BookmarkListItem;->setVisibility(I)V

    .line 115
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mLinksable:Z

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/mms/ui/BookmarkListItem;->bind(Lcom/android/mms/ui/MessageItem;IZ)V

    .line 120
    .end local v1           #msgId:J
    .end local v3           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v4           #smsBookmarkListItem:Lcom/android/mms/ui/BookmarkListItem;
    .end local v5           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v1       #msgId:J
    .restart local v3       #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #smsBookmarkListItem:Lcom/android/mms/ui/BookmarkListItem;
    .restart local v5       #type:Ljava/lang/String;
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/BookmarkListItem;->setVisibility(I)V

    goto :goto_0
.end method

.method public deleteBookmark(Lcom/android/mms/ui/MessageItem;)V
    .locals 8
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 91
    .local v7, uri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 93
    .local v3, mUnLockUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 94
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "locked"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    const/16 v1, 0x3e8

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/mms/ui/BookmarkListAdapter;->load()V

    .line 98
    return-void

    .line 89
    .end local v3           #mUnLockUri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .restart local v7       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 4
    .parameter "c"

    .prologue
    .line 123
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 126
    .local v0, msgId:J
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/mms/ui/BookmarkListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    return-object v3
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/BookmarkListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 131
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_1

    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/mms/ui/BookmarkListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/BookmarkListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v1, v0

    .line 140
    :goto_1
    return-object v1

    .line 135
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v0, v9

    .line 136
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_2
    const-string v1, "BookmarkListAdapter"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "Caught MmsException"

    :goto_3
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v10

    .line 137
    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 135
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v1

    move-object v8, v1

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public load()V
    .locals 9

    .prologue
    const/16 v1, 0x3e9

    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;->cancelOperation(I)V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mBackgroundQueryHandler:Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_ALL_LOCKED_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/BookmarkListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/BookmarkListAdapter$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 70
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 102
    new-instance v0, Lcom/android/mms/ui/BookmarkListItem;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/BookmarkListItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 82
    return-void
.end method

.method public setLinksable(Z)V
    .locals 0
    .parameter "linksable"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/mms/ui/BookmarkListAdapter;->mLinksable:Z

    .line 76
    return-void
.end method
