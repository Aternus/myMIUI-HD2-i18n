.class Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;
.super Landroid/widget/BaseAdapter;
.source "LiveWallpaperListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveWallpapersAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 192
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 193
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 204
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 209
    if-nez p2, :cond_0

    .line 210
    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 212
    new-instance v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;

    invoke-direct {v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;-><init>()V

    .line 213
    .local v1, holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;
    const v3, 0x7f080001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;->titleAuthor:Landroid/widget/TextView;

    .line 214
    const v3, 0x7f080002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;->description:Landroid/widget/TextView;

    .line 215
    const/high16 v3, 0x7f08

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    .line 216
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 221
    :goto_0
    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mWallpaperInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperInfo;

    .line 222
    .local v2, info:Landroid/app/WallpaperInfo;
    iget-object v4, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mThumbnails:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->access$200(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;->titleAuthor:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :try_start_0
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$LiveWallpapersAdapter;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/WallpaperInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    return-object p2

    .line 218
    .end local v1           #holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;
    .end local v2           #info:Landroid/app/WallpaperInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;

    .restart local v1       #holder:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;
    goto :goto_0

    .line 229
    .restart local v2       #info:Landroid/app/WallpaperInfo;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 230
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v3, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$ViewHolder;->description:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
