.class public Lcom/miui/player/model/OnlineCategoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnlineCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/model/OnlineCategoryAdapter$MusicInfoSongCategoryListWrap;,
        Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;
    }
.end annotation


# static fields
.field private static final SONG_PREVIEW_ID:[I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x8bt 0x0t 0xct 0x7ft
        0x8ct 0x0t 0xct 0x7ft
        0x8dt 0x0t 0xct 0x7ft
        0x8et 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mActivity:Landroid/app/Activity;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/model/OnlineCategoryAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/player/model/OnlineCategoryAdapter;Landroid/view/View;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/player/model/OnlineCategoryAdapter;->setSongPreview(Landroid/view/View;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    return-void
.end method

.method private setSongPreview(Landroid/view/View;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 13
    .parameter "view"
    .parameter "songList"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x4

    .line 90
    const v9, 0x7f0c008a

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 92
    .local v4, previewWrap:Landroid/view/View;
    if-eqz p2, :cond_0

    iget-object v9, p2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_2

    .line 93
    :cond_0
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_1
    return-void

    .line 95
    :cond_2
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v6, p2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;->Songs:Ljava/util/ArrayList;

    .line 99
    .local v6, songItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sget-object v10, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    array-length v10, v10

    if-ge v9, v10, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v9

    .line 102
    .local v1, end:I
    :goto_0
    const/4 v2, 0x0

    .line 103
    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 104
    sget-object v9, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    aget v9, v9, v2

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 106
    .local v3, preview:Landroid/view/View;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 107
    .local v5, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    if-nez v5, :cond_4

    .line 108
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #preview:Landroid/view/View;
    .end local v5           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_3
    sget-object v9, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    array-length v9, v9

    move v1, v9

    goto :goto_0

    .line 110
    .restart local v1       #end:I
    .restart local v2       #i:I
    .restart local v3       #preview:Landroid/view/View;
    .restart local v5       #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_4
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 111
    const v9, 0x7f0c0091

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 112
    .local v8, songNum:Landroid/widget/TextView;
    const v9, 0x7f0c0092

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 113
    .local v7, songName:Landroid/widget/TextView;
    const v9, 0x7f0c002a

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    .local v0, artistName:Landroid/widget/TextView;
    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v9, v5, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v9, v5, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 121
    .end local v0           #artistName:Landroid/widget/TextView;
    .end local v3           #preview:Landroid/view/View;
    .end local v5           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    .end local v7           #songName:Landroid/widget/TextView;
    .end local v8           #songNum:Landroid/widget/TextView;
    :cond_5
    :goto_3
    sget-object v9, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 122
    sget-object v9, Lcom/miui/player/model/OnlineCategoryAdapter;->SONG_PREVIEW_ID:[I

    aget v9, v9, v2

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 123
    .restart local v3       #preview:Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineCategoryAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;->SongCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSongCategoryItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/miui/player/model/OnlineCategoryAdapter;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;->SongCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 63
    move-object v2, p2

    .line 64
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 65
    iget-object v3, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030020

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    :cond_0
    rem-int/lit8 v3, p1, 0x2

    if-nez v3, :cond_1

    .line 69
    const v3, 0x7f02007d

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/player/model/OnlineCategoryAdapter;->getSongCategoryItem(I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;

    move-result-object v0

    .line 75
    .local v0, categoryItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;
    const v3, 0x7f0c0089

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, categoryName:Landroid/widget/TextView;
    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->Name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    new-instance v4, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;

    iget-object v5, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;->SongListUrl:Ljava/lang/String;

    invoke-direct {v4, p0, v2, v5}, Lcom/miui/player/model/OnlineCategoryAdapter$SongPreviewWaiter;-><init>(Lcom/miui/player/model/OnlineCategoryAdapter;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/miui/player/helper/SongListCache;->registerWaiter(Landroid/content/Context;Lcom/miui/player/helper/SongListCache$SongListWaiter;)Z

    .line 81
    return-object v2

    .line 71
    .end local v0           #categoryItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList$SongCategoryItem;
    .end local v1           #categoryName:Landroid/widget/TextView;
    :cond_1
    const v3, 0x7f020080

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    iget-object v0, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;->SongCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCategoryList(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;)V
    .locals 0
    .parameter "categoryList"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/player/model/OnlineCategoryAdapter;->mCategoryList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    .line 40
    return-void
.end method
