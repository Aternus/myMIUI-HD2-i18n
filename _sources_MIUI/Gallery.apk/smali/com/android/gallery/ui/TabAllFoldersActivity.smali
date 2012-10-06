.class public Lcom/android/gallery/ui/TabAllFoldersActivity;
.super Lcom/android/gallery/ui/FolderListActivity;
.source "TabAllFoldersActivity.java"


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
    .line 9
    const-string v0, "tab_all_folders_last_sort_order"

    return-object v0
.end method

.method protected isShowFavoriteOnly()Z
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    return v0
.end method
