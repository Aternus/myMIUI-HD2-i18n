.class public Lcom/android/fileexplorer/FavoriteListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FavoriteListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/fileexplorer/FavoriteItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/android/fileexplorer/FileIconHelper;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter
    .parameter "fileIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/fileexplorer/FavoriteItem;",
            ">;",
            "Lcom/android/fileexplorer/FileIconHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/fileexplorer/FavoriteItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    iput-object p1, p0, Lcom/android/fileexplorer/FavoriteListAdapter;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FavoriteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 23
    iput-object p4, p0, Lcom/android/fileexplorer/FavoriteListAdapter;->mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

    .line 24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 28
    const/4 v4, 0x0

    .line 29
    .local v4, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 30
    move-object v4, p2

    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FavoriteListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FavoriteItem;

    .line 36
    .local v0, item:Lcom/android/fileexplorer/FavoriteItem;
    iget-object v3, v0, Lcom/android/fileexplorer/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/FileInfo;

    .line 38
    .local v3, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    const v5, 0x7f080006

    iget-object v6, v0, Lcom/android/fileexplorer/FavoriteItem;->title:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/fileexplorer/FavoriteItem;->title:Ljava/lang/String;

    :goto_1
    invoke-static {v4, v5, v6}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 39
    const v5, 0x7f080007

    iget-object v6, p0, Lcom/android/fileexplorer/FavoriteListAdapter;->mContext:Landroid/content/Context;

    iget-wide v7, v3, Lcom/android/fileexplorer/FileInfo;->ModifiedDate:J

    invoke-static {v6, v7, v8}, Lcom/android/fileexplorer/Util;->formatDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 40
    const v5, 0x7f080008

    iget-boolean v6, v3, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v6, :cond_2

    const-string v6, ""

    :goto_2
    invoke-static {v4, v5, v6}, Lcom/android/fileexplorer/Util;->setText(Landroid/view/View;ILjava/lang/String;)Z

    .line 42
    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    .local v1, lFileImage:Landroid/widget/ImageView;
    const v5, 0x7f080003

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 44
    .local v2, lFileImageFrame:Landroid/widget/ImageView;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-boolean v5, v3, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v5, :cond_3

    .line 47
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    const v5, 0x7f020030

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    :goto_3
    return-object v4

    .line 32
    .end local v0           #item:Lcom/android/fileexplorer/FavoriteItem;
    .end local v1           #lFileImage:Landroid/widget/ImageView;
    .end local v2           #lFileImageFrame:Landroid/widget/ImageView;
    .end local v3           #lFileInfo:Lcom/android/fileexplorer/FileInfo;
    :cond_0
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030001

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 38
    .restart local v0       #item:Lcom/android/fileexplorer/FavoriteItem;
    .restart local v3       #lFileInfo:Lcom/android/fileexplorer/FileInfo;
    :cond_1
    iget-object v6, v3, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    goto :goto_1

    .line 40
    :cond_2
    iget-wide v6, v3, Lcom/android/fileexplorer/FileInfo;->fileSize:J

    invoke-static {v6, v7}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 50
    .restart local v1       #lFileImage:Landroid/widget/ImageView;
    .restart local v2       #lFileImageFrame:Landroid/widget/ImageView;
    :cond_3
    iget-object v5, p0, Lcom/android/fileexplorer/FavoriteListAdapter;->mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

    invoke-virtual {v5, v3, v1, v2}, Lcom/android/fileexplorer/FileIconHelper;->setIcon(Lcom/android/fileexplorer/FileInfo;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_3
.end method
