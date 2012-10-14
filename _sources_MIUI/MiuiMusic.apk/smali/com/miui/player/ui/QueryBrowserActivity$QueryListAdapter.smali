.class Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDisableColor:Landroid/content/res/ColorStateList;

.field private final mEnableColor:Landroid/content/res/ColorStateList;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mValidAlbumIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidArtistIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidAudioIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 8
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v7, 0x0

    .line 232
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 201
    iput-object v7, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    .line 205
    iput-object v7, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 233
    iput-object p2, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    .line 234
    new-instance v0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter$QueryHandler;-><init>(Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 235
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->getValidArtistIdSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidArtistIdSet:Ljava/util/Set;

    .line 236
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->getValidAlbumIdSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidAlbumIdSet:Ljava/util/Set;

    .line 237
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    invoke-static {v0}, Lcom/miui/player/MusicUtils;->getValidAudioIdSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidAudioIdSet:Ljava/util/Set;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 240
    .local v6, res:Landroid/content/res/Resources;
    const v0, 0x7f060058

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mEnableColor:Landroid/content/res/ColorStateList;

    .line 241
    const v0, 0x7f060034

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mDisableColor:Landroid/content/res/ColorStateList;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;)Lcom/miui/player/ui/QueryBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    return-object v0
.end method

.method private setItemStatus(Landroid/view/View;Landroid/widget/TextView;Z)V
    .locals 1
    .parameter "v"
    .parameter "tv"
    .parameter "enabled"

    .prologue
    .line 253
    if-eqz p3, :cond_0

    .line 254
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mEnableColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 255
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mDisableColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 258
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 265
    const v16, 0x7f0c005b

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 266
    .local v14, tv1:Landroid/widget/TextView;
    const v16, 0x7f0c005d

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 267
    .local v15, tv2:Landroid/widget/TextView;
    const v16, 0x7f0c000e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 268
    .local v7, iv:Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 269
    .local v12, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v12, :cond_1

    .line 271
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const/16 v16, -0x2

    move/from16 v0, v16

    move-object v1, v12

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 275
    const/16 v16, -0x2

    move/from16 v0, v16

    move-object v1, v12

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    const-string v16, "mime_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 280
    .local v8, mimetype:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 281
    const-string v8, "audio/"

    .line 284
    :cond_2
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 286
    .local v5, id:I
    const-string v16, "artist"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 287
    const v16, 0x7f02003d

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    const-string v16, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, name:Ljava/lang/String;
    move-object v4, v9

    .line 291
    .local v4, displayname:Ljava/lang/String;
    const/4 v6, 0x0

    .line 292
    .local v6, isunknown:Z
    invoke-static {v9}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 293
    const v16, 0x7f08001f

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    const/4 v6, 0x1

    .line 296
    :cond_3
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidArtistIdSet:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->setItemStatus(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 299
    const-string v16, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 300
    .local v10, numalbums:I
    const-string v16, "data2"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 302
    .local v11, numsongs:I
    move-object/from16 v0, p2

    move v1, v10

    move v2, v11

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/MusicUtils;->makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v13

    .line 305
    .local v13, songs_albums:Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 307
    .end local v4           #displayname:Ljava/lang/String;
    .end local v6           #isunknown:Z
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #numalbums:I
    .end local v11           #numsongs:I
    .end local v13           #songs_albums:Ljava/lang/String;
    :cond_4
    const-string v16, "album"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 308
    const v16, 0x7f02003c

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    const-string v16, "album"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 311
    .restart local v9       #name:Ljava/lang/String;
    move-object v4, v9

    .line 312
    .restart local v4       #displayname:Ljava/lang/String;
    invoke-static {v9}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 313
    const v16, 0x7f080020

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    :cond_5
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidAlbumIdSet:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->setItemStatus(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 318
    const-string v16, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 320
    move-object v4, v9

    .line 321
    invoke-static {v9}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 322
    const v16, 0x7f08001f

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 324
    :cond_6
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 326
    .end local v4           #displayname:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    :cond_7
    const-string v16, "audio/"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, "application/ogg"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v16, "application/x-ogg"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 328
    :cond_8
    const v16, 0x7f02004f

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 329
    const-string v16, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 331
    .restart local v9       #name:Ljava/lang/String;
    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mValidAudioIdSet:Ljava/util/Set;

    move-object/from16 v16, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->setItemStatus(Landroid/view/View;Landroid/widget/TextView;Z)V

    .line 334
    const-string v16, "artist"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 336
    .restart local v4       #displayname:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 337
    const v16, 0x7f08001f

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    :cond_9
    const-string v16, "album"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 341
    invoke-static {v9}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 342
    const v16, 0x7f080020

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 344
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    #getter for: Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/miui/player/ui/QueryBrowserActivity;->access$100(Lcom/miui/player/ui/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    #setter for: Lcom/miui/player/ui/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/miui/player/ui/QueryBrowserActivity;->access$102(Lcom/miui/player/ui/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 352
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 354
    :cond_0
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 366
    :goto_0
    return-object v2

    .line 363
    :cond_2
    iget-object v2, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/miui/player/ui/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/miui/player/ui/QueryBrowserActivity;->access$200(Lcom/miui/player/ui/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 364
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 365
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 366
    goto :goto_0
.end method

.method public setActivity(Lcom/miui/player/ui/QueryBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/miui/player/ui/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/miui/player/ui/QueryBrowserActivity;

    .line 246
    return-void
.end method
