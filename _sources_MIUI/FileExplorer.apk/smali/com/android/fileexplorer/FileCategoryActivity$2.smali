.class Lcom/android/fileexplorer/FileCategoryActivity$2;
.super Ljava/lang/Object;
.source "FileCategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileCategoryActivity;->onDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileCategoryActivity;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileCategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity$2;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity$2;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    #getter for: Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;
    invoke-static {v0}, Lcom/android/fileexplorer/FileCategoryActivity;->access$400(Lcom/android/fileexplorer/FileCategoryActivity;)Lcom/android/fileexplorer/FileListCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->notifyDataSetChanged()V

    .line 360
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity$2;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    #getter for: Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;
    invoke-static {v0}, Lcom/android/fileexplorer/FileCategoryActivity;->access$500(Lcom/android/fileexplorer/FileCategoryActivity;)Lcom/android/fileexplorer/FavoriteList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/FavoriteList;->getArrayAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 361
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity$2;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity$2;->this$0:Lcom/android/fileexplorer/FileCategoryActivity;

    #getter for: Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;
    invoke-static {v1}, Lcom/android/fileexplorer/FileCategoryActivity;->access$400(Lcom/android/fileexplorer/FileCategoryActivity;)Lcom/android/fileexplorer/FileListCursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileListCursorAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V
    invoke-static {v0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->access$600(Lcom/android/fileexplorer/FileCategoryActivity;Z)V

    .line 362
    return-void

    .line 361
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
