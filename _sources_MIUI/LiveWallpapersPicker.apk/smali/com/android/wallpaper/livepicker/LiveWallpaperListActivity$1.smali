.class Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$1;
.super Ljava/lang/Object;
.source "LiveWallpaperListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->findLiveWallpapers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;


# direct methods
.method constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$1;->mCollator:Ljava/text/Collator;

    .line 102
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .parameter "info1"
    .parameter "info2"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$1;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$1;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;->access$000(Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/wallpaper/livepicker/LiveWallpaperListActivity$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
