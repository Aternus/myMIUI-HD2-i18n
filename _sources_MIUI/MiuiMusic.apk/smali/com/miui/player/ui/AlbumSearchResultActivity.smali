.class public Lcom/miui/player/ui/AlbumSearchResultActivity;
.super Landroid/app/Activity;
.source "AlbumSearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/AlbumSearchResultActivity$1;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$SaveBitmapRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$ShowBitmapRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$GetBitmapRunnable;,
        Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;
    }
.end annotation


# static fields
.field public static final ALBUM_NAME:Ljava/lang/String; = "album"

.field public static final ARTIST_NAME:Ljava/lang/String; = "artist"

.field public static final RAW_ALBUM_NAME:Ljava/lang/String; = "raw_album"

.field public static final RAW_ARTIST_NAME:Ljava/lang/String; = "raw_artist"

.field public static final SAVE_PATH:Ljava/lang/String; = "save_path"

.field public static final SEARCH_RESULT:Ljava/lang/String; = "search_result"


# instance fields
.field private mAlbumGridView:Landroid/widget/GridView;

.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSavePath:Ljava/lang/String;

.field private mSearchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mHandler:Landroid/os/Handler;

    .line 263
    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/ui/AlbumSearchResultActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/ui/AlbumSearchResultActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/miui/player/ui/AlbumSearchResultActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/miui/player/ui/AlbumSearchResultActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/player/ui/AlbumSearchResultActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->notifyDownload()V

    return-void
.end method

.method private notifyDownload()V
    .locals 7

    .prologue
    const-string v6, "raw_artist"

    const-string v5, "raw_album"

    const-string v4, "artist"

    const-string v3, "album"

    .line 253
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 255
    .local v1, myIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, i:Landroid/content/Intent;
    const-string v2, "album"

    const-string v2, "album"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v2, "artist"

    const-string v2, "artist"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v2, "raw_album"

    const-string v2, "raw_album"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v2, "raw_artist"

    const-string v2, "raw_artist"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->setResult(ILandroid/content/Intent;)V

    .line 261
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 66
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "save_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSearchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->finish()V

    .line 74
    :cond_1
    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/AlbumSearchResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mAlbumGridView:Landroid/widget/GridView;

    .line 75
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mAlbumGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/AlbumSearchResultActivity$AlbumArrayAdapter;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mAlbumGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/AlbumSearchResultActivity$OnBitmapSelectListener;-><init>(Lcom/miui/player/ui/AlbumSearchResultActivity;Lcom/miui/player/ui/AlbumSearchResultActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/AlbumSearchResultActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method
