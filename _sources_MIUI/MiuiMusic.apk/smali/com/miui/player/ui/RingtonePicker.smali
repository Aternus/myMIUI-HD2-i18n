.class public Lcom/miui/player/ui/RingtonePicker;
.super Landroid/app/ListActivity;
.source "RingtonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/MusicUtils$OnDialogCallback;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/RingtonePicker$QueryHandler;,
        Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;
    }
.end annotation


# static fields
.field static final ALBUM_MENU:I = 0x2

.field static final ARTIST_MENU:I = 0x3

.field static final CURSOR_COLS:[Ljava/lang/String; = null

.field static final DBG:Z = false

.field static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field static final MY_QUERY_TOKEN:I = 0x2a

.field static final SORT_MODE_KEY:Ljava/lang/String; = "sortMode"

.field static final TAG:Ljava/lang/String; = "RingtonePicker"

.field static final TRACK_MENU:I = 0x1

.field static sFormatBuilder:Ljava/lang/StringBuilder;

.field static sFormatter:Ljava/util/Formatter;

.field static final sTimeArgs:[Ljava/lang/Object;


# instance fields
.field mAdapter:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

.field mBaseUri:Landroid/net/Uri;

.field mCancelButton:Landroid/view/View;

.field mCursor:Landroid/database/Cursor;

.field mListContainer:Landroid/view/View;

.field mListHasFocus:Z

.field mListShown:Z

.field mListState:Landroid/os/Parcelable;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field mOkayButton:Landroid/view/View;

.field mPlayingId:J

.field mQueryHandler:Lcom/miui/player/ui/RingtonePicker$QueryHandler;

.field mSelectedId:J

.field mSelectedUri:Landroid/net/Uri;

.field mSortMode:I

.field mSortOrder:Ljava/lang/String;

.field mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 105
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const-string v1, "artist"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "track"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/ui/RingtonePicker;->CURSOR_COLS:[Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/miui/player/ui/RingtonePicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 116
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/miui/player/ui/RingtonePicker;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/miui/player/ui/RingtonePicker;->sFormatter:Ljava/util/Formatter;

    .line 119
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lcom/miui/player/ui/RingtonePicker;->sTimeArgs:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 73
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mListState:Landroid/os/Parcelable;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSortMode:I

    .line 161
    iput-wide v1, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedId:J

    .line 170
    iput-wide v1, p0, Lcom/miui/player/ui/RingtonePicker;->mPlayingId:J

    .line 175
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/player/ui/RingtonePicker;->mStreamType:I

    .line 782
    new-instance v0, Lcom/miui/player/ui/RingtonePicker$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/RingtonePicker$1;-><init>(Lcom/miui/player/ui/RingtonePicker;)V

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mMountReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method doQuery(ZLjava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .parameter "sync"
    .parameter "filterstring"

    .prologue
    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mQueryHandler:Lcom/miui/player/ui/RingtonePicker$QueryHandler;

    move-object v2, v0

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->cancelOperation(I)V

    .line 653
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .local v18, where:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const/4 v6, 0x0

    .line 658
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 659
    const-string v2, " "

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 660
    .local v17, searchWords:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move v2, v0

    new-array v6, v2, [Ljava/lang/String;

    .line 661
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v15

    .line 662
    .local v15, col:Ljava/text/Collator;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 663
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-ge v0, v1, :cond_0

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v17, v16

    invoke-static {v3}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    .line 663
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 666
    :cond_0
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-ge v0, v1, :cond_1

    .line 667
    const-string v2, " AND "

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v2, "artist_key||"

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    const-string v2, "album_key||"

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const-string v2, "title_key LIKE ?"

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 678
    .end local v15           #col:Ljava/text/Collator;
    .end local v16           #i:I
    .end local v17           #searchWords:[Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 680
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mBaseUri:Landroid/net/Uri;

    move-object v3, v0

    sget-object v4, Lcom/miui/player/ui/RingtonePicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mSortOrder:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 690
    :goto_2
    return-object v2

    .line 685
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mAdapter:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->setLoading(Z)V

    .line 686
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/RingtonePicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mQueryHandler:Lcom/miui/player/ui/RingtonePicker$QueryHandler;

    move-object v7, v0

    const/16 v8, 0x2a

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mBaseUri:Landroid/net/Uri;

    move-object v10, v0

    sget-object v11, Lcom/miui/player/ui/RingtonePicker;->CURSOR_COLS:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mSortOrder:Ljava/lang/String;

    move-object v14, v0

    move-object v13, v6

    invoke-virtual/range {v7 .. v14}, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    :goto_3
    const/4 v2, 0x0

    goto :goto_2

    .line 682
    :catch_0
    move-exception v2

    goto :goto_3
.end method

.method makeListShown()V
    .locals 2

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/miui/player/ui/RingtonePicker;->mListShown:Z

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/RingtonePicker;->mListShown:Z

    .line 634
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mListContainer:Landroid/view/View;

    const/high16 v1, 0x10a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 636
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    :cond_0
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1
    .parameter "focusChange"

    .prologue
    .line 793
    packed-switch p1, :pswitch_data_0

    .line 803
    :goto_0
    return-void

    .line 797
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->stopMediaPlayer(Z)V

    goto :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mOkayButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 759
    iget-wide v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 760
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v3, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/RingtonePicker;->setResult(ILandroid/content/Intent;)V

    .line 762
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->finish()V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->finish()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne v1, p1, :cond_0

    .line 734
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 735
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 736
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 737
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/player/ui/RingtonePicker;->mPlayingId:J

    .line 738
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 739
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/RingtonePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 740
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 742
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x0

    const-string v4, "android.intent.extra.ringtone.TYPE"

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 438
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 440
    const/4 v11, 0x1

    .line 441
    .local v11, sortMode:I
    if-nez p1, :cond_3

    .line 442
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 444
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/miui/player/ui/RingtonePicker;->mStreamType:I

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/RingtonePicker;->mStreamType:I

    .line 454
    :goto_0
    iget v0, p0, Lcom/miui/player/ui/RingtonePicker;->mStreamType:I

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->setVolumeControlStream(I)V

    .line 456
    const-string v0, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 457
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mBaseUri:Landroid/net/Uri;

    .line 467
    :cond_0
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->setContentView(I)V

    .line 469
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSortOrder:Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 473
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v13}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 475
    new-instance v0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

    const v4, 0x7f030027

    new-array v5, v13, [Ljava/lang/String;

    new-array v6, v13, [I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;-><init>(Lcom/miui/player/ui/RingtonePicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mAdapter:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

    .line 478
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mAdapter:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 480
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 483
    invoke-virtual {v3, v13}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 485
    new-instance v0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/miui/player/ui/RingtonePicker$QueryHandler;-><init>(Lcom/miui/player/ui/RingtonePicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mQueryHandler:Lcom/miui/player/ui/RingtonePicker$QueryHandler;

    .line 487
    const v0, 0x7f0c0098

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mListContainer:Landroid/view/View;

    .line 489
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mOkayButton:Landroid/view/View;

    .line 490
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mOkayButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 491
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mOkayButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mCancelButton:Landroid/view/View;

    .line 493
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mCancelButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 494
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 499
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 500
    .local v8, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    .line 501
    .local v10, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 502
    .local v9, idx:I
    if-ltz v9, :cond_1

    .line 503
    invoke-virtual {v10, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 505
    :cond_1
    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 506
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 513
    .local v7, baseSelectedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 516
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedId:J

    .line 527
    .end local v7           #baseSelectedUri:Landroid/net/Uri;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v9           #idx:I
    .end local v10           #path:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0, v11}, Lcom/miui/player/ui/RingtonePicker;->setSortMode(I)Z

    .line 528
    .end local v3           #listView:Landroid/widget/ListView;
    :goto_2
    return-void

    .line 446
    :cond_3
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 449
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mListState:Landroid/os/Parcelable;

    .line 450
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/ui/RingtonePicker;->mListHasFocus:Z

    .line 451
    const-string v0, "sortMode"

    invoke-virtual {p1, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 452
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v0, p0, Lcom/miui/player/ui/RingtonePicker;->mStreamType:I

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/player/ui/RingtonePicker;->mStreamType:I

    goto/16 :goto_0

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mBaseUri:Landroid/net/Uri;

    .line 460
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mBaseUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 461
    const-string v0, "MusicPicker"

    const-string v1, "No data URI given to PICK action"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->finish()V

    goto :goto_2

    .line 518
    .restart local v3       #listView:Landroid/widget/ListView;
    .restart local v7       #baseSelectedUri:Landroid/net/Uri;
    .restart local v8       #builder:Landroid/net/Uri$Builder;
    .restart local v9       #idx:I
    .restart local v10       #path:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string v4, "_data"

    invoke-static {p0, v0, v1, v2, v4}, Lcom/miui/player/helper/Global;->translateToContentUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 521
    .local v12, uri:Landroid/net/Uri;
    if-eqz v12, :cond_2

    .line 522
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedId:J

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 546
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 547
    const v0, 0x7f080038

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 548
    const/4 v0, 0x2

    const v1, 0x7f080039

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 549
    const/4 v0, 0x3

    const v1, 0x7f08003a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 550
    return v3
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 771
    packed-switch p1, :pswitch_data_0

    .line 780
    :goto_0
    return-void

    .line 773
    :pswitch_0
    if-nez p2, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->finish()V

    goto :goto_0

    .line 776
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/RingtonePicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 771
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 701
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->setSelected(Landroid/database/Cursor;)V

    .line 702
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 538
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->setSortMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->stopMediaPlayer(Z)V

    .line 579
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/RingtonePicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 580
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 532
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 533
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/ui/RingtonePicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    .line 534
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 566
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 567
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 568
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 572
    iget-object v1, p0, Lcom/miui/player/ui/RingtonePicker;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/RingtonePicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 573
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 555
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 558
    const-string v0, "liststate"

    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 559
    const-string v0, "focused"

    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 560
    const-string v0, "sortMode"

    iget v1, p0, Lcom/miui/player/ui/RingtonePicker;->mSortMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/miui/player/ui/RingtonePicker;->mStreamType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 584
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 590
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mAdapter:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->setLoading(Z)V

    .line 591
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mAdapter:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 592
    return-void
.end method

.method setSelected(Landroid/database/Cursor;)V
    .locals 8
    .parameter "c"

    .prologue
    .line 705
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 706
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/miui/player/ui/RingtonePicker;->mCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 707
    .local v2, newId:J
    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    .line 709
    iput-wide v2, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedId:J

    .line 710
    iget-wide v5, p0, Lcom/miui/player/ui/RingtonePicker;->mPlayingId:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v5, :cond_2

    .line 711
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/RingtonePicker;->stopMediaPlayer(Z)V

    .line 712
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 714
    :try_start_0
    iget-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/miui/player/ui/RingtonePicker;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {v5, p0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 715
    iget-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 716
    iget-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v6, p0, Lcom/miui/player/ui/RingtonePicker;->mStreamType:I

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 717
    iget-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 718
    iget-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 719
    iput-wide v2, p0, Lcom/miui/player/ui/RingtonePicker;->mPlayingId:J

    .line 720
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/RingtonePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 721
    .local v0, am:Landroid/media/AudioManager;
    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-virtual {v0, p0, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 722
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_1
    :goto_0
    return-void

    .line 723
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 724
    .local v1, e:Ljava/io/IOException;
    const-string v5, "MusicPicker"

    const-string v6, "Unable to play track"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 726
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    iget-object v5, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 727
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/miui/player/ui/RingtonePicker;->stopMediaPlayer(Z)V

    .line 728
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method setSortMode(I)Z
    .locals 4
    .parameter "sortMode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 599
    iget v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSortMode:I

    if-eq p1, v0, :cond_0

    .line 600
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 624
    :goto_0
    return v0

    .line 602
    :pswitch_0
    iput p1, p0, Lcom/miui/player/ui/RingtonePicker;->mSortMode:I

    .line 603
    const-string v0, "title_key"

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSortOrder:Ljava/lang/String;

    .line 604
    invoke-virtual {p0, v1, v3}, Lcom/miui/player/ui/RingtonePicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move v0, v2

    .line 605
    goto :goto_0

    .line 607
    :pswitch_1
    iput p1, p0, Lcom/miui/player/ui/RingtonePicker;->mSortMode:I

    .line 608
    const-string v0, "album_key ASC, track ASC, title_key ASC"

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSortOrder:Ljava/lang/String;

    .line 611
    invoke-virtual {p0, v1, v3}, Lcom/miui/player/ui/RingtonePicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move v0, v2

    .line 612
    goto :goto_0

    .line 614
    :pswitch_2
    iput p1, p0, Lcom/miui/player/ui/RingtonePicker;->mSortMode:I

    .line 615
    const-string v0, "artist_key ASC, album_key ASC, track ASC, title_key ASC"

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker;->mSortOrder:Ljava/lang/String;

    .line 619
    invoke-virtual {p0, v1, v3}, Lcom/miui/player/ui/RingtonePicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move v0, v2

    .line 620
    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method stopMediaPlayer(Z)V
    .locals 3
    .parameter "abandonFocus"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 747
    iget-object v1, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 748
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/ui/RingtonePicker;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 749
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/miui/player/ui/RingtonePicker;->mPlayingId:J

    .line 750
    if-eqz p1, :cond_0

    .line 751
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/RingtonePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 752
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 755
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method
