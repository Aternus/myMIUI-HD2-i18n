.class public Lcom/android/gallery/view/MovieViewControl;
.super Ljava/lang/Object;
.source "MovieViewControl.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/view/MovieViewControl$BrightButtonMediaController;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field mHandler:Landroid/os/Handler;

.field mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressView:Landroid/view/View;

.field private final mUri:Landroid/net/Uri;

.field private final mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8
    .parameter "rootView"
    .parameter "context"
    .parameter "videoUri"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v4, Lcom/android/gallery/view/MovieViewControl$1;

    invoke-direct {v4, p0}, Lcom/android/gallery/view/MovieViewControl$1;-><init>(Lcom/android/gallery/view/MovieViewControl;)V

    iput-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mPlayingChecker:Ljava/lang/Runnable;

    .line 91
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    const v4, 0x7f0c0049

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/VideoView;

    iput-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    .line 93
    const v4, 0x7f0c004a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mProgressView:Landroid/view/View;

    .line 95
    iput-object p3, p0, Lcom/android/gallery/view/MovieViewControl;->mUri:Landroid/net/Uri;

    .line 99
    iget-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "rtsp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    :cond_0
    iget-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/gallery/view/MovieViewControl;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :goto_0
    iget-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 107
    iget-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 108
    iget-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    iget-object v5, p0, Lcom/android/gallery/view/MovieViewControl;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 109
    iget-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    new-instance v5, Lcom/android/gallery/view/MovieViewControl$BrightButtonMediaController;

    invoke-direct {v5, p0, p2}, Lcom/android/gallery/view/MovieViewControl$BrightButtonMediaController;-><init>(Lcom/android/gallery/view/MovieViewControl;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 112
    iget-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->requestFocus()Z

    .line 114
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, i:Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "pause"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p2, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    invoke-direct {p0}, Lcom/android/gallery/view/MovieViewControl;->getBookmark()Ljava/lang/Integer;

    move-result-object v0

    .line 119
    .local v0, bookmark:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 120
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09007a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 122
    const v4, 0x7f09007b

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p2, v7}, Lcom/android/gallery/view/MovieViewControl;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    new-instance v4, Lcom/android/gallery/view/MovieViewControl$2;

    invoke-direct {v4, p0}, Lcom/android/gallery/view/MovieViewControl$2;-><init>(Lcom/android/gallery/view/MovieViewControl;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    const v4, 0x7f09007c

    new-instance v5, Lcom/android/gallery/view/MovieViewControl$3;

    invoke-direct {v5, p0, v0}, Lcom/android/gallery/view/MovieViewControl$3;-><init>(Lcom/android/gallery/view/MovieViewControl;Ljava/lang/Integer;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    const v4, 0x7f09007d

    new-instance v5, Lcom/android/gallery/view/MovieViewControl$4;

    invoke-direct {v5, p0}, Lcom/android/gallery/view/MovieViewControl$4;-><init>(Lcom/android/gallery/view/MovieViewControl;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 147
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 103
    .end local v0           #bookmark:Ljava/lang/Integer;
    .end local v2           #i:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mProgressView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 145
    .restart local v0       #bookmark:Ljava/lang/Integer;
    .restart local v2       #i:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->start()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/gallery/view/MovieViewControl;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery/view/MovieViewControl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "durationMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 75
    div-int/lit16 v0, p1, 0x3e8

    .line 76
    .local v0, duration:I
    div-int/lit16 v2, v0, 0xe10

    .line 77
    .local v2, h:I
    mul-int/lit16 v5, v2, 0xe10

    sub-int v5, v0, v5

    div-int/lit8 v3, v5, 0x3c

    .line 78
    .local v3, m:I
    mul-int/lit16 v5, v2, 0xe10

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v5, v6

    sub-int v4, v0, v5

    .line 80
    .local v4, s:I
    if-nez v2, :cond_0

    .line 81
    const v5, 0x7f090076

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, durationValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 84
    .end local v1           #durationValue:Ljava/lang/String;
    :cond_0
    const v5, 0x7f090077

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method private getBookmark()Ljava/lang/Integer;
    .locals 11

    .prologue
    const/16 v10, 0x7530

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/gallery/view/MovieViewControl;->uriSupportsBookmarks(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v9

    .line 187
    :goto_0
    return-object v0

    .line 161
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "duration"

    aput-object v0, v2, v1

    const-string v0, "bookmark"

    aput-object v0, v2, v3

    .line 165
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery/view/MovieViewControl;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 167
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 169
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/android/gallery/view/MovieViewControl;->getCursorInteger(Landroid/database/Cursor;I)I

    move-result v8

    .line 171
    .local v8, duration:I
    const/4 v0, 0x1

    invoke-static {v7, v0}, Lcom/android/gallery/view/MovieViewControl;->getCursorInteger(Landroid/database/Cursor;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 172
    .local v6, bookmark:I
    if-lt v6, v10, :cond_1

    const v0, 0x1d4c0

    if-lt v8, v0, :cond_1

    sub-int v0, v8, v10

    if-le v6, v0, :cond_2

    .line 180
    :cond_1
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v9

    goto :goto_0

    .line 177
    :cond_2
    :try_start_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 180
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 183
    .end local v6           #bookmark:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #duration:I
    :catch_0
    move-exception v0

    :cond_3
    :goto_1
    move-object v0, v9

    .line 187
    goto :goto_0

    .line 180
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method private static getCursorInteger(Landroid/database/Cursor;I)I
    .locals 2
    .parameter "cursor"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 192
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 196
    :goto_0
    return v1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 195
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private setBookmark(II)V
    .locals 5
    .parameter "bookmark"
    .parameter "duration"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/gallery/view/MovieViewControl;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/gallery/view/MovieViewControl;->uriSupportsBookmarks(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 207
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "bookmark"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "duration"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery/view/MovieViewControl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery/view/MovieViewControl;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0

    .line 217
    :catch_1
    move-exception v1

    goto :goto_0

    .line 214
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static uriSupportsBookmarks(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, scheme:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, authority:Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "media"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/gallery/view/MovieViewControl;->onCompletion()V

    .line 245
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 235
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery/view/MovieViewControl;->setBookmark(II)V

    .line 226
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 227
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 231
    return-void
.end method

.method public onVisibleChanged(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 251
    return-void
.end method
