.class public Lcom/miui/player/model/TrackNowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "TrackNowPlayingCursor.java"


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mContentObservable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[J

.field private mLocalLength:I

.field private mNowPlaying:[J

.field private mService:Lcom/miui/player/IMediaPlaybackService;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/IMediaPlaybackService;[Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "service"
    .parameter "cols"
    .parameter "localLength"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContentObservable:Ljava/util/ArrayList;

    .line 23
    array-length v0, p3

    if-le p4, v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localLength > cols.length) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContext:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 29
    if-gez p4, :cond_1

    .line 30
    array-length v0, p3

    iput v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mLocalLength:I

    .line 34
    :goto_0
    iput-object p2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 35
    invoke-direct {p0}, Lcom/miui/player/model/TrackNowPlayingCursor;->makeNowPlayingCursor()V

    .line 36
    return-void

    .line 32
    :cond_1
    iput p4, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mLocalLength:I

    goto :goto_0
.end method

.method private createOnlineNowPlaying()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCols:[Ljava/lang/String;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private makeNowPlayingCursor()V
    .locals 22

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 69
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    move-object v3, v0

    array-length v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    .line 78
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    move v3, v0

    if-nez v3, :cond_2

    .line 161
    :cond_1
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v3

    move-object v11, v3

    .line 71
    .local v11, ex:Landroid/os/RemoteException;
    const/4 v3, 0x0

    new-array v3, v3, [J

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    goto :goto_0

    .line 72
    .end local v11           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v11, v3

    .line 74
    .local v11, ex:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    new-array v3, v3, [J

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    goto :goto_0

    .line 82
    .end local v11           #ex:Ljava/lang/NullPointerException;
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v21, where:Ljava/lang/StringBuilder;
    const-string v3, "_id IN ("

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    move v3, v0

    if-ge v12, v3, :cond_4

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    move-object v3, v0

    aget-wide v3, v3, v12

    move-object/from16 v0, v21

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v12, v3, :cond_3

    .line 87
    const-string v3, ","

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 90
    :cond_4
    const-string v3, ")"

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mLocalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCols:[Ljava/lang/String;

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 94
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mLocalLength:I

    move v3, v0

    new-array v5, v3, [Ljava/lang/String;

    .line 95
    .local v5, localCols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCols:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mLocalLength:I

    move v7, v0

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContext:Landroid/content/Context;

    move-object v3, v0

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-static/range {v3 .. v8}, Lcom/miui/player/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 104
    .local v14, localCursor:Landroid/database/Cursor;
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/model/TrackNowPlayingCursor;->createOnlineNowPlaying()Landroid/database/Cursor;

    move-result-object v16

    .line 106
    .local v16, onlineCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_6

    if-nez v16, :cond_6

    .line 107
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 120
    .end local v5           #localCols:[Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContentObservable:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/database/ContentObserver;

    .line 121
    .local v15, observer:Landroid/database/ContentObserver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3, v15}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_5

    .line 97
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #localCursor:Landroid/database/Cursor;
    .end local v15           #observer:Landroid/database/ContentObserver;
    .end local v16           #onlineCursor:Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCols:[Ljava/lang/String;

    move-object v5, v0

    .restart local v5       #localCols:[Ljava/lang/String;
    goto :goto_3

    .line 108
    .restart local v14       #localCursor:Landroid/database/Cursor;
    .restart local v16       #onlineCursor:Landroid/database/Cursor;
    :cond_6
    if-nez v14, :cond_7

    if-eqz v16, :cond_7

    .line 109
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    goto :goto_4

    .line 110
    :cond_7
    if-eqz v14, :cond_8

    if-eqz v16, :cond_8

    .line 112
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    .end local v5           #localCols:[Ljava/lang/String;
    const/4 v5, 0x1

    aput-object v16, v4, v5

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    goto :goto_4

    .line 116
    .restart local v5       #localCols:[Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    goto/16 :goto_1

    .line 123
    .end local v5           #localCols:[Ljava/lang/String;
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 124
    .local v18, size:I
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v3, v0

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 127
    .local v9, colidx:I
    const/4 v12, 0x0

    :goto_6
    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v4, v0

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v12

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 127
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 131
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurPos:I

    .line 139
    const/16 v17, 0x0

    .line 140
    .local v17, removed:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x1

    sub-int v12, v3, v4

    :goto_7
    if-ltz v12, :cond_c

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    move-object v3, v0

    aget-wide v19, v3, v12

    .line 142
    .local v19, trackid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    .line 143
    .local v10, crsridx:I
    if-gez v10, :cond_b

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v19

    invoke-interface {v0, v1, v2}, Lcom/miui/player/IMediaPlaybackService;->removeTrack(J)I

    move-result v3

    add-int v17, v17, v3

    .line 140
    :cond_b
    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    .line 149
    .end local v10           #crsridx:I
    .end local v19           #trackid:J
    :cond_c
    if-lez v17, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    move-object v3, v0

    array-length v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    move v3, v0

    if-nez v3, :cond_1

    .line 153
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 157
    :catch_2
    move-exception v3

    move-object v11, v3

    .line 158
    .local v11, ex:Landroid/os/RemoteException;
    const/4 v3, 0x0

    new-array v3, v3, [J

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    goto/16 :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iput-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContentObservable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 46
    iput-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    throw v0
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 315
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_0
    invoke-super {p0}, Landroid/database/AbstractCursor;->finalize()V

    .line 330
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 277
    :goto_0
    return v1

    .line 275
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 276
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/model/TrackNowPlayingCursor;->onChange(Z)V

    .line 277
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 287
    :goto_0
    return-wide v1

    .line 285
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 286
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/model/TrackNowPlayingCursor;->onChange(Z)V

    .line 287
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    .line 260
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 261
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/model/TrackNowPlayingCursor;->onChange(Z)V

    .line 262
    const-string v1, ""

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0, p1, p2}, Lcom/miui/player/IMediaPlaybackService;->moveQueueItem(II)V

    .line 232
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    .line 233
    const/4 v0, -0x1

    iget v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/model/TrackNowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v4, 0x1

    .line 170
    if-ne p1, p2, :cond_0

    move v3, v4

    .line 188
    :goto_0
    return v3

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    if-nez v3, :cond_2

    .line 174
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 181
    :cond_2
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 182
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    aget-wide v1, v3, p2

    .line 183
    .local v1, newid:J
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 184
    .local v0, crsridx:I
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 185
    iput p2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurPos:I

    .end local v0           #crsridx:I
    .end local v1           #newid:J
    :cond_3
    move v3, v4

    .line 188
    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContentObservable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContentObservable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 246
    :cond_0
    return-void
.end method

.method public removeItem(I)Z
    .locals 5
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/miui/player/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/4 v1, 0x0

    .line 205
    :goto_0
    return v1

    .line 196
    :cond_0
    move v0, p1

    .line 197
    .local v0, i:I
    iget v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    .line 198
    :goto_1
    iget v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    iget-object v2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/model/TrackNowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #i:I
    :goto_2
    move v1, v4

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public removeItem([I)Z
    .locals 7
    .parameter "rmArr"

    .prologue
    const/4 v6, 0x1

    .line 210
    :try_start_0
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v3, p1}, Lcom/miui/player/IMediaPlaybackService;->removeTracksBatch([I)I

    move-result v3

    if-nez v3, :cond_0

    .line 211
    const/4 v3, 0x0

    .line 226
    :goto_0
    return v3

    .line 214
    :cond_0
    array-length v2, p1

    .line 215
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 216
    aget v0, p1, v1

    .line 217
    .local v0, i:I
    iget v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    .line 218
    :goto_2
    iget v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mSize:I

    if-ge v0, v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    iget-object v4, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mNowPlaying:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 222
    :cond_1
    const/4 v3, -0x1

    iget v4, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v3, v4}, Lcom/miui/player/model/TrackNowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #len:I
    :catch_0
    move-exception v3

    :cond_2
    move v3, v6

    .line 226
    goto :goto_0
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/miui/player/model/TrackNowPlayingCursor;->makeNowPlayingCursor()V

    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mContentObservable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/miui/player/model/TrackNowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 254
    :cond_0
    return-void
.end method
