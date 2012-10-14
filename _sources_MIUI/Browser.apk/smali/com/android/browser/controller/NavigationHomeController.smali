.class public Lcom/android/browser/controller/NavigationHomeController;
.super Ljava/lang/Object;
.source "NavigationHomeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/NavigationHomeController$BarconObserver;,
        Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;,
        Lcom/android/browser/controller/NavigationHomeController$EventHandler;
    }
.end annotation


# static fields
.field public static final BARCON_PAGE_SITES_PER_ROW:I = 0x3

.field public static final BARCON_PAGE_SITES_PER_ROW_LAND:I = 0x5

.field private static final DELAY_BEFORE_HIDING_LOADING_PROGRESS_BAR:I = 0x1388

.field public static final ROUND_IMAGE_RADIUS:I = 0x4

.field private static final TAG:Ljava/lang/String; = null

.field public static final YELLOW_PAGE_SITES_PER_ROW_CH:I = 0x5

.field public static final YELLOW_PAGE_SITES_PER_ROW_CH_LAND:I = 0xa

.field public static final YELLOW_PAGE_SITES_PER_ROW_EN:I = 0x3

.field private static sInstance:Lcom/android/browser/controller/NavigationHomeController;

.field private static sThumbnailDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handler:Lcom/android/browser/controller/NavigationHomeController$EventHandler;

.field private mBarconObserver:Lcom/android/browser/controller/NavigationHomeController$BarconObserver;

.field private mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

.field private mDataLoader:Lcom/android/browser/model/NavigationHomeDataLoader;

.field private mThumbnailAdapter:Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

.field private mYellowPageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/YellowPageDataProvider$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/browser/controller/NavigationHomeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/controller/NavigationHomeController;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/browser/controller/NavigationHomeController;->sThumbnailDrawableCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/browser/controller/NavigationHomeController$EventHandler;

    invoke-direct {v0, v1}, Lcom/android/browser/controller/NavigationHomeController$EventHandler;-><init>(Lcom/android/browser/controller/NavigationHomeController$1;)V

    iput-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->handler:Lcom/android/browser/controller/NavigationHomeController$EventHandler;

    .line 95
    iput-object p1, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 96
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v0}, Lcom/android/browser/model/NavigationHomeDataLoader;->getInstance(Landroid/content/Context;)Lcom/android/browser/model/NavigationHomeDataLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mDataLoader:Lcom/android/browser/model/NavigationHomeDataLoader;

    .line 97
    new-instance v0, Lcom/android/browser/controller/NavigationHomeController$BarconObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/NavigationHomeController$BarconObserver;-><init>(Lcom/android/browser/controller/NavigationHomeController;Lcom/android/browser/controller/NavigationHomeController$1;)V

    iput-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mBarconObserver:Lcom/android/browser/controller/NavigationHomeController$BarconObserver;

    .line 98
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mDataLoader:Lcom/android/browser/model/NavigationHomeDataLoader;

    iget-object v1, p0, Lcom/android/browser/controller/NavigationHomeController;->mBarconObserver:Lcom/android/browser/controller/NavigationHomeController$BarconObserver;

    invoke-virtual {v0, v1}, Lcom/android/browser/model/NavigationHomeDataLoader;->registerObserver(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/controller/NavigationHomeController;)Lcom/android/browser/ui/MiRenBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/controller/NavigationHomeController;)Lcom/android/browser/controller/NavigationHomeController$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->handler:Lcom/android/browser/controller/NavigationHomeController$EventHandler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/browser/controller/NavigationHomeController;->sThumbnailDrawableCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/browser/controller/NavigationHomeController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/controller/NavigationHomeController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/browser/controller/NavigationHomeController;->handleBarconChanged()V

    return-void
.end method

.method public static getInstance(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/NavigationHomeController;
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    sget-object v0, Lcom/android/browser/controller/NavigationHomeController;->sInstance:Lcom/android/browser/controller/NavigationHomeController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/browser/controller/NavigationHomeController;->sInstance:Lcom/android/browser/controller/NavigationHomeController;

    iget-object v0, v0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    if-eq v0, p0, :cond_2

    .line 64
    :cond_0
    sget-object v0, Lcom/android/browser/controller/NavigationHomeController;->sInstance:Lcom/android/browser/controller/NavigationHomeController;

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/android/browser/controller/NavigationHomeController;->sInstance:Lcom/android/browser/controller/NavigationHomeController;

    iget-object v0, v0, Lcom/android/browser/controller/NavigationHomeController;->mDataLoader:Lcom/android/browser/model/NavigationHomeDataLoader;

    sget-object v1, Lcom/android/browser/controller/NavigationHomeController;->sInstance:Lcom/android/browser/controller/NavigationHomeController;

    iget-object v1, v1, Lcom/android/browser/controller/NavigationHomeController;->mBarconObserver:Lcom/android/browser/controller/NavigationHomeController$BarconObserver;

    invoke-virtual {v0, v1}, Lcom/android/browser/model/NavigationHomeDataLoader;->unregisterObserver(Ljava/lang/Object;)V

    .line 67
    :cond_1
    new-instance v0, Lcom/android/browser/controller/NavigationHomeController;

    invoke-direct {v0, p0}, Lcom/android/browser/controller/NavigationHomeController;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    sput-object v0, Lcom/android/browser/controller/NavigationHomeController;->sInstance:Lcom/android/browser/controller/NavigationHomeController;

    .line 69
    :cond_2
    sget-object v0, Lcom/android/browser/controller/NavigationHomeController;->sInstance:Lcom/android/browser/controller/NavigationHomeController;

    return-object v0
.end method

.method private handleBarconChanged()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mDataLoader:Lcom/android/browser/model/NavigationHomeDataLoader;

    invoke-virtual {v0}, Lcom/android/browser/model/NavigationHomeDataLoader;->forceReload()V

    .line 174
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mThumbnailAdapter:Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/browser/controller/NavigationHomeController;->getThumbnailAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

    iput-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mThumbnailAdapter:Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mThumbnailAdapter:Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

    iget-object v1, p0, Lcom/android/browser/controller/NavigationHomeController;->mDataLoader:Lcom/android/browser/model/NavigationHomeDataLoader;

    invoke-virtual {v1}, Lcom/android/browser/model/NavigationHomeDataLoader;->getThumbnailList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->resetData(Ljava/util/ArrayList;)V

    .line 178
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mThumbnailAdapter:Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;->notifyDataSetChanged()V

    .line 179
    return-void
.end method


# virtual methods
.method public addNewThumbnail()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    new-instance v1, Lcom/android/browser/controller/NavigationHomeController$1;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/NavigationHomeController$1;-><init>(Lcom/android/browser/controller/NavigationHomeController;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public getThumbnailAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mThumbnailAdapter:Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

    iget-object v1, p0, Lcom/android/browser/controller/NavigationHomeController;->mDataLoader:Lcom/android/browser/model/NavigationHomeDataLoader;

    invoke-virtual {v1}, Lcom/android/browser/model/NavigationHomeDataLoader;->getThumbnailList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;-><init>(Lcom/android/browser/controller/NavigationHomeController;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mThumbnailAdapter:Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mThumbnailAdapter:Lcom/android/browser/controller/NavigationHomeController$ThumbnailDataAdapter;

    return-object v0
.end method

.method public getYellowPageData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/YellowPageDataProvider$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mYellowPageItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v0}, Lcom/android/browser/model/YellowPageDataProvider;->getCategories(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mYellowPageItems:Ljava/util/ArrayList;

    .line 169
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mYellowPageItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public launchDownloadCenter()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, pageView:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method public launchFavoriate()V
    .locals 4

    .prologue
    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const-class v3, Lcom/android/browser/ui/BookmarkCenter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser/BookmarkCenter/DefaultTab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public launchHistory()V
    .locals 4

    .prologue
    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const-class v3, Lcom/android/browser/ui/BookmarkCenter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser/BookmarkCenter/DefaultTab"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public launchMostVisited()V
    .locals 4

    .prologue
    .line 121
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const-class v3, Lcom/android/browser/ui/BookmarkCenter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser/BookmarkCenter/DefaultTab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public launchReadingCenter()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/browser/controller/NavigationHomeController;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v1, 0x7f0900e4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    return-void
.end method
