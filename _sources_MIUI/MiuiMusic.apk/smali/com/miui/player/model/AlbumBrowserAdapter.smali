.class public Lcom/miui/player/model/AlbumBrowserAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "AlbumBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;,
        Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;,
        Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;,
        Lcom/miui/player/model/AlbumBrowserAdapter$QueryHandler;
    }
.end annotation


# static fields
.field public static final COLS:[Ljava/lang/String;

.field private static sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/player/helper/DrawableProvider",
            "<",
            "Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumArtIndex:I

.field private final mAlbumHeight:I

.field private mAlbumIdx:I

.field private final mAlbumWidth:I

.field private mArtistIdx:I

.field private mBrowserSource:Lcom/miui/player/model/BrowserSource;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mWorker:Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/model/AlbumBrowserAdapter;->COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/player/ui/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    .line 73
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 49
    iput-boolean v8, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mConstraintIsValid:Z

    .line 74
    iput-object p2, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 75
    new-instance v0, Lcom/miui/player/model/AlbumBrowserAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/player/model/AlbumBrowserAdapter$QueryHandler;-><init>(Lcom/miui/player/model/AlbumBrowserAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 79
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x7f020001

    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 80
    .local v6, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 81
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumWidth:I

    .line 82
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumHeight:I

    .line 85
    iget-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 86
    iget-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 87
    invoke-direct {p0, p4}, Lcom/miui/player/model/AlbumBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 89
    new-instance v0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;

    invoke-direct {v0, p0}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;-><init>(Lcom/miui/player/model/AlbumBrowserAdapter;)V

    iput-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mWorker:Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;

    .line 91
    sget-object v0, Lcom/miui/player/model/AlbumBrowserAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/miui/player/helper/DrawableProvider;

    iget-object v1, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mWorker:Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableWorker;

    iget-object v2, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, v2}, Lcom/miui/player/helper/DrawableProvider;-><init>(Lcom/miui/player/helper/DrawableProvider$DrawableWorker;Landroid/graphics/drawable/Drawable;)V

    sput-object v0, Lcom/miui/player/model/AlbumBrowserAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    .line 94
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/model/AlbumBrowserAdapter;)Lcom/miui/player/model/BrowserSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/model/AlbumBrowserAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/player/model/AlbumBrowserAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumHeight:I

    return v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumIdx:I

    .line 122
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mArtistIdx:I

    .line 123
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumArtIndex:I

    .line 125
    :cond_0
    return-void
.end method

.method public static removeCache()V
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/miui/player/model/AlbumBrowserAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/miui/player/model/AlbumBrowserAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    invoke-virtual {v0}, Lcom/miui/player/helper/DrawableProvider;->removeAll()V

    .line 108
    :cond_0
    return-void
.end method

.method public static removeCacheAlbum(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 111
    sget-object v0, Lcom/miui/player/model/AlbumBrowserAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/miui/player/model/AlbumBrowserAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    invoke-virtual {v0, p0}, Lcom/miui/player/helper/DrawableProvider;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;

    .line 152
    .local v10, vh:Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;
    iget v1, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, albumName:Ljava/lang/String;
    invoke-static {p2, v5}, Lcom/miui/player/helper/MediaInfo;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 154
    .local v7, displayAlbumName:Ljava/lang/CharSequence;
    iget-object v1, v10, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;->albumTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget v1, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mArtistIdx:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, artistName:Ljava/lang/String;
    invoke-static {p2, v6}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 158
    .local v8, displayArtistName:Ljava/lang/CharSequence;
    iget-object v1, v10, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;->artistTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v9, v10, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;->albumImageView:Landroid/widget/ImageView;

    .line 163
    .local v9, iv:Landroid/widget/ImageView;
    iget v1, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mAlbumArtIndex:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, art:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 166
    .local v2, aid:J
    new-instance v0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v0, info:Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;
    sget-object v1, Lcom/miui/player/model/AlbumBrowserAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    invoke-virtual {v1, v0, v9}, Lcom/miui/player/helper/DrawableProvider;->getDrawable(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    .line 168
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->isCurrentBrowserCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    invoke-interface {v0, p1}, Lcom/miui/player/model/BrowserSource;->setCurrentBrowserCursor(Landroid/database/Cursor;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/miui/player/model/AlbumBrowserAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 175
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 177
    :cond_0
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;-><init>()V

    .line 139
    .local v1, vh:Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;
    const v2, 0x7f0c0029

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;->albumTextView:Landroid/widget/TextView;

    .line 140
    const v2, 0x7f0c002a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;->artistTextView:Landroid/widget/TextView;

    .line 141
    const v2, 0x7f0c0028

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;->albumImageView:Landroid/widget/ImageView;

    .line 142
    const v2, 0x7f0c005c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/miui/player/model/AlbumBrowserAdapter$ViewHolder;->play_indicator:Landroid/widget/ImageView;

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    return-object v0
.end method

.method public quitCache()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/miui/player/model/AlbumBrowserAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    invoke-virtual {v0}, Lcom/miui/player/helper/DrawableProvider;->quit()V

    .line 102
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 5
    .parameter "constraint"

    .prologue
    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/model/AlbumBrowserAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 189
    :goto_0
    return-object v2

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/miui/player/model/BrowserSource;->createBrowserCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 187
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mConstraint:Ljava/lang/String;

    .line 188
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mConstraintIsValid:Z

    move-object v2, v0

    .line 189
    goto :goto_0
.end method

.method public setActivity(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/player/model/AlbumBrowserAdapter;->mBrowserSource:Lcom/miui/player/model/BrowserSource;

    .line 129
    return-void
.end method

.method public startCache()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/miui/player/model/AlbumBrowserAdapter;->sDrawableProvider:Lcom/miui/player/helper/DrawableProvider;

    invoke-virtual {v0}, Lcom/miui/player/helper/DrawableProvider;->start()V

    .line 98
    return-void
.end method
