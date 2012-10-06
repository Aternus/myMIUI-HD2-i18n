.class public Lcom/android/fileexplorer/FileViewActivity;
.super Landroid/app/Activity;
.source "FileViewActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/IFileInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;,
        Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;,
        Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackspaceExit:Z

.field private mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

.field private mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

.field private mFileListView:Landroid/widget/ListView;

.field private mFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

.field private mOnBackPressedListener:Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;

.field private mPreviousPath:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollPositionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/android/fileexplorer/FileViewActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewActivity$1;-><init>(Lcom/android/fileexplorer/FileViewActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 422
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/FileViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/FileViewActivity;)Lcom/android/fileexplorer/FileViewInteractionHub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/fileexplorer/FileViewActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/fileexplorer/FileViewActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private computeScrollPosition(Ljava/lang/String;)I
    .locals 12
    .parameter "path"

    .prologue
    const/4 v8, 0x1

    const-string v11, "FileViewActivity"

    const-string v10, " stack count:"

    const-string v9, " "

    .line 214
    const/4 v4, 0x0

    .line 215
    .local v4, pos:I
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 216
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 218
    .local v0, firstVisiblePosition:I
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iget-object v5, v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->path:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iput v0, v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->pos:I

    .line 221
    const-string v5, "FileViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeScrollPosition: update item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stack count:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move v4, v0

    .line 248
    .end local v0           #firstVisiblePosition:I
    :cond_0
    :goto_0
    const-string v5, "FileViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeScrollPosition: result pos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stack count:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    .line 250
    return v4

    .line 225
    .restart local v0       #firstVisiblePosition:I
    :cond_1
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    invoke-direct {v6, p0, v7, v0}, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;-><init>(Lcom/android/fileexplorer/FileViewActivity;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v5, "FileViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeScrollPosition: add item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewActivity;->mPreviousPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stack count:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    .end local v0           #firstVisiblePosition:I
    :cond_2
    const/4 v2, 0x0

    .line 232
    .local v2, isLast:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 233
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iget-object v5, v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->path:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 238
    :cond_3
    if-lez v1, :cond_4

    .line 239
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    sub-int v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;

    iget v4, v5, Lcom/android/fileexplorer/FileViewActivity$PathScrollPositionItem;->pos:I

    .line 242
    :cond_4
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v3, v5, v8

    .local v3, j:I
    :goto_2
    sub-int v5, v1, v8

    if-lt v3, v5, :cond_0

    if-ltz v3, :cond_0

    .line 243
    iget-object v5, p0, Lcom/android/fileexplorer/FileViewActivity;->mScrollPositionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 232
    .end local v3           #j:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private showEmptyView(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 307
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 309
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_0
    return-void

    .line 309
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private updateUI()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 293
    invoke-static {}, Lcom/android/fileexplorer/Util;->isSDCardReady()Z

    move-result v2

    .line 294
    .local v2, sdCardReady:Z
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 295
    .local v1, noSdView:Landroid/view/View;
    if-eqz v2, :cond_1

    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 297
    const v3, 0x7f08000d

    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, navigationBar:Landroid/view/View;
    if-eqz v2, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v3, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 301
    if-eqz v2, :cond_0

    .line 302
    iget-object v3, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 304
    :cond_0
    return-void

    .end local v0           #navigationBar:Landroid/view/View;
    :cond_1
    move v3, v4

    .line 295
    goto :goto_0

    .restart local v0       #navigationBar:Landroid/view/View;
    :cond_2
    move v3, v5

    .line 298
    goto :goto_1

    :cond_3
    move v4, v5

    .line 299
    goto :goto_2
.end method


# virtual methods
.method public addSingleFile(Lcom/android/fileexplorer/FileInfo;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewActivity;->onDataChanged()V

    .line 460
    return-void
.end method

.method public copyFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCopy(Ljava/util/ArrayList;)V

    .line 398
    return-void
.end method

.method public getAllFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getAllFiles()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewActivity;->getAllFiles()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 319
    return-object p0
.end method

.method public getDisplayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    const v3, 0x7f060046

    .line 358
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->getRootPath()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, root:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/FileViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 370
    :goto_0
    return-object v2

    .line 363
    :cond_0
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, pos:I
    if-nez v0, :cond_1

    .line 366
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 370
    .end local v0           #pos:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/fileexplorer/FileViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getFileIconHelper()Lcom/android/fileexplorer/FileIconHelper;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    return-object v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/FileInfo;
    .locals 2
    .parameter "pos"

    .prologue
    .line 439
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    .line 440
    :cond_0
    const/4 v0, 0x0

    .line 442
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/fileexplorer/FileInfo;

    move-object v0, p0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "displayPath"

    .prologue
    const-string v3, "/"

    .line 375
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->getRootPath()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, root:Ljava/lang/String;
    const v2, 0x7f060046

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/FileViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 383
    :goto_0
    return-object v2

    .line 379
    :cond_0
    const-string v2, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, ret:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 383
    goto :goto_0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public moveToFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->moveFileFrom(Ljava/util/ArrayList;)V

    .line 406
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mBackspaceExit:Z

    if-eqz v0, :cond_1

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mOnBackPressedListener:Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mOnBackPressedListener:Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;->OnBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mOnBackPressedListener:Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewActivity;->requestWindowFeature(I)Z

    .line 82
    const v3, 0x7f030004

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewActivity;->setContentView(I)V

    .line 83
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v3

    const-string v4, "FileView"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/ActivitiesManager;->registerActivity(Ljava/lang/String;Landroid/app/Activity;)V

    .line 85
    new-instance v3, Lcom/android/fileexplorer/FileCategoryHelper;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/FileCategoryHelper;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    .line 86
    new-instance v3, Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;-><init>(Lcom/android/fileexplorer/IFileInteractionListener;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/fileexplorer/FileViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 88
    .local v13, intent:Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, action:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 91
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object v3, v0

    sget-object v4, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->Pick:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/FileViewInteractionHub;->setMode(Lcom/android/fileexplorer/FileViewInteractionHub$Mode;)V

    .line 93
    const-string v3, "pick_folder"

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 94
    .local v15, pickFolder:Z
    if-nez v15, :cond_5

    .line 95
    const-string v3, "ext_filter"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, exts:[Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    move-object v3, v0

    invoke-virtual {v3, v12}, Lcom/android/fileexplorer/FileCategoryHelper;->setCustomCategory([Ljava/lang/String;)V

    .line 125
    .end local v12           #exts:[Ljava/lang/String;
    .end local v15           #pickFolder:Z
    :cond_1
    :goto_0
    const v3, 0x7f080013

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ListView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    .line 126
    new-instance v3, Lcom/android/fileexplorer/FileIconHelper;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/FileIconHelper;-><init>(Landroid/content/Context;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/fileexplorer/FileViewActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    .line 127
    new-instance v3, Lcom/android/fileexplorer/FileListAdapter;

    const v5, 0x7f030002

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    move-object v8, v0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/fileexplorer/FileListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileIconHelper;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/fileexplorer/FileViewActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 130
    const-string v3, "key_base_sd"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 131
    .local v10, baseSd:Z
    invoke-static {}, Lcom/android/fileexplorer/Util;->getSdDirectory()Ljava/lang/String;

    move-result-object v17

    .line 133
    .local v17, sdDir:Ljava/lang/String;
    const-string v3, "root_directory"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 134
    .local v16, rootDir:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 135
    if-eqz v10, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    move-object/from16 v16, v17

    .line 141
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->setRootPath(Ljava/lang/String;)V

    .line 143
    const/4 v11, 0x0

    .line 144
    .local v11, currentDir:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    .line 145
    .local v18, uri:Landroid/net/Uri;
    if-eqz v18, :cond_3

    .line 146
    if-eqz v10, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 147
    move-object/from16 v11, v17

    .line 151
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object v3, v0

    invoke-virtual {v3, v11}, Lcom/android/fileexplorer/FileViewInteractionHub;->setCurrentPath(Ljava/lang/String;)V

    .line 154
    :cond_3
    if-eqz v18, :cond_a

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_4
    const/4 v3, 0x1

    :goto_3
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/fileexplorer/FileViewActivity;->mBackspaceExit:Z

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 161
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v14, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v14, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v14, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v3, "file"

    invoke-virtual {v14, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/FileViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/FileViewActivity;->updateUI()V

    .line 168
    return-void

    .line 100
    .end local v10           #baseSd:Z
    .end local v11           #currentDir:Ljava/lang/String;
    .end local v14           #intentFilter:Landroid/content/IntentFilter;
    .end local v16           #rootDir:Ljava/lang/String;
    .end local v17           #sdDir:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/Uri;
    .restart local v15       #pickFolder:Z
    .restart local p1
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/FileCategoryHelper;->setCustomCategory([Ljava/lang/String;)V

    .line 101
    const v3, 0x7f080040

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v3, 0x7f080041

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/fileexplorer/FileViewActivity$2;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/FileViewActivity$2;-><init>(Lcom/android/fileexplorer/FileViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v3, 0x7f080042

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/fileexplorer/FileViewActivity$3;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/FileViewActivity$3;-><init>(Lcom/android/fileexplorer/FileViewActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 122
    .end local v15           #pickFolder:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object v3, v0

    sget-object v4, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->View:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/FileViewInteractionHub;->setMode(Lcom/android/fileexplorer/FileViewInteractionHub$Mode;)V

    goto/16 :goto_0

    .line 139
    .end local p1
    .restart local v10       #baseSd:Z
    .restart local v16       #rootDir:Ljava/lang/String;
    .restart local v17       #sdDir:Ljava/lang/String;
    :cond_7
    if-eqz v10, :cond_8

    move-object/from16 v16, v17

    :goto_4
    goto/16 :goto_1

    :cond_8
    const-string v3, "/"

    move-object/from16 v16, v3

    goto :goto_4

    .line 149
    .restart local v11       #currentDir:Ljava/lang/String;
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 154
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lcom/android/fileexplorer/FileViewActivity$5;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewActivity$5;-><init>(Lcom/android/fileexplorer/FileViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    return-void
.end method

.method public onNavigation(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public onOperation(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public onPick(Lcom/android/fileexplorer/FileInfo;)V
    .locals 4
    .parameter "f"

    .prologue
    .line 337
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 338
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/fileexplorer/FileViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewActivity;->finish()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 342
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRefreshFileList(Ljava/lang/String;Lcom/android/fileexplorer/FileSortHelper;)Z
    .locals 12
    .parameter "path"
    .parameter "sort"

    .prologue
    .line 253
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mOnBackPressedListener:Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;

    .line 254
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 256
    :cond_0
    const/4 v10, 0x0

    .line 289
    :goto_0
    return v10

    .line 258
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewActivity;->computeScrollPosition(Ljava/lang/String;)I

    move-result v9

    .line 259
    .local v9, pos:I
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    .line 260
    .local v4, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 262
    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v10}, Lcom/android/fileexplorer/FileCategoryHelper;->getFilter()Ljava/io/FilenameFilter;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v8

    .line 263
    .local v8, listFiles:[Ljava/io/File;
    if-nez v8, :cond_2

    .line 264
    const/4 v10, 0x1

    goto :goto_0

    .line 266
    :cond_2
    move-object v1, v8

    .local v1, arr$:[Ljava/io/File;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v2, v1, v5

    .line 268
    .local v2, child:Ljava/io/File;
    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v10}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/fileexplorer/FileViewInteractionHub;->isFileSelected(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 266
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 271
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, absolutePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/fileexplorer/Util;->isNormalFile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v0}, Lcom/android/fileexplorer/Util;->shouldShowFile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 273
    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v10}, Lcom/android/fileexplorer/FileCategoryHelper;->getFilter()Ljava/io/FilenameFilter;

    move-result-object v10

    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/fileexplorer/Settings;->getShowDotAndHiddenFiles()Z

    move-result v11

    invoke-static {v2, v10, v11}, Lcom/android/fileexplorer/Util;->GetFileInfo(Ljava/io/File;Ljava/io/FilenameFilter;Z)Lcom/android/fileexplorer/FileInfo;

    move-result-object v6

    .line 275
    .local v6, lFileInfo:Lcom/android/fileexplorer/FileInfo;
    if-eqz v6, :cond_3

    .line 276
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 281
    .end local v0           #absolutePath:Ljava/lang/String;
    .end local v2           #child:Ljava/io/File;
    .end local v6           #lFileInfo:Lcom/android/fileexplorer/FileInfo;
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/FileViewActivity;->sortCurrentList(Lcom/android/fileexplorer/FileSortHelper;)V

    .line 282
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-direct {p0, v10}, Lcom/android/fileexplorer/FileViewActivity;->showEmptyView(Z)V

    .line 283
    iget-object v10, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileListView:Landroid/widget/ListView;

    new-instance v11, Lcom/android/fileexplorer/FileViewActivity$4;

    invoke-direct {v11, p0, v9}, Lcom/android/fileexplorer/FileViewActivity$4;-><init>(Lcom/android/fileexplorer/FileViewActivity;I)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 289
    const/4 v10, 0x1

    goto :goto_0

    .line 282
    :cond_6
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 402
    return-void
.end method

.method public setPath(Ljava/lang/String;Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;)Z
    .locals 3
    .parameter "location"
    .parameter "l"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getRootPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const-string v0, "FileViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  [root]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->getRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    .line 434
    :goto_0
    return v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->setCurrentPath(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 433
    iput-object p2, p0, Lcom/android/fileexplorer/FileViewActivity;->mOnBackPressedListener:Lcom/android/fileexplorer/FileViewActivity$OnBackPressedListener;

    .line 434
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldHideMenu(I)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public sortCurrentList(Lcom/android/fileexplorer/FileSortHelper;)V
    .locals 2
    .parameter "sort"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewActivity;->mFileNameList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileSortHelper;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 448
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewActivity;->onDataChanged()V

    .line 449
    return-void
.end method
