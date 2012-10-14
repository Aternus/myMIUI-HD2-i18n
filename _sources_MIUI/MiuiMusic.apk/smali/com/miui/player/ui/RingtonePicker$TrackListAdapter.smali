.class Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "RingtonePicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/RingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAlbumIdx:I

.field private mArtistIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mIdIdx:I

.field private mIndexer:Lcom/miui/player/ui/view/MusicAlphabetIndexer;

.field private mIndexerSortMode:I

.field final mListView:Landroid/widget/ListView;

.field private mLoading:Z

.field private mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/ui/RingtonePicker;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/RingtonePicker;Landroid/content/Context;Landroid/widget/ListView;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "listView"
    .parameter "layout"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    .line 220
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mLoading:Z

    .line 221
    iput-object p3, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mListView:Landroid/widget/ListView;

    .line 222
    const v0, 0x7f08001f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 223
    const v0, 0x7f080020

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 224
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x0

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;

    .line 262
    .local v6, vh:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;
    iget v7, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mTitleIdx:I

    iget-object v8, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    invoke-interface {p3, v7, v8}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 263
    iget-object v7, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    iget-object v8, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v8, v8, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v9, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v9, v9, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {v7, v8, v10, v9}, Landroid/widget/TextView;->setText([CII)V

    .line 265
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 266
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v10, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 268
    iget v7, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mAlbumIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 270
    iget-object v7, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :goto_0
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    iget v7, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mArtistIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 276
    if-eqz v5, :cond_0

    const-string v7, "<unknown>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 277
    :cond_0
    iget-object v7, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 282
    .local v4, len:I
    iget-object v7, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v7, v7

    if-ge v7, v4, :cond_1

    .line 283
    new-array v7, v4, [C

    iput-object v7, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 285
    :cond_1
    iget-object v7, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v0, v10, v4, v7, v10}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 286
    iget-object v7, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    iget-object v8, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->buffer2:[C

    invoke-virtual {v7, v8, v10, v4}, Landroid/widget/TextView;->setText([CII)V

    .line 292
    iget v7, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIdIdx:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 293
    .local v1, id:J
    iget-object v7, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    iget-object v8, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget-wide v8, v8, Lcom/miui/player/ui/RingtonePicker;->mSelectedId:J

    cmp-long v8, v1, v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 300
    iget-object v3, v6, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 301
    .local v3, iv:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget-wide v7, v7, Lcom/miui/player/ui/RingtonePicker;->mPlayingId:J

    cmp-long v7, v1, v7

    if-nez v7, :cond_5

    .line 302
    const v7, 0x7f020054

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    :goto_3
    return-void

    .line 272
    .end local v1           #id:J
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #len:I
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .restart local v1       #id:J
    .restart local v4       #len:I
    :cond_4
    move v8, v10

    .line 293
    goto :goto_2

    .line 305
    .restart local v3       #iv:Landroid/widget/ImageView;
    :cond_5
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 316
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 320
    iget-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iput-object p1, v2, Lcom/miui/player/ui/RingtonePicker;->mCursor:Landroid/database/Cursor;

    .line 321
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    invoke-virtual {v2}, Lcom/miui/player/ui/RingtonePicker;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget-object v3, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    invoke-static {v2, v3}, Lcom/miui/player/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;)V

    .line 323
    iget-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    invoke-virtual {v2}, Lcom/miui/player/ui/RingtonePicker;->closeContextMenu()V

    .line 328
    :goto_0
    if-eqz p1, :cond_1

    .line 330
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIdIdx:I

    .line 331
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mTitleIdx:I

    .line 332
    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mArtistIdx:I

    .line 333
    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mAlbumIdx:I

    .line 338
    iget v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIndexerSortMode:I

    iget-object v3, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget v3, v3, Lcom/miui/player/ui/RingtonePicker;->mSortMode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIndexer:Lcom/miui/player/ui/view/MusicAlphabetIndexer;

    if-nez v2, :cond_3

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget v2, v2, Lcom/miui/player/ui/RingtonePicker;->mSortMode:I

    iput v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIndexerSortMode:I

    .line 340
    iget v1, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mTitleIdx:I

    .line 341
    .local v1, idx:I
    iget v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIndexerSortMode:I

    packed-switch v2, :pswitch_data_0

    .line 350
    :goto_1
    invoke-static {p1, v1}, Lcom/miui/player/ui/view/MusicAlphabetIndexer;->getAlphaBet(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, alpha:Ljava/lang/String;
    new-instance v2, Lcom/miui/player/ui/view/MusicAlphabetIndexer;

    invoke-direct {v2, p1, v1, v0}, Lcom/miui/player/ui/view/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIndexer:Lcom/miui/player/ui/view/MusicAlphabetIndexer;

    .line 363
    .end local v0           #alpha:Ljava/lang/String;
    .end local v1           #idx:I
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    invoke-virtual {v2}, Lcom/miui/player/ui/RingtonePicker;->makeListShown()V

    .line 364
    return-void

    .line 325
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/player/MusicUtils;->hideDatabaseError(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 343
    .restart local v1       #idx:I
    :pswitch_0
    iget v1, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mArtistIdx:I

    .line 344
    goto :goto_1

    .line 346
    :pswitch_1
    iget v1, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mAlbumIdx:I

    goto :goto_1

    .line 357
    .end local v1           #idx:I
    :cond_3
    iget-object v2, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIndexer:Lcom/miui/player/ui/view/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/miui/player/ui/view/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    goto :goto_2

    .line 341
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "section"

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 381
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 383
    const/4 v1, 0x0

    .line 386
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIndexer:Lcom/miui/player/ui/view/MusicAlphabetIndexer;

    invoke-virtual {v1, p1}, Lcom/miui/player/ui/view/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIndexer:Lcom/miui/player/ui/view/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mIndexer:Lcom/miui/player/ui/view/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/miui/player/ui/view/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;-><init>(Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;)V

    .line 248
    .local v1, vh:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;
    const v2, 0x7f0c005b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->line1:Landroid/widget/TextView;

    .line 249
    const v2, 0x7f0c005d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->line2:Landroid/widget/TextView;

    .line 250
    const v2, 0x7f0c0099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    iput-object p0, v1, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 251
    const v2, 0x7f0c005c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 252
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, v1, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 253
    const/16 v2, 0xc8

    new-array v2, v2, [C

    iput-object v2, v1, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->this$0:Lcom/miui/player/ui/RingtonePicker;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/RingtonePicker;->doQuery(ZLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->mLoading:Z

    .line 232
    return-void
.end method
