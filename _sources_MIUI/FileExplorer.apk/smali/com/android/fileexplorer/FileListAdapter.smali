.class public Lcom/android/fileexplorer/FileListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/fileexplorer/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileIconHelper;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter
    .parameter "f"
    .parameter "fileIcon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/FileViewInteractionHub;",
            "Lcom/android/fileexplorer/FileIconHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object p4, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 26
    iput-object p5, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 31
    const/4 v3, 0x0

    .line 32
    .local v3, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 33
    move-object v3, p2

    .line 38
    :goto_0
    move-object v0, v3

    check-cast v0, Lcom/android/fileexplorer/FileListItem;

    move-object v2, v0

    .line 39
    .local v2, listItem:Lcom/android/fileexplorer/FileListItem;
    iget-object v4, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v4, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v1

    .line 40
    .local v1, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    iget-object v4, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    iget-object v5, p0, Lcom/android/fileexplorer/FileListAdapter;->mFileIcon:Lcom/android/fileexplorer/FileIconHelper;

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/fileexplorer/FileListItem;->bind(Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileIconHelper;)V

    .line 42
    return-object v3

    .line 35
    .end local v1           #lFileInfo:Lcom/android/fileexplorer/FileInfo;
    .end local v2           #listItem:Lcom/android/fileexplorer/FileListItem;
    :cond_0
    iget-object v4, p0, Lcom/android/fileexplorer/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030002

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method
