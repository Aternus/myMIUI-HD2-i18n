.class public Lcom/miui/player/provider/PlayerProvider;
.super Landroid/content/ContentProvider;
.source "PlayerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/provider/PlayerProvider$1;,
        Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;
    }
.end annotation


# static fields
.field public static INVALID_PLAYLIST_ID:I = 0x0

.field private static final MIUI_AUDIO_FOLDER:I = 0x70

.field private static final MIUI_AUDIO_FOLDER_ID:I = 0x71

.field private static final MIUI_EQUALIZER:I = 0x72

.field private static final MIUI_EQUALIZER_ID:I = 0x73

.field private static final MIUI_PLAYLIST:I = 0x68

.field private static final MIUI_PLAYLIST_AUDIO_MAP:I = 0x6a

.field private static final MIUI_PLAYLIST_AUDIO_MAP_ID:I = 0x6b

.field private static final MIUI_PLAYLIST_ID:I = 0x69

.field private static final MIUI_PLAYLIST_MEMBER:I = 0x6c

.field private static final MIUI_PLAYLIST_MEMBER_ID:I = 0x6d

.field private static final MIUI_PLAYLIST_NOWPLAYING:I = 0x6e

.field private static final MIUI_PLAYLIST_NOWPLAYING_ID:I = 0x6f

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field static final sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;


# instance fields
.field private mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const-string v3, "com.miui.player"

    .line 365
    new-instance v0, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;-><init>(Lcom/miui/player/provider/PlayerProvider$1;)V

    sput-object v0, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    .line 503
    sput v2, Lcom/miui/player/provider/PlayerProvider;->INVALID_PLAYLIST_ID:I

    .line 572
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 575
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "playlists"

    const/16 v2, 0x68

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 576
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "playlists/#"

    const/16 v2, 0x69

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 579
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "playlists_audio_map"

    const/16 v2, 0x6a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 581
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "playlists_audio_map/#"

    const/16 v2, 0x6b

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 584
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "playlists_audio_map/#/members"

    const/16 v2, 0x6c

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 586
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "playlists_audio_map/#/members/#"

    const/16 v2, 0x6d

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 589
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "nowplaying_audio_view"

    const/16 v2, 0x6e

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 592
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "nowplaying_audio_view/#"

    const/16 v2, 0x6f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 595
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "select_folder"

    const/16 v2, 0x70

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 596
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "select_folder/#"

    const/16 v2, 0x71

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 599
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "equalizer"

    const/16 v2, 0x72

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 600
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.miui.player"

    const-string v1, "equalizer/#"

    const/16 v2, 0x73

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 602
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 359
    return-void
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;)V
    .locals 7
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    const-string v6, "playlist_id = "

    const-string v5, "equalizer"

    const-string v2, "playlists_audio_map"

    const-string v4, "_id = "

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, where:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 427
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :pswitch_1
    const-string v1, "playlists"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 432
    .end local p0
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 441
    :goto_1
    return-void

    .line 376
    .restart local p0
    :pswitch_2
    const-string v1, "playlists"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    goto :goto_0

    .line 381
    .restart local p0
    :pswitch_3
    const-string v1, "playlists_audio_map"

    iput-object v2, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 385
    :pswitch_4
    const-string v1, "playlists_audio_map"

    iput-object v2, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    goto :goto_0

    .line 390
    .restart local p0
    :pswitch_5
    const-string v1, "playlists_audio_map"

    iput-object v2, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    goto/16 :goto_0

    .line 396
    .restart local p0
    :pswitch_6
    const-string v1, "playlists_audio_map"

    iput-object v2, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlist_id = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    goto/16 :goto_0

    .line 405
    .restart local p0
    :pswitch_7
    const-string v1, "nowplaying_audio_view"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 409
    :pswitch_8
    const-string v1, "select_folder"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 413
    :pswitch_9
    const-string v1, "select_folder"

    iput-object v1, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    goto/16 :goto_0

    .line 418
    .restart local p0
    :pswitch_a
    const-string v1, "equalizer"

    iput-object v5, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 422
    :pswitch_b
    const-string v1, "equalizer"

    iput-object v5, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    goto/16 :goto_0

    .line 436
    :cond_0
    iput-object p3, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 439
    :cond_1
    iput-object v0, p4, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private insertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 25
    .parameter "uri"
    .parameter "valueArr"

    .prologue
    .line 198
    sget-object v21, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 200
    .local v12, match:I
    const/4 v14, 0x0

    .line 201
    .local v14, newUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    move-object v8, v0

    .line 202
    .local v8, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v8, :cond_0

    .line 203
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown URI: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 205
    :cond_0
    invoke-virtual {v8}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 206
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    const v18, 0x1fffffff

    .line 208
    .local v18, startId:I
    packed-switch v12, :pswitch_data_0

    .line 353
    :pswitch_0
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Invalid URI "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 210
    :pswitch_1
    move-object/from16 v4, p2

    .local v4, arr$:[Landroid/content/ContentValues;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_6

    aget-object v7, v4, v10

    .line 211
    .local v7, cv:Landroid/content/ContentValues;
    if-eqz v7, :cond_2

    .line 212
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 214
    .local v20, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v5, v21, v23

    .line 215
    .local v5, currentTime:J
    const-string v21, "date_added"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v21, "date_modified"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    const-string v21, "name"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 218
    .local v13, name:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 219
    invoke-static {}, Landroid/util/LocaleUtils;->getIntance()Landroid/util/LocaleUtils;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/util/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 220
    .local v17, sortKey:Ljava/lang/String;
    const-string v21, "sort_key"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v17           #sortKey:Ljava/lang/String;
    :cond_1
    const-string v21, "playlists"

    const-string v22, "name"

    move-object v0, v9

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 225
    .local v15, rowId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-lez v21, :cond_2

    .line 226
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 210
    .end local v5           #currentTime:J
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #rowId:J
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 235
    .end local v4           #arr$:[Landroid/content/ContentValues;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :pswitch_2
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v18

    .line 237
    move-object/from16 v4, p2

    .restart local v4       #arr$:[Landroid/content/ContentValues;
    array-length v11, v4

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    move/from16 v19, v18

    .end local v18           #startId:I
    .local v19, startId:I
    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v7, v4, v10

    .line 238
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-eqz v7, :cond_14

    .line 239
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 241
    .restart local v20       #values:Landroid/content/ContentValues;
    const-string v21, "audio_id"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_13

    .line 242
    const-string v21, "audio_id"

    add-int/lit8 v18, v19, 0x1

    .end local v19           #startId:I
    .restart local v18       #startId:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    :goto_2
    const-string v21, "date_added"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v5, v21, v23

    .line 247
    .restart local v5       #currentTime:J
    const-string v21, "date_added"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    .end local v5           #currentTime:J
    :cond_3
    const-string v21, "playlists_audio_map"

    const-string v22, "play_order"

    move-object v0, v9

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 253
    .restart local v15       #rowId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-lez v21, :cond_4

    .line 254
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 237
    .end local v15           #rowId:J
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v18

    .end local v18           #startId:I
    .restart local v19       #startId:I
    goto :goto_1

    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_5
    move/from16 v18, v19

    .line 356
    .end local v19           #startId:I
    .end local p0
    .restart local v18       #startId:I
    :cond_6
    :goto_4
    return-object v14

    .line 263
    .end local v4           #arr$:[Landroid/content/ContentValues;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .restart local p0
    :pswitch_3
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v18

    .line 264
    move-object/from16 v4, p2

    .restart local v4       #arr$:[Landroid/content/ContentValues;
    array-length v11, v4

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    move/from16 v19, v18

    .end local v18           #startId:I
    .end local p0
    .restart local v19       #startId:I
    :goto_5
    if-ge v10, v11, :cond_9

    aget-object v7, v4, v10

    .line 265
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-eqz v7, :cond_12

    .line 266
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 268
    .restart local v20       #values:Landroid/content/ContentValues;
    const-string v21, "audio_id"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 269
    const-string v21, "audio_id"

    add-int/lit8 v18, v19, 0x1

    .end local v19           #startId:I
    .restart local v18       #startId:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    :goto_6
    const-string v21, "date_added"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v5, v21, v23

    .line 274
    .restart local v5       #currentTime:J
    const-string v21, "date_added"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    .end local v5           #currentTime:J
    :cond_7
    const-string v21, "playlist_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v21, "playlists_audio_map"

    const-string v22, "play_order"

    move-object v0, v9

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 282
    .restart local v15       #rowId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-lez v21, :cond_8

    .line 283
    sget-object v21, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 264
    .end local v15           #rowId:J
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_8
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v18

    .end local v18           #startId:I
    .restart local v19       #startId:I
    goto :goto_5

    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_9
    move/from16 v18, v19

    .line 288
    .end local v19           #startId:I
    .restart local v18       #startId:I
    goto/16 :goto_4

    .line 291
    .end local v4           #arr$:[Landroid/content/ContentValues;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .restart local p0
    :pswitch_4
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v18

    .line 292
    move-object/from16 v4, p2

    .restart local v4       #arr$:[Landroid/content/ContentValues;
    array-length v11, v4

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    move/from16 v19, v18

    .end local v18           #startId:I
    .restart local v19       #startId:I
    :goto_8
    if-ge v10, v11, :cond_c

    aget-object v7, v4, v10

    .line 293
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-eqz v7, :cond_10

    .line 294
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 296
    .restart local v20       #values:Landroid/content/ContentValues;
    const-string v21, "audio_id"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 297
    const-string v21, "audio_id"

    add-int/lit8 v18, v19, 0x1

    .end local v19           #startId:I
    .restart local v18       #startId:I
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    :goto_9
    const-string v21, "date_added"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v5, v21, v23

    .line 302
    .restart local v5       #currentTime:J
    const-string v21, "date_added"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    .end local v5           #currentTime:J
    :cond_a
    const-string v21, "playlist_id"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v21, "playlists_audio_map"

    const-string v22, "play_order"

    move-object v0, v9

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 311
    .restart local v15       #rowId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-lez v21, :cond_b

    .line 312
    sget-object v21, Lcom/miui/player/provider/PlayerStore$MiuiPlaylistsAudioMap;->EXTERNAL_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 292
    .end local v15           #rowId:J
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_b
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v18

    .end local v18           #startId:I
    .restart local v19       #startId:I
    goto :goto_8

    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_c
    move/from16 v18, v19

    .line 317
    .end local v19           #startId:I
    .restart local v18       #startId:I
    goto/16 :goto_4

    .line 320
    .end local v4           #arr$:[Landroid/content/ContentValues;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :pswitch_5
    move-object/from16 v4, p2

    .restart local v4       #arr$:[Landroid/content/ContentValues;
    array-length v11, v4

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_b
    if-ge v10, v11, :cond_6

    aget-object v7, v4, v10

    .line 321
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-eqz v7, :cond_d

    .line 322
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 323
    .restart local v20       #values:Landroid/content/ContentValues;
    const-string v21, "select_folder"

    const-string v22, "folder_path"

    move-object v0, v9

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 326
    .restart local v15       #rowId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-lez v21, :cond_d

    .line 327
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 320
    .end local v15           #rowId:J
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 336
    .end local v4           #arr$:[Landroid/content/ContentValues;
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :pswitch_6
    move-object/from16 v4, p2

    .restart local v4       #arr$:[Landroid/content/ContentValues;
    array-length v11, v4

    .restart local v11       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_c
    if-ge v10, v11, :cond_6

    aget-object v7, v4, v10

    .line 337
    .restart local v7       #cv:Landroid/content/ContentValues;
    if-eqz v7, :cond_e

    .line 338
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 339
    .restart local v20       #values:Landroid/content/ContentValues;
    const-string v21, "data_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    const-string v21, "equalizer"

    const-string v22, "[0,0,0,0,0]"

    move-object v0, v9

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 343
    .restart local v15       #rowId:J
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-lez v21, :cond_e

    .line 344
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 336
    .end local v15           #rowId:J
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .end local v18           #startId:I
    .restart local v19       #startId:I
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_f
    move/from16 v18, v19

    .end local v19           #startId:I
    .restart local v18       #startId:I
    goto/16 :goto_9

    .end local v18           #startId:I
    .end local v20           #values:Landroid/content/ContentValues;
    .restart local v19       #startId:I
    :cond_10
    move/from16 v18, v19

    .end local v19           #startId:I
    .restart local v18       #startId:I
    goto :goto_a

    .end local v18           #startId:I
    .end local p0
    .restart local v19       #startId:I
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_11
    move/from16 v18, v19

    .end local v19           #startId:I
    .restart local v18       #startId:I
    goto/16 :goto_6

    .end local v18           #startId:I
    .end local v20           #values:Landroid/content/ContentValues;
    .restart local v19       #startId:I
    :cond_12
    move/from16 v18, v19

    .end local v19           #startId:I
    .restart local v18       #startId:I
    goto/16 :goto_7

    .end local v18           #startId:I
    .restart local v19       #startId:I
    .restart local v20       #values:Landroid/content/ContentValues;
    .restart local p0
    :cond_13
    move/from16 v18, v19

    .end local v19           #startId:I
    .restart local v18       #startId:I
    goto/16 :goto_2

    .end local v18           #startId:I
    .end local v20           #values:Landroid/content/ContentValues;
    .restart local v19       #startId:I
    :cond_14
    move/from16 v18, v19

    .end local v19           #startId:I
    .restart local v18       #startId:I
    goto/16 :goto_3

    .line 208
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static isOnlineAudio(J)Z
    .locals 2
    .parameter "audioId"

    .prologue
    .line 500
    const-wide/32 v0, 0x1fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryNextOnlineMemberId(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 12
    .parameter "db"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 174
    const-string v8, "max(audio_id)"

    .line 177
    .local v8, MAX_AUDIO_ID:Ljava/lang/String;
    const-string v1, "playlists_audio_map"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "max(audio_id)"

    aput-object v0, v2, v11

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 181
    .local v10, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 183
    .local v9, base:I
    if-eqz v10, :cond_0

    .line 184
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 185
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 186
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_0
    const v0, 0x1fffffff

    if-ge v9, v0, :cond_1

    .line 190
    const v9, 0x1fffffff

    .line 193
    :cond_1
    add-int/lit8 v0, v9, 0x1

    return v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 145
    .local v0, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v0, :cond_0

    .line 146
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 149
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 150
    const/4 v2, 0x0

    .line 152
    .local v2, numInserted:I
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/provider/PlayerProvider;->insertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 153
    array-length v2, p2

    .line 154
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 158
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 159
    return v2

    .line 156
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 446
    sget-object v4, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 448
    .local v3, match:I
    iget-object v1, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 449
    .local v1, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v1, :cond_0

    .line 450
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 452
    :cond_0
    invoke-virtual {v1}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 454
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    monitor-enter v4

    .line 455
    :try_start_0
    sget-object v5, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v3, p2, v5}, Lcom/miui/player/provider/PlayerProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;)V

    .line 457
    sget-object v5, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, count:I
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 461
    monitor-exit v4

    .line 463
    return v0

    .line 461
    .end local v0           #count:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 121
    sget-object v0, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/vnd.google.miui"

    .line 136
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/vnd.google.miui"

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 164
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/miui/player/provider/PlayerProvider;->insertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 167
    .local v0, newUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 170
    :cond_0
    return-object v0
.end method

.method makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "one"
    .parameter "two"

    .prologue
    const/16 v4, 0x2c

    .line 523
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 524
    move-object v1, p1

    .line 536
    .local v1, name:Ljava/lang/String;
    :goto_0
    const-string v2, ", the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",the"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",an"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, fix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    .end local v0           #fix:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 528
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 529
    move-object v1, p1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 531
    .end local v1           #name:Ljava/lang/String;
    :cond_3
    move-object v1, p2

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 25
    new-instance v0, Lcom/miui/player/provider/PlayerDBHelper;

    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com_miui_player.db"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/provider/PlayerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 26
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 33
    sget-object v2, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 35
    .local v11, table:I
    const/4 v5, 0x0

    .line 36
    .local v5, groupBy:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 37
    .local v10, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v10, :cond_0

    .line 38
    const/4 v2, 0x0

    .line 116
    :goto_0
    return-object v2

    .line 40
    :cond_0
    invoke-virtual {v10}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 41
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 42
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, limit:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 105
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :pswitch_0
    const-string v2, "playlists"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    :goto_1
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 112
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    move-object v2, v9

    .line 116
    goto :goto_0

    .line 50
    .end local v9           #c:Landroid/database/Cursor;
    :pswitch_1
    const-string v2, "playlists"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 55
    :pswitch_2
    const-string v2, "playlists_audio_map"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :pswitch_3
    const-string v2, "playlists_audio_map"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :pswitch_4
    const-string v2, "playlists_audio_map"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 71
    :pswitch_5
    const-string v2, "playlists_audio_map"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 79
    :pswitch_6
    const-string v2, "nowplaying_audio_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 83
    :pswitch_7
    const-string v2, "nowplaying_audio_view"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 89
    :pswitch_8
    const-string v2, "select_folder"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    :pswitch_9
    const-string v2, "select_folder"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 97
    :pswitch_a
    const-string v2, "equalizer"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 100
    :pswitch_b
    const-string v2, "equalizer"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 470
    sget-object v6, Lcom/miui/player/provider/PlayerProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 471
    .local v3, match:I
    iget-object v1, p0, Lcom/miui/player/provider/PlayerProvider;->mDatabaseHelper:Lcom/miui/player/provider/PlayerDBHelper;

    .line 472
    .local v1, database:Lcom/miui/player/provider/PlayerDBHelper;
    if-nez v1, :cond_0

    .line 473
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 475
    :cond_0
    invoke-virtual {v1}, Lcom/miui/player/provider/PlayerDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 477
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    monitor-enter v6

    .line 478
    :try_start_0
    sget-object v7, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v3, p3, v7}, Lcom/miui/player/provider/PlayerProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;)V

    .line 481
    const-string v7, "playlists"

    sget-object v8, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 482
    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 484
    invoke-static {}, Landroid/util/LocaleUtils;->getIntance()Landroid/util/LocaleUtils;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 485
    .local v5, sortKey:Ljava/lang/String;
    const-string v7, "sort_key"

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #sortKey:Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v8, Lcom/miui/player/provider/PlayerProvider;->sGetTableAndWhereParam:Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;

    iget-object v8, v8, Lcom/miui/player/provider/PlayerProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v2, v7, p2, v8, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 492
    .local v0, count:I
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    if-lez v0, :cond_2

    .line 494
    invoke-virtual {p0}, Lcom/miui/player/provider/PlayerProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 496
    :cond_2
    return v0

    .line 492
    .end local v0           #count:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method
