.class public Lcom/android/gallery/ui/TabFavoriteActivity;
.super Lcom/android/gallery/ui/FolderListActivity;
.source "TabFavoriteActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/android/gallery/ui/FolderListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSortOrderPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5
    const-string v0, "tab_favorite_last_sort_order"

    return-object v0
.end method
