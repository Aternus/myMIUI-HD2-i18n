.class public Lcom/android/mms/data/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Conversation$Cache;,
        Lcom/android/mms/data/Conversation$TimedThreads;
    }
.end annotation


# static fields
.field public static final ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final SEEN_PROJECTION:[Ljava/lang/String;

.field private static final UNREAD_PROJECTION:[Ljava/lang/String;

.field private static mLoadingThreads:Z

.field private static mReadContentValues:Landroid/content/ContentValues;

.field private static final sAllThreadsUri:Landroid/net/Uri;

.field private static sObsoleteReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mDemoRecipientsName:Ljava/lang/String;

.field private mHasAttachment:Z

.field private mHasError:Z

.field private mHasUnreadMessages:Z

.field private mInCache:Z

.field private mMarkAsBlockedSyncer:Ljava/lang/Object;

.field private mMarkAsReadBlocked:Z

.field private mMessageCount:I

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSnippet:Ljava/lang/String;

.field private mThreadId:J

.field private mUnreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "read"

    const-string v6, "_id"

    .line 43
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "message_count"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "read"

    aput-object v7, v0, v1

    const/16 v1, 0x8

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "read"

    aput-object v7, v0, v4

    sput-object v0, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "seen"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    .line 944
    new-instance v0, Lcom/android/mms/data/Conversation$2;

    invoke-direct {v0}, Lcom/android/mms/data/Conversation$2;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation;->sObsoleteReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mInCache:Z

    .line 118
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 121
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JZ)V
    .locals 2
    .parameter "context"
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mInCache:Z

    .line 124
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 128
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/data/Conversation;->loadFromThreadId(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 135
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "allowQuery"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mInCache:Z

    .line 141
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 142
    invoke-static {p1, p0, p2, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 143
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/data/Conversation;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mInCache:Z

    return p1
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V

    return-void
.end method

.method public static asyncDeleteObsoleteThreads(Landroid/content/AsyncQueryHandler;I)V
    .locals 6
    .parameter "handler"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 670
    sget-object v3, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method private static blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v3, "seen=0"

    .line 1026
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1027
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v5, "seen=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1033
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1035
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 1037
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1039
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1043
    :cond_0
    if-nez v6, :cond_1

    .line 1059
    :goto_0
    return-void

    .line 1039
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1051
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1052
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1054
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "seen=0"

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v3, "seen=0"

    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 992
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v5, "seen=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 998
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1000
    .local v6, count:I
    if-eqz v7, :cond_0

    .line 1002
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1004
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1008
    :cond_0
    if-nez v6, :cond_1

    .line 1023
    :goto_0
    return-void

    .line 1004
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1016
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1017
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "seen=0"

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildReadContentValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 359
    sget-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    .line 361
    sget-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    sget-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    const-string v1, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    :cond_0
    return-void
.end method

.method private static cacheAllThreads(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1071
    const-string v0, "Mms:threadcache"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const-string v0, "cacheAllThreads: begin"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1075
    :try_start_0
    sget-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    if-eqz v1, :cond_1

    .line 1076
    monitor-exit v0

    .line 1129
    :goto_0
    return-void

    .line 1078
    :cond_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    .line 1079
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1083
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1086
    .local v11, threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1089
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1090
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1091
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1092
    .local v9, threadId:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1097
    :try_start_2
    invoke-static {v9, v10}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 1098
    .local v7, conv:Lcom/android/mms/data/Conversation;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1100
    if-nez v7, :cond_3

    .line 1103
    :try_start_3
    new-instance v7, Lcom/android/mms/data/Conversation;

    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    const/4 v0, 0x1

    invoke-direct {v7, p0, v6, v0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1105
    .restart local v7       #conv:Lcom/android/mms/data/Conversation;
    :try_start_4
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1106
    :try_start_5
    invoke-static {v7}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V

    .line 1107
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1108
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1109
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v0, "Tried to add duplicate Conversation to Cache"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1119
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v8           #e:Ljava/lang/IllegalStateException;
    .end local v9           #threadId:J
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 1120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1122
    :cond_2
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1123
    const/4 v2, 0x0

    :try_start_8
    sput-boolean v2, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    .line 1124
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 1079
    .end local v6           #c:Landroid/database/Cursor;
    .end local v11           #threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1

    .line 1098
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #threadId:J
    .restart local v11       #threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1

    .line 1114
    .restart local v7       #conv:Lcom/android/mms/data/Conversation;
    :cond_3
    const/4 v0, 0x1

    invoke-static {p0, v7, v6, v0}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .line 1119
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v9           #threadId:J
    :cond_4
    if-eqz v6, :cond_5

    .line 1120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1122
    :cond_5
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1123
    const/4 v1, 0x0

    :try_start_c
    sput-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    .line 1124
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1128
    invoke-static {v11}, Lcom/android/mms/data/Conversation$Cache;->keepOnly(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 1124
    :catchall_4
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createNew(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "context"
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    .line 155
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    return-object v0
.end method

.method public static createNew(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "allowQuery"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 177
    if-nez p1, :cond_0

    .line 178
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 197
    :goto_0
    return-object v4

    .line 181
    :cond_0
    const-string v4, "Conversation get URI: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 186
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 190
    .local v2, threadId:J
    invoke-static {p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 191
    .end local v2           #threadId:J
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 192
    .local v0, exception:Ljava/lang/NumberFormatException;
    const-string v4, "Invalid URI: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipientsFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1, p2, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v4

    goto :goto_0
.end method

.method public static createNew(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;
    .locals 7
    .parameter "context"
    .parameter "recipients"
    .parameter "allowQuery"

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 161
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    .line 173
    :goto_0
    return-object v3

    .line 164
    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v1

    .line 165
    .local v1, threadId:J
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 166
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 171
    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    :cond_1
    move-object v3, v0

    .line 173
    goto :goto_0
.end method

.method private static fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    .locals 10
    .parameter "context"
    .parameter "conv"
    .parameter "c"
    .parameter "allowQuery"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 773
    monitor-enter p1

    .line 774
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 775
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/mms/data/Conversation;->mDate:J

    .line 776
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p1, Lcom/android/mms/data/Conversation;->mMessageCount:I

    .line 777
    const/4 v4, 0x3

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p1, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I

    .line 780
    const/4 v4, 0x5

    const/4 v5, 0x6

    invoke-static {p2, v4, v5}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, snippet:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 782
    const v4, 0x7f09000d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 784
    :cond_0
    iput-object v3, p1, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;

    .line 786
    const/4 v4, 0x7

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v7

    :goto_0
    invoke-direct {p1, v4}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    .line 787
    const/16 v4, 0x8

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    :goto_1
    iput-boolean v4, p1, Lcom/android/mms/data/Conversation;->mHasError:Z

    .line 788
    const/16 v4, 0x9

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v7

    :goto_2
    iput-boolean v4, p1, Lcom/android/mms/data/Conversation;->mHasAttachment:Z

    .line 789
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 792
    const/4 v4, 0x4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, recipientIds:Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 794
    .local v2, recipients:Lcom/android/mms/data/ContactList;
    monitor-enter p1

    .line 795
    :try_start_1
    iget-boolean v4, p1, Lcom/android/mms/data/Conversation;->mInCache:Z

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2, v4}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 796
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexpected recipient change in cached %d conversations from %s to %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p1, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 805
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .end local v1           #recipientIds:Ljava/lang/String;
    .end local v2           #recipients:Lcom/android/mms/data/ContactList;
    :cond_1
    move v4, v6

    .line 786
    goto :goto_0

    :cond_2
    move v4, v6

    .line 787
    goto :goto_1

    :cond_3
    move v4, v6

    .line 788
    goto :goto_2

    .line 789
    .end local v3           #snippet:Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 804
    .restart local v1       #recipientIds:Ljava/lang/String;
    .restart local v2       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v3       #snippet:Ljava/lang/String;
    :cond_4
    :try_start_3
    iput-object v2, p1, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 805
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 807
    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 808
    const-string v4, "demo_recipient_name"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 809
    .local v0, demoNameIdx:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    .line 810
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/mms/data/Conversation;->mDemoRecipientsName:Ljava/lang/String;

    .line 813
    .end local v0           #demoNameIdx:I
    :cond_5
    return-void
.end method

.method public static from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;
    .locals 8
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    .line 341
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 342
    .local v3, threadId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 343
    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 344
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 345
    invoke-static {p0, v0, p1, v7}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    move-object v1, v0

    .line 355
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .local v1, conv:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 349
    .end local v1           #conv:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, p1, v7}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 351
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 355
    .restart local v1       #conv:Ljava/lang/Object;
    goto :goto_0

    .line 352
    .end local v1           #conv:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 353
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v5, "Tried to add duplicate Conversation to Cache"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    .locals 5
    .parameter "context"
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    .line 211
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 212
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 228
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .local v1, conv:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 222
    .end local v1           #conv:Ljava/lang/Object;
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 224
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 228
    .restart local v1       #conv:Ljava/lang/Object;
    goto :goto_0

    .line 225
    .end local v1           #conv:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 226
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v3, "Tried to add duplicate Conversation to Cache"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "allowQuery"

    .prologue
    const/4 v7, 0x1

    .line 283
    if-nez p1, :cond_0

    .line 284
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 305
    :goto_0
    return-object v4

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 294
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 298
    .local v2, threadId:J
    invoke-static {p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 299
    .end local v2           #threadId:J
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 300
    .local v0, exception:Ljava/lang/NumberFormatException;
    const-string v4, "Invalid URI: %s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipientsFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1, p2, v7}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v4

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;
    .locals 10
    .parameter "context"
    .parameter "recipients"
    .parameter "allowQuery"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 237
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    if-ge v4, v9, :cond_0

    .line 238
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 273
    :goto_0
    return-object v4

    .line 241
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Conversation$Cache;->get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 242
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 243
    goto :goto_0

    .line 245
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v2

    .line 246
    .local v2, threadId:J
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 252
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 257
    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    move-object v4, v0

    .line 258
    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 262
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Conversation.get: new conv %d \'s recipients %s don\'t match input recpients %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 268
    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v4, v0

    .line 273
    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "Tried to add duplicate Conversation to Cache"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J
    .locals 9
    .parameter "context"
    .parameter "list"

    .prologue
    .line 611
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 612
    .local v4, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 613
    .local v2, cacheContact:Lcom/android/mms/data/Contact;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 615
    .local v1, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 617
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_0
    if-eqz v2, :cond_1

    .line 620
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/util/AddressUtils;->cutPhoneNumberTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v7, "(cached)"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/util/AddressUtils;->cutPhoneNumberTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 628
    .end local v1           #c:Lcom/android/mms/data/Contact;
    :cond_2
    const-string v7, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {p0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    .line 634
    .local v5, retVal:J
    return-wide v5
.end method

.method private static getRecipientsFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, base:Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 204
    .local v1, pos:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 961
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/Conversation$3;

    invoke-direct {v2, p0}, Lcom/android/mms/data/Conversation$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 966
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SMS_THREADS_OBSOLETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 967
    .local v0, intentFilter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/mms/data/Conversation;->sObsoleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 968
    return-void
.end method

.method private loadFromThreadId(JZ)Z
    .locals 9
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1132
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1135
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1136
    :cond_0
    const-string v0, "loadFromThreadId: Can\'t find thread ID %d"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    .line 1149
    :goto_0
    return v0

    .line 1141
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v6, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 1142
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 1143
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromThreadId: fillFromCursor returned different thread_id! threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mThreadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1149
    goto :goto_0
.end method

.method public static loadingThreads()Z
    .locals 2

    .prologue
    .line 1065
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1066
    :try_start_0
    sget-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    monitor-exit v0

    return v1

    .line 1067
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static markAllConversationsAsSeen(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 979
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$4;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$4;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 988
    return-void
.end method

.method private setHasUnreadMessages(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    .line 593
    monitor-exit p0

    .line 594
    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startBatchDelete(Landroid/content/AsyncQueryHandler;IZLjava/util/HashSet;)V
    .locals 8
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncQueryHandler;",
            "IZ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 718
    if-eqz p2, :cond_0

    move-object v6, v2

    .line 719
    .local v6, lockSelection:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 720
    .local v7, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v6}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 722
    return-void

    .line 718
    .end local v6           #lockSelection:Ljava/lang/String;
    .end local v7           #selection:Ljava/lang/String;
    :cond_0
    const-string v0, "locked=0"

    move-object v6, v0

    goto :goto_0
.end method

.method public static startDelete(Landroid/content/AsyncQueryHandler;IZJ)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 707
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 708
    .local v3, uri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    move-object v4, v2

    .local v4, selection:Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v5, v2

    .line 709
    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 710
    return-void

    .line 708
    .end local v4           #selection:Ljava/lang/String;
    :cond_0
    const-string v0, "locked=0"

    move-object v4, v0

    goto :goto_0
.end method

.method public static startDeleteAll(Landroid/content/AsyncQueryHandler;IZ)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"

    .prologue
    const/4 v2, 0x0

    .line 735
    if-eqz p2, :cond_0

    move-object v4, v2

    .line 736
    .local v4, selection:Ljava/lang/String;
    :goto_0
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 737
    return-void

    .line 735
    .end local v4           #selection:Ljava/lang/String;
    :cond_0
    const-string v0, "locked=0"

    move-object v4, v0

    goto :goto_0
.end method

.method public static startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    .locals 8
    .parameter "handler"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 682
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 689
    sget-object v3, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "server_date DESC"

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V
    .locals 8
    .parameter "handler"
    .parameter "threadId"
    .parameter "token"

    .prologue
    const/4 v5, 0x0

    .line 748
    invoke-virtual {p0, p3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 749
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 750
    .local v3, uri:Landroid/net/Uri;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 751
    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 753
    :cond_0
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "server_date DESC"

    move-object v0, p0

    move v1, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/HashSet;I)V
    .locals 8
    .parameter "handler"
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncQueryHandler;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p1, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0, p2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 761
    .local v5, selection:Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "server_date DESC"

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method public static terminate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 971
    sget-object v0, Lcom/android/mms/data/Conversation;->sObsoleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 972
    return-void
.end method


# virtual methods
.method public blockMarkAsRead(Z)V
    .locals 2
    .parameter "block"

    .prologue
    .line 426
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockMarkAsRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eq p1, v1, :cond_1

    .line 432
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    .line 433
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-nez v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 438
    :cond_1
    monitor-exit v0

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized clearThreadId()V
    .locals 2

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 496
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureThreadId()J
    .locals 4

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 487
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/Conversation;

    move-object v2, v0

    .line 646
    .local v2, other:Lcom/android/mms/data/Conversation;
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    iget-object v4, v2, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 648
    .end local v2           #other:Lcom/android/mms/data/Conversation;
    :goto_0
    monitor-exit p0

    return v3

    .line 647
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 648
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    goto :goto_0

    .line 645
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDate()J
    .locals 2

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDemoRecipientsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mDemoRecipientsName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThreadId()J
    .locals 2

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 447
    const/4 v0, 0x0

    .line 449
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAttachment()Z
    .locals 1

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDraft()Z
    .locals 4

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 534
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasError()Z
    .locals 1

    .prologue
    .line 607
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUnreadMessages()Z
    .locals 1

    .prologue
    .line 585
    monitor-enter p0

    .line 586
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    monitor-exit p0

    return v0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markAsReadAsync()V
    .locals 2

    .prologue
    .line 374
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$1;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$1;-><init>(Lcom/android/mms/data/Conversation;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 379
    return-void
.end method

.method public markAsReadSync()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "(read=0 OR seen=0)"

    .line 382
    iget-object v8, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    monitor-enter v8

    .line 383
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 385
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 391
    .local v1, threadUri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 392
    invoke-direct {p0}, Lcom/android/mms/data/Conversation;->buildReadContentValues()V

    .line 398
    const/4 v7, 0x1

    .line 400
    .local v7, needUpdate:Z
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    const-string v3, "(read=0 OR seen=0)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 402
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 404
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    move v7, v10

    .line 406
    :goto_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_1
    if-eqz v7, :cond_2

    .line 411
    const-string v0, "markAsRead: update read/seen for thread uri: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    const-string v3, "(read=0 OR seen=0)"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    .line 419
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #needUpdate:Z
    :cond_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 422
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 423
    return-void

    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #needUpdate:Z
    :cond_4
    move v7, v9

    .line 404
    goto :goto_1

    .line 406
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 419
    .end local v1           #threadUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #needUpdate:Z
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized setDraftState(Z)V
    .locals 4
    .parameter "hasDraft"

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 545
    :goto_0
    monitor-exit p0

    return-void

    .line 544
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 6
    .parameter "list"

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mInCache:Z

    if-eqz v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected recipient change in cached conversation %d from %s to %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 515
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 517
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    const-string v0, "%s (tid %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update()V
    .locals 4

    .prologue
    .line 1156
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1159
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/Conversation;->loadFromThreadId(JZ)Z

    goto :goto_0
.end method
