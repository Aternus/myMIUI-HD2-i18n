.class public Lcom/miui/player/ui/QueryBrowserActivity;
.super Lcom/miui/player/ui/BaseListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mFilterString:Ljava/lang/String;

.field private mGotoOnlineSearchListener:Landroid/view/View$OnClickListener;

.field private mHeaderSeparator:Landroid/view/View;

.field private mHintTextView:Landroid/widget/TextView;

.field private mOnlineSearchView:Landroid/widget/TextView;

.field private mQueryCursor:Landroid/database/Cursor;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/player/ui/BaseListActivity;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 484
    new-instance v0, Lcom/miui/player/ui/QueryBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/QueryBrowserActivity$1;-><init>(Lcom/miui/player/ui/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mGotoOnlineSearchListener:Landroid/view/View$OnClickListener;

    .line 508
    new-instance v0, Lcom/miui/player/ui/QueryBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/QueryBrowserActivity$2;-><init>(Lcom/miui/player/ui/QueryBrowserActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/QueryBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/player/ui/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/player/ui/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/ui/QueryBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/QueryBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/miui/player/ui/QueryBrowserActivity;->updateHintText()V

    return-void
.end method

.method private getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 178
    if-nez p2, :cond_0

    .line 179
    const-string p2, ""

    .line 181
    :cond_0
    const/4 v0, 0x7

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v1

    const/4 v0, 0x1

    const-string v5, "mime_type"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "artist"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "album"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "title"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "data1"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "data2"

    aput-object v5, v4, v0

    .line 189
    .local v4, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/external/audio/search/fancy/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 191
    .local v3, search:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 192
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 193
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-object v11

    :cond_1
    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    .line 195
    invoke-static/range {v5 .. v10}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0
.end method

.method private updateHintText()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 472
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mHeaderSeparator:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :goto_0
    const v1, 0x7f080095

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, fromLocalToOnline:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mOnlineSearchView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    return-void

    .line 476
    .end local v0           #fromLocalToOnline:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mHeaderSeparator:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 124
    const v1, 0x7f0c00ae

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, sdErrorWraper:Landroid/view/View;
    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/miui/player/ui/QueryBrowserActivity;->enableDatabaseError(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_1

    .line 129
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    const v1, 0x7f0c0051

    iget-object v2, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v3}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->getCount()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    .line 133
    invoke-direct {p0}, Lcom/miui/player/ui/QueryBrowserActivity;->updateHintText()V

    goto :goto_0
.end method

.method public isEnableScanReceiver()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public notifyConnection(Lcom/miui/player/IMediaPlaybackService;)V
    .locals 24
    .parameter "service"

    .prologue
    .line 374
    const v4, 0x7f0800ac

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mToast:Landroid/widget/Toast;

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 377
    .local v19, intent:Landroid/content/Intent;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 379
    .local v11, action:Ljava/lang/String;
    :goto_0
    if-eqz v11, :cond_4

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 382
    .local v23, uri:Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    .line 383
    .local v21, path:Ljava/lang/String;
    const-string v4, "content://media/external/audio/media/"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    .line 386
    .local v17, id:Ljava/lang/String;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/4 v4, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v20, v4

    .line 389
    .local v20, list:[J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->finish()V

    .line 469
    .end local v17           #id:Ljava/lang/String;
    .end local v20           #list:[J
    .end local v21           #path:Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 377
    .end local v11           #action:Ljava/lang/String;
    .restart local p1
    :cond_1
    const/4 v4, 0x0

    move-object v11, v4

    goto :goto_0

    .line 392
    .restart local v11       #action:Ljava/lang/String;
    .restart local v21       #path:Ljava/lang/String;
    .restart local v23       #uri:Landroid/net/Uri;
    :cond_2
    const-string v4, "content://media/external/audio/albums/"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 394
    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.miui.music.PICK"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v16, i:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v4, "album"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->finish()V

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 400
    .end local v16           #i:Landroid/content/Intent;
    :cond_3
    const-string v4, "content://media/external/audio/artists/"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 402
    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.miui.music.PICK"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v16       #i:Landroid/content/Intent;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/album"

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v4, "artist"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->finish()V

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    .line 411
    .end local v16           #i:Landroid/content/Intent;
    .end local v21           #path:Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    :cond_4
    const-string v4, "query"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 412
    if-eqz v11, :cond_5

    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 413
    const-string v4, "android.intent.extra.focus"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 414
    .local v14, focus:Ljava/lang/String;
    const-string v4, "android.intent.extra.artist"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 415
    .local v13, artist:Ljava/lang/String;
    const-string v4, "android.intent.extra.album"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 416
    .local v12, album:Ljava/lang/String;
    const-string v4, "android.intent.extra.title"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 417
    .local v22, title:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 418
    const-string v4, "audio/"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v22, :cond_6

    .line 419
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 435
    .end local v12           #album:Ljava/lang/String;
    .end local v13           #artist:Ljava/lang/String;
    .end local v14           #focus:Ljava/lang/String;
    .end local v22           #title:Ljava/lang/String;
    :cond_5
    :goto_2
    const v4, 0x7f030031

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->setContentView(I)V

    .line 436
    const v4, 0x7f0c00af

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mHintTextView:Landroid/widget/TextView;

    .line 437
    const v4, 0x7f0c00b0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mHeaderSeparator:Landroid/view/View;

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    .line 439
    .local v18, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030032

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 440
    .local v15, footer:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 441
    const v4, 0x7f0c00b1

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mOnlineSearchView:Landroid/widget/TextView;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mOnlineSearchView:Landroid/widget/TextView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mGotoOnlineSearchListener:Landroid/view/View$OnClickListener;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v4, v0

    if-nez v4, :cond_8

    .line 444
    new-instance v4, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    const v7, 0x7f030016

    const/4 v8, 0x0

    const/4 v6, 0x0

    new-array v9, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    new-array v10, v6, [I

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v10}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/miui/player/ui/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 461
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 462
    invoke-static/range {p0 .. p0}, Lcom/miui/player/MusicUtils;->updateGoHome(Landroid/app/Activity;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 465
    const v4, 0x7f0c0051

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/MusicUtils;->updateHeaderText(Landroid/app/Activity;ILjava/lang/CharSequence;I)V

    goto/16 :goto_1

    .line 420
    .end local v15           #footer:Landroid/view/View;
    .end local v18           #inflater:Landroid/view/LayoutInflater;
    .restart local v12       #album:Ljava/lang/String;
    .restart local v13       #artist:Ljava/lang/String;
    .restart local v14       #focus:Ljava/lang/String;
    .restart local v22       #title:Ljava/lang/String;
    .restart local p1
    :cond_6
    const-string v4, "vnd.android.cursor.item/album"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 421
    if-eqz v12, :cond_5

    .line 422
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 423
    if-eqz v13, :cond_5

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_2

    .line 427
    :cond_7
    const-string v4, "vnd.android.cursor.item/artist"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 428
    if-eqz v13, :cond_5

    .line 429
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    goto/16 :goto_2

    .line 452
    .end local v12           #album:Ljava/lang/String;
    .end local v13           #artist:Ljava/lang/String;
    .end local v14           #focus:Ljava/lang/String;
    .end local v22           #title:Ljava/lang/String;
    .end local p1
    .restart local v15       #footer:Landroid/view/View;
    .restart local v18       #inflater:Landroid/view/LayoutInflater;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/miui/player/ui/QueryBrowserActivity;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v4, v0

    if-eqz v4, :cond_9

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    goto/16 :goto_3

    .line 458
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/miui/player/ui/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/ui/QueryBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    iput-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    invoke-static {p0, p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->registerParentServiceConnection(Landroid/app/Activity;Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;)V

    .line 82
    return-void

    .line 77
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 78
    .local v0, e:Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->onDestroy()V

    .line 93
    iget-boolean v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 99
    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/player/ui/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    iget-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->recycleCursorAdapter(Landroid/widget/SimpleCursorAdapter;Landroid/database/DataSetObserver;)V

    .line 101
    iput-object v2, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    .line 102
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 108
    :pswitch_0
    if-nez p2, :cond_0

    .line 109
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->finishParent(Landroid/app/Activity;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 141
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    iget-object v4, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 149
    iget-object v4, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    iget-object v4, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    const-string v6, "mime_type"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, selectedType:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.miui.music.PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v4, "artist"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-static {p0, v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v4, "album"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.miui.music.PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v4, "album"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-static {p0, v0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->pushActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    if-ltz p3, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-ltz v4, :cond_5

    .line 168
    const/4 v4, 0x1

    new-array v1, v4, [J

    const/4 v4, 0x0

    aput-wide p4, v1, v4

    .line 171
    .local v1, list:[J
    const/4 v4, 0x0

    invoke-static {p0, v1, v4}, Lcom/miui/player/MusicUtils;->playAll(Landroid/content/Context;[JI)V

    goto/16 :goto_0

    .line 173
    .end local v1           #list:[J
    :cond_5
    const-string v4, "QueryBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid position/id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapterSent:Z

    .line 87
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public scan()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity;->mAdapter:Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 500
    :cond_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseListActivity;->scan()V

    .line 501
    return-void
.end method
