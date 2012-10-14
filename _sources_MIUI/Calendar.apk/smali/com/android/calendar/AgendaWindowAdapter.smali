.class public Lcom/android/calendar/AgendaWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;,
        Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;,
        Lcom/android/calendar/AgendaWindowAdapter$EventInfo;,
        Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    }
.end annotation


# static fields
.field private static final AGENDA_SORT_ORDER:Ljava/lang/String; = "startDay ASC, begin ASC, title ASC"

.field static final BASICLOG:Z = false

.field static final DEBUGLOG:Z = false

.field private static final IDEAL_NUM_OF_EVENTS:I = 0x32

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_SELF_ATTENDEE_STATUS:I = 0xc

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field private static final MAX_NUM_OF_ADAPTERS:I = 0x5

.field private static final MAX_QUERY_DURATION:I = 0x3c

.field private static final MIN_QUERY_DURATION:I = 0x7

.field private static final OFF_BY_ONE_BUG:I = 0x1

.field private static final PREFETCH_BOUNDARY:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_TYPE_CLEAN:I = 0x2

.field private static final QUERY_TYPE_NEWER:I = 0x1

.field private static final QUERY_TYPE_OLDER:I

.field private static final RETRIES_ON_NO_DATA:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgendaListView:Lcom/android/calendar/AgendaListView;

.field private mContext:Landroid/content/Context;

.field private mDoneSettingUpHeaderFooter:Z

.field private mEmptyCursorCount:I

.field private mFooterView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/widget/TextView;

.field private mHideDeclined:Z

.field private mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

.field private mNewerRequests:I

.field private mNewerRequestsProcessed:I

.field private mOlderRequests:I

.field private mOlderRequestsProcessed:I

.field private mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

.field private mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCount:I

.field private mShuttingDown:Z

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const-string v0, "AgendaWindowAdapter"

    sput-object v0, Lcom/android/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    .line 79
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/AgendaActivity;Lcom/android/calendar/AgendaListView;)V
    .locals 5
    .parameter "agendaActivity"
    .parameter "agendaListView"

    .prologue
    const v4, 0x7f030002

    const/4 v3, 0x0

    .line 262
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 124
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 126
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    .line 163
    iput-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    .line 263
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 264
    iput-object p2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    .line 265
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {p1}, Lcom/android/calendar/AgendaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;-><init>(Lcom/android/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    .line 267
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Lcom/android/calendar/AgendaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 269
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    .line 270
    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    .line 271
    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaListView;->addHeaderView(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1008(Lcom/android/calendar/AgendaWindowAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/calendar/AgendaWindowAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/AgendaWindowAdapter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AgendaWindowAdapter;->updateHeaderFooter(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/AgendaWindowAdapter;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AgendaWindowAdapter;->isInRange(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/calendar/AgendaWindowAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/calendar/AgendaWindowAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$1712(Lcom/android/calendar/AgendaWindowAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AgendaWindowAdapter;Landroid/text/format/Time;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/calendar/AgendaWindowAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/calendar/AgendaWindowAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mEmptyCursorCount:I

    return p1
.end method

.method static synthetic access$904(Lcom/android/calendar/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mEmptyCursorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mEmptyCursorCount:I

    return v0
.end method

.method private buildQuerySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "selected=1 AND selfAttendeeStatus!=2"

    .line 550
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "selected=1"

    goto :goto_0
.end method

.method private buildQueryUri(II)Landroid/net/Uri;
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v0, path:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    sget-object v2, Landroid/provider/Calendar$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 560
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method private calculateQueryDuration(II)I
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 573
    const/16 v0, 0x3c

    .line 574
    .local v0, queryDuration:I
    iget v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    if-eqz v1, :cond_0

    .line 575
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 578
    :cond_0
    const/16 v1, 0x3c

    if-le v0, v1, :cond_2

    .line 579
    const/16 v0, 0x3c

    .line 584
    :cond_1
    :goto_0
    return v0

    .line 580
    :cond_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 581
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private doQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)V
    .locals 11
    .parameter "queryData"

    .prologue
    const/4 v1, 0x0

    .line 610
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v10, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 612
    .local v10, start:I
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v8, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 613
    .local v8, end:I
    invoke-direct {p0, v10, v8}, Lcom/android/calendar/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v9

    .line 614
    .local v9, queryDuration:I
    iget v0, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v0, :pswitch_data_0

    .line 635
    .end local v8           #end:I
    .end local v9           #queryDuration:I
    .end local v10           #start:I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 637
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    iget v2, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iget v3, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/AgendaWindowAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/calendar/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void

    .line 616
    .restart local v8       #end:I
    .restart local v9       #queryDuration:I
    .restart local v10       #start:I
    :pswitch_0
    const/4 v0, 0x1

    sub-int v0, v10, v0

    iput v0, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 617
    iget v0, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    sub-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_0

    .line 620
    :pswitch_1
    add-int/lit8 v0, v8, 0x1

    iput v0, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 621
    iget v0, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 3
    .parameter "time"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 379
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 380
    iget v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/calendar/AgendaByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v2

    add-int/2addr v1, v2

    .line 382
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private formatDateString(I)Ljava/lang/String;
    .locals 7
    .parameter "julianDay"

    .prologue
    .line 643
    new-instance v6, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 644
    .local v6, time:Landroid/text/format/Time;
    invoke-virtual {v6, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 645
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 646
    .local v1, millis:J
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v5, 0x10014

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 5
    .parameter "position"

    .prologue
    .line 387
    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 388
    :try_start_0
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v3, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v3, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v2

    move-object v2, v3

    .line 400
    :goto_0
    return-object v2

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 393
    .local v1, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v3, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v3, p1, :cond_1

    iget v3, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_1

    .line 395
    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 396
    monitor-exit v2

    move-object v2, v1

    goto :goto_0

    .line 399
    .end local v1           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_2
    monitor-exit v2

    .line 400
    const/4 v2, 0x0

    goto :goto_0

    .line 399
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .parameter "time"

    .prologue
    .line 406
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 407
    .local v5, tmpTime:Landroid/text/format/Time;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 408
    .local v3, timeInMillis:J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 409
    .local v0, day:I
    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 410
    :try_start_0
    iget-object v7, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 411
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v7, v0, :cond_0

    iget v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-ge v0, v7, :cond_0

    .line 412
    monitor-exit v6

    move-object v6, v2

    .line 416
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    return-object v6

    .line 415
    :cond_1
    monitor-exit v6

    .line 416
    const/4 v6, 0x0

    goto :goto_0

    .line 415
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method static getViewTitle(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .parameter "x"

    .prologue
    .line 866
    const-string v1, ""

    .line 867
    .local v1, title:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 868
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 869
    .local v3, yy:Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    if-eqz v4, :cond_1

    .line 870
    check-cast v3, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .end local v3           #yy:Ljava/lang/Object;
    iget-object v2, v3, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 871
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 872
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 881
    .end local v2           #tv:Landroid/widget/TextView;
    .restart local v1       #title:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 874
    .restart local v3       #yy:Ljava/lang/Object;
    :cond_1
    if-eqz v3, :cond_0

    .line 875
    check-cast v3, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;

    .end local v3           #yy:Ljava/lang/Object;
    iget-object v0, v3, Lcom/android/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 876
    .local v0, dateView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method private isInRange(II)Z
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    monitor-exit v1

    move v0, v2

    .line 568
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    .line 568
    goto :goto_1
.end method

.method private pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .parameter "queryType"

    .prologue
    .line 500
    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 501
    const/4 v3, 0x0

    .line 502
    .local v3, recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 503
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_3

    .line 504
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 505
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 511
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 512
    iget-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 513
    iget-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 515
    :cond_1
    monitor-exit v6

    move-object v4, v3

    .line 538
    .end local v3           #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_1
    return-object v4

    .line 506
    .end local v4           #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_2
    if-nez p1, :cond_0

    .line 507
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 509
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 519
    :cond_3
    :try_start_1
    iget v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    .line 520
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    .line 521
    const/4 v1, 0x0

    .line 524
    .local v1, deletedRows:I
    :cond_5
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 525
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_6

    .line 526
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 527
    iget v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 528
    move-object v3, v2

    .line 530
    :cond_6
    if-nez v2, :cond_5

    .line 532
    if-eqz v3, :cond_7

    .line 533
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 534
    iput v1, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 538
    .end local v1           #deletedRows:I
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .end local v3           #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4       #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    goto :goto_1
.end method

.method private queueQuery(IILandroid/text/format/Time;I)Z
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "goToTime"
    .parameter "queryType"

    .prologue
    .line 588
    new-instance v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, p4}, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 589
    .local v0, queryData:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    iput-object p3, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 590
    iput p1, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 591
    iput p2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 592
    invoke-direct {p0, v0}, Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z
    .locals 4
    .parameter "queryData"

    .prologue
    .line 597
    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2

    .line 598
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 599
    .local v1, queuedQuery:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 600
    .local v0, doQueryNow:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 601
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 602
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)V

    .line 605
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 605
    .end local v0           #doQueryNow:Ljava/lang/Boolean;
    .end local v1           #queuedQuery:Ljava/lang/Boolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private updateHeaderFooter(II)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 652
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f080046

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f080047

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/calendar/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mShuttingDown:Z

    .line 493
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 494
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 497
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method public getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .locals 12
    .parameter "position"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 422
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    invoke-direct {v1}, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 423
    .local v1, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    add-int/lit8 p1, p1, -0x1

    .line 424
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 425
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v2, :cond_0

    move-object v5, v9

    .line 469
    :goto_0
    return-object v5

    .line 429
    :cond_0
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result p1

    .line 430
    const/high16 v5, -0x8000

    if-ne p1, v5, :cond_1

    move-object v5, v9

    .line 431
    goto :goto_0

    .line 434
    :cond_1
    const/4 v3, 0x0

    .line 435
    .local v3, isDayHeader:Z
    if-gez p1, :cond_2

    .line 436
    neg-int p1, p1

    .line 437
    const/4 v3, 0x1

    .line 440
    :cond_2
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge p1, v5, :cond_7

    .line 441
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 442
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 443
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_5

    move v0, v8

    .line 445
    .local v0, allDay:Z
    :goto_1
    iput-boolean v0, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->allday:Z

    .line 446
    if-nez v3, :cond_3

    .line 447
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v6, 0x8

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .line 448
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v6, 0x9

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    .line 450
    :cond_3
    if-eqz v0, :cond_6

    .line 451
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 452
    .local v4, time:Landroid/text/format/Time;
    iget-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-static {v5, v6, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 453
    invoke-virtual {v4, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 454
    if-nez v3, :cond_4

    .line 455
    iget-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    invoke-static {v5, v6, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 456
    invoke-virtual {v4, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .end local v4           #time:Landroid/text/format/Time;
    :cond_4
    :goto_2
    move-object v5, v1

    .line 467
    goto :goto_0

    .end local v0           #allDay:Z
    :cond_5
    move v0, v7

    .line 443
    goto :goto_1

    .line 458
    .restart local v0       #allDay:Z
    :cond_6
    if-eqz v3, :cond_4

    .line 459
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 460
    .restart local v4       #time:Landroid/text/format/Time;
    iget-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 461
    iput v7, v4, Landroid/text/format/Time;->hour:I

    .line 462
    iput v7, v4, Landroid/text/format/Time;->minute:I

    .line 463
    iput v7, v4, Landroid/text/format/Time;->second:I

    .line 464
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_2

    .end local v0           #allDay:Z
    .end local v4           #time:Landroid/text/format/Time;
    :cond_7
    move-object v5, v9

    .line 469
    goto/16 :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 317
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 318
    iget-object v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaByDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 320
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 333
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 334
    iget v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0x14

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    .line 336
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 291
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v1

    .line 294
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    .line 342
    iget v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    sub-int/2addr v3, v5

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mNewerRequests:I

    iget v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    if-gt v3, v4, :cond_0

    .line 345
    iget v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mNewerRequests:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mNewerRequests:I

    .line 346
    new-instance v3, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v3, v5}, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    .line 349
    :cond_0
    if-ge p1, v5, :cond_1

    iget v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOlderRequests:I

    iget v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    if-gt v3, v4, :cond_1

    .line 352
    iget v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOlderRequests:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOlderRequests:I

    .line 353
    new-instance v3, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    .line 357
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 358
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_2

    .line 359
    iget-object v3, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v4, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/calendar/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 372
    .local v2, v:Landroid/view/View;
    :goto_0
    return-object v2

    .line 363
    .end local v2           #v:Landroid/view/View;
    :cond_2
    sget-object v3, Lcom/android/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUG: getAdapterInfoByPosition returned null!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 365
    .local v1, tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bug! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    move-object v2, v1

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 302
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaByDayAdapter;->isEnabled(I)Z

    move-result v1

    .line 305
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refresh(Landroid/text/format/Time;Z)V
    .locals 6
    .parameter "goToTime"
    .parameter "forced"

    .prologue
    .line 477
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 479
    .local v1, startDay:I
    if-nez p2, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/calendar/AgendaWindowAdapter;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaListView;->setSelection(I)V

    .line 489
    :goto_0
    return-void

    .line 486
    :cond_0
    add-int/lit8 v0, v1, 0x7

    .line 488
    .local v0, endDay:I
    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;I)Z

    goto :goto_0
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 0
    .parameter "hideDeclined"

    .prologue
    .line 885
    iput-boolean p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHideDeclined:Z

    .line 886
    return-void
.end method
