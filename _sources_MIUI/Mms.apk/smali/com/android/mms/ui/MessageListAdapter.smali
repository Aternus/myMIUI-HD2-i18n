.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/widget/EditableListView$EditableListIdMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field static final GROUP_MSG_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDeliverReportMode:I

.field private mGroupByTime:Z

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mImageMessageListItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/ui/MessageListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsGroup:Z

.field private mIsReadOnly:Z

.field private mItemStyle:Ljava/lang/String;

.field private mListView:Landroid/widget/EditableListView;

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

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-string v7, "timed"

    const-string v6, "server_date"

    const-string v5, "read"

    const-string v4, "locked"

    const-string v3, "date"

    .line 58
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "server_date"

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v5, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timed"

    aput-object v7, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "date"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v2, "server_date"

    aput-object v6, v0, v1

    const/16 v1, 0x11

    const-string v2, "read"

    aput-object v5, v0, v1

    const/16 v1, 0x12

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "locked"

    aput-object v4, v0, v1

    const/16 v1, 0x18

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "timed"

    aput-object v7, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 93
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "server_date"

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v5, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timed"

    aput-object v7, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "date"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v2, "server_date"

    aput-object v6, v0, v1

    const/16 v1, 0x11

    const-string v2, "read"

    aput-object v5, v0, v1

    const/16 v1, 0x12

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "locked"

    aput-object v4, v0, v1

    const/16 v1, 0x18

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "timed"

    aput-object v7, v0, v1

    const/16 v1, 0x1c

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->GROUP_MSG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/EditableListView;ZLjava/util/regex/Pattern;)V
    .locals 11
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    .line 184
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/EditableListView;ZLjava/util/regex/Pattern;Ljava/lang/String;ZIZZ)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/EditableListView;ZLjava/util/regex/Pattern;Ljava/lang/String;ZIZZ)V
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"
    .parameter "itemStyle"
    .parameter "groupByTime"
    .parameter "deliverReportMode"
    .parameter "isGroup"
    .parameter "isReadOnly"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mImageMessageListItems:Ljava/util/HashMap;

    .line 194
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 195
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 196
    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/EditableListView;

    .line 198
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 201
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 209
    if-eqz p4, :cond_0

    .line 210
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 215
    :goto_0
    iput-object p6, p0, Lcom/android/mms/ui/MessageListAdapter;->mItemStyle:Ljava/lang/String;

    .line 216
    iput-boolean p7, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    .line 217
    iput p8, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeliverReportMode:I

    .line 218
    iput-boolean p9, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroup:Z

    .line 219
    iput-boolean p10, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsReadOnly:Z

    .line 220
    return-void

    .line 212
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 236
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, type:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 238
    .local v0, msgId:J
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    return-object v3
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 374
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    neg-long v0, p1

    .line 377
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
    .line 367
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    const/4 v0, 0x0

    .line 370
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
    .line 293
    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/EditableListView;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move v3, v7

    .line 294
    .local v3, isEditMode:Z
    :goto_0
    const/4 v0, 0x0

    .line 295
    .local v0, checked:Z
    if-eqz v3, :cond_0

    .line 296
    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 297
    .local v1, id:J
    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, type:Ljava/lang/String;
    invoke-static {v6, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    .line 299
    .local v4, key:J
    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v7}, Landroid/widget/EditableListView;->getEditableListViewCheckable()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckStateById(J)Z

    move-result v0

    .line 301
    .end local v1           #id:J
    .end local v4           #key:J
    .end local v6           #type:Ljava/lang/String;
    :cond_0
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    invoke-direct {p0, p3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    invoke-virtual {p1, v7, v3, v0}, Lcom/android/mms/ui/MessageListItem;->rebind(Lcom/android/mms/ui/MessageItem;ZZ)V

    .line 302
    return-void

    .line 293
    .end local v0           #checked:Z
    .end local v3           #isEditMode:Z
    .restart local p1
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/EditableListView;

    invoke-virtual {v7}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v7

    move v3, v7

    goto :goto_0
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 224
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    iget-boolean v6, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroup:Z

    iget-boolean v7, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsReadOnly:Z

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    :goto_0
    return-object v0

    .line 228
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v0, v9

    .line 229
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "MessageListAdapter"

    const-string v2, "getCachedMessageItem: "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v1

    move-object v8, v1

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getCheckedItems(Ljava/util/HashSet;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, checkedPositions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/MessageItem;>;"
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/EditableListView;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 245
    .local v3, position:I
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 246
    .local v0, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #position:I
    :cond_0
    return-object v2
.end method

.method public getItemViewType(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 263
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 264
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 265
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, prevMsgItem:Lcom/android/mms/ui/MessageItem;
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    if-eqz v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 273
    :cond_1
    iget-boolean v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupByTime:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    move v2, v3

    .line 274
    .local v2, showTimeStamp:Z
    :goto_0
    if-eqz v1, :cond_5

    .line 275
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 276
    const/4 v2, 0x1

    .line 281
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListAdapter;->mItemStyle:Ljava/lang/String;

    iget v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mDeliverReportMode:I

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/mms/ui/MessageItem;->initLayoutStyle(Ljava/lang/String;ZI)V

    .line 283
    .end local v1           #prevMsgItem:Lcom/android/mms/ui/MessageItem;
    .end local v2           #showTimeStamp:Z
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getLayoutStyle()I

    move-result v3

    return v3

    .line 273
    .restart local v1       #prevMsgItem:Lcom/android/mms/ui/MessageItem;
    :cond_4
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 279
    .restart local v2       #showTimeStamp:Z
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x6

    return v0
.end method

.method public mapPositionToId(I)J
    .locals 6
    .parameter "position"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 255
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, type:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v4, v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 258
    .local v1, msgId:J
    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v4

    return-wide v4
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 306
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 308
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isListLayoutStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002f

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 313
    .local v0, mli:Lcom/android/mms/ui/MessageListItem;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;)V

    .line 314
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 315
    return-object v0

    .line 311
    .end local v0           #mli:Lcom/android/mms/ui/MessageListItem;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002e

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .restart local v0       #mli:Lcom/android/mms/ui/MessageListItem;
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 354
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 363
    :cond_0
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 329
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 325
    return-void
.end method
