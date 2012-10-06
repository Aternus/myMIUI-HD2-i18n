.class public Lcom/android/providers/downloads/ui/DownloadList;
.super Landroid/app/Activity;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/EditableListView$EditModeListener;


# instance fields
.field private mActionBar:Landroid/widget/EditableListActionBar;

.field private mContextMenuPosition:I

.field private mDateOrderedListView:Landroid/widget/EditableListView;

.field private mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

.field private mDateSortedCursor:Landroid/database/Cursor;

.field private mDownloadInWifi:Landroid/widget/SlidingButton;

.field private mDownloadInWifiListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mDownloadRunningTab:Landroid/widget/Button;

.field private mDownloadSuccessfulTab:Landroid/widget/Button;

.field private mFilePathColumnId:I

.field private mFilterPackage:Ljava/lang/String;

.field private mFilterTitle:Ljava/lang/String;

.field private mIdColumnId:I

.field private mIsDownloadRunningTab:Z

.field private mLocalUriColumnId:I

.field private mMediaTypeColumnId:I

.field private mOperationId:I

.field private mQueuedDialog:Landroid/app/AlertDialog;

.field private mReasonColumndId:I

.field private mStatusColumnId:I

.field private mWhereClause:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterTitle:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mWhereClause:Ljava/lang/String;

    .line 118
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadList$1;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifiListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/ui/DownloadList;Z[Ljava/lang/Long;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->doDeleteDownloads(Z[Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadList;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(JZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mWhereClause:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/DownloadList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->buildOthersClause(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->initDateSortedCursor()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DownloadAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadAdapter;)Lcom/android/providers/downloads/ui/DownloadAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method private buildOthersClause(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "notificationpackage"

    .line 709
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 710
    :cond_0
    const/4 v0, 0x0

    .line 716
    :goto_0
    return-object v0

    .line 712
    :cond_1
    const-string v0, "%s!=\'%s\'"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "notificationpackage"

    aput-object v7, v1, v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v5

    .line 713
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 714
    const-string v2, "%s AND %s!=\'%s\'"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "notificationpackage"

    aput-object v7, v3, v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 716
    goto :goto_0
.end method

.method private calculateOperationId(Ljava/util/HashSet;)I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, checkedIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 266
    const/4 v3, 0x0

    .line 267
    .local v3, pausedCount:I
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 268
    .local v1, id:J
    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->moveToDownload(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 270
    .local v4, status:I
    if-eq v8, v4, :cond_1

    if-ne v7, v4, :cond_2

    .line 272
    :cond_1
    const/4 v5, 0x0

    .line 278
    .end local v1           #id:J
    .end local v4           #status:I
    :goto_1
    return v5

    .line 273
    .restart local v1       #id:J
    .restart local v4       #status:I
    :cond_2
    const/4 v5, 0x4

    if-ne v5, v4, :cond_0

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    .end local v1           #id:J
    .end local v4           #status:I
    :cond_3
    if-lez v3, :cond_4

    move v5, v7

    goto :goto_1

    :cond_4
    move v5, v8

    goto :goto_1
.end method

.method private createTheTabCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 343
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterByNotificationPackage(Ljava/lang/String;)Landroid/app/DownloadManager$Query;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterByAppendedClause(Ljava/lang/String;)Landroid/app/DownloadManager$Query;

    move-result-object v1

    const-string v2, "_id"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 348
    .local v0, baseQuery:Landroid/app/DownloadManager$Query;
    iget-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    if-eqz v1, :cond_0

    .line 349
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 356
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 354
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    goto :goto_0
.end method

.method private deleteDownload(JZ)V
    .locals 9
    .parameter "downloadId"
    .parameter "deleteFile"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 805
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v6, v8, [J

    aput-wide p1, v6, v7

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 806
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 807
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 808
    if-eqz p3, :cond_1

    .line 809
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, localUri:Ljava/lang/String;
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilePathColumnId:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, filePath:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 813
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 814
    .local v3, path:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->deletelocalFile(Ljava/lang/String;)V

    .line 816
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->deletelocalFile(Ljava/lang/String;)V

    .line 818
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #localUri:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    new-array v5, v8, [J

    aput-wide p1, v5, v7

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->remove([J)I

    .line 820
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 822
    :cond_3
    return-void
.end method

.method private varargs deleteDownloadsDialog([Ljava/lang/Long;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f070016

    const/4 v4, 0x1

    .line 728
    array-length v0, p1

    if-gtz v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 731
    :cond_0
    array-length v0, p1

    if-le v0, v4, :cond_1

    const v0, 0x7f070034

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 734
    :goto_1
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 735
    const v2, 0x7f070036

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 737
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10803bd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 741
    iget-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    if-nez v2, :cond_2

    .line 742
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 746
    :goto_2
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$6;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/providers/downloads/ui/DownloadList$6;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/widget/CheckBox;[Ljava/lang/Long;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 752
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 731
    :cond_1
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 744
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method private deletelocalFile(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 825
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    const-string v1, "DownloadList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' couldn\'t be deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private varargs doDeleteDownloads(Z[Ljava/lang/Long;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 756
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 759
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 760
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 761
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 763
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$7;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/providers/downloads/ui/DownloadList$7;-><init>(Lcom/android/providers/downloads/ui/DownloadList;[Ljava/lang/Long;ZLandroid/app/ProgressDialog;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/providers/downloads/ui/DownloadList$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 799
    return-void
.end method

.method private doOperationCheckedIds(Ljava/util/HashSet;I)V
    .locals 3
    .parameter
    .parameter "operateId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, checkedIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 282
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 285
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 286
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 288
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/providers/downloads/ui/DownloadList$2;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Ljava/util/HashSet;ILandroid/app/ProgressDialog;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/providers/downloads/ui/DownloadList$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 319
    return-void
.end method

.method private getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 482
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$3;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 565
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 589
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 567
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :cond_1
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 583
    :pswitch_2
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 586
    :pswitch_3
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 494
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$4;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 529
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    .line 530
    .local v0, id:J
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 558
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 559
    return-void

    .line 533
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 537
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07000c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070017

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070015

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 546
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 551
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 555
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 530
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private haveCursors()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDateSortedCursor()V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->createTheTabCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    .line 361
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 362
    return-void
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 594
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, localUriString:Ljava/lang/String;
    if-nez v2, :cond_0

    move v4, v6

    .line 604
    :goto_0
    return v4

    .line 598
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 599
    .local v1, localUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 600
    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, externalRoot:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 838
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToDownload(J)Z
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 849
    const/4 v0, 0x1

    .line 852
    :goto_1
    return v0

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 852
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 506
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 508
    .local v3, localUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 518
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v2, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const v4, 0x10000001

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 522
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 526
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 509
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 510
    .local v1, exc:Ljava/io/FileNotFoundException;
    const-string v4, "DownloadList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const v6, 0x7f07000e

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_1

    .line 523
    .end local v1           #exc:Ljava/io/FileNotFoundException;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 524
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f070014

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 514
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 725
    return-void
.end method

.method private sendRunningDownloadClickedBroadcast(J)V
    .locals 3
    .parameter

    .prologue
    .line 624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    const-string v1, "com.android.providers.downloads"

    const-string v2, "com.android.providers.downloads.DownloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 628
    const-string v1, "multiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->sendBroadcast(Landroid/content/Intent;)V

    .line 630
    return-void
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    if-nez v0, :cond_0

    .line 220
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListActionBar;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    const v1, 0x7f0a000a

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setupClick(Landroid/view/View;I)V

    .line 223
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    const v1, 0x7f0a000c

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setupClick(Landroid/view/View;I)V

    .line 224
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 225
    return-void
.end method

.method private setupClick(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "id"

    .prologue
    .line 322
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 323
    .local v0, button:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_0
    return-void

    .line 322
    .end local v0           #button:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private setupContextMenu(Landroid/view/ContextMenu;Landroid/database/Cursor;)Landroid/view/ContextMenu;
    .locals 4
    .parameter "menu"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 390
    move-object v0, p1

    .line 391
    .local v0, contextMenu:Landroid/view/ContextMenu;
    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 409
    :goto_0
    const/4 v1, 0x4

    const v2, 0x7f070016

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 410
    return-object v0

    .line 394
    :sswitch_0
    const v1, 0x7f07002c

    invoke-interface {v0, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 398
    :sswitch_1
    const/4 v1, 0x1

    const v2, 0x7f07002d

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 402
    :sswitch_2
    const/4 v1, 0x2

    const v2, 0x7f07002e

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 406
    :sswitch_3
    const/4 v1, 0x3

    const v2, 0x7f070019

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 391
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private setupOperationButton()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 228
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/widget/EditableListActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 229
    .local v2, operationButton:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-boolean v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    if-eqz v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v3}, Landroid/widget/EditableListActionBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    .line 233
    .local v0, checkable:Landroid/widget/EditableListView$EditableListViewCheckable;
    if-nez v0, :cond_0

    .line 255
    .end local v0           #checkable:Landroid/widget/EditableListView$EditableListViewCheckable;
    :goto_0
    return-void

    .line 236
    .restart local v0       #checkable:Landroid/widget/EditableListView$EditableListViewCheckable;
    :cond_0
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v1

    .line 237
    .local v1, checkedIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->calculateOperationId(Ljava/util/HashSet;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mOperationId:I

    .line 238
    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mOperationId:I

    packed-switch v3, :pswitch_data_0

    .line 251
    :goto_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 240
    :pswitch_0
    const v3, 0x7f07002c

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 243
    :pswitch_1
    const v3, 0x7f07002d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 246
    :pswitch_2
    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_1
    move v3, v5

    .line 251
    goto :goto_2

    .line 253
    .end local v0           #checkable:Landroid/widget/EditableListView$EditableListViewCheckable;
    .end local v1           #checkedIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupViews()V
    .locals 1

    .prologue
    .line 365
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setContentView(I)V

    .line 366
    return-void
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "dialogBody"

    .prologue
    .line 612
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070016

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070019

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 618
    return-void
.end method

.method private updateSelectAllButtonText(Z)V
    .locals 2
    .parameter "isSelectAll"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/widget/EditableListActionBar;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v0, 0x7f070028

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    .line 331
    return-void

    .line 329
    :cond_0
    const v0, 0x7f070027

    goto :goto_0
.end method

.method private updateTabState(Z)V
    .locals 4
    .parameter "isDownloadRunningTab"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadRunningTab:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadRunningTab:Landroid/widget/Button;

    if-nez p1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadSuccessfulTab:Landroid/widget/Button;

    if-nez p1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadSuccessfulTab:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 338
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->initDateSortedCursor()V

    .line 339
    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->updateSelectAllButtonText(Z)V

    .line 340
    return-void

    :cond_0
    move v1, v2

    .line 335
    goto :goto_0

    :cond_1
    move v1, v2

    .line 336
    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->switchEditMode()V

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    .line 861
    return-void
.end method

.method public onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 1
    .parameter "checkable"

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setupOperationButton()V

    .line 890
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->updateSelectAllButtonText(Z)V

    .line 891
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 895
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    move v0, v3

    .line 896
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "download_only_on_wifi"

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 898
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Landroid/widget/SlidingButton;

    invoke-virtual {v1, v0}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 899
    if-nez v0, :cond_0

    .line 900
    const v0, 0x7f07001c

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 902
    :cond_0
    return-void

    :cond_1
    move v0, v4

    .line 895
    goto :goto_0

    :cond_2
    move v3, v4

    .line 896
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 706
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 644
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f05

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$5;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$5;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 673
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    .line 674
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->updateTabState(Z)V

    .line 675
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 676
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 677
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->switchEditMode()V

    goto :goto_0

    :cond_1
    move v0, v3

    .line 673
    goto :goto_1

    .line 682
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0}, Landroid/widget/EditableListActionBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    .line 684
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v0

    .line 685
    new-array v1, v3, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownloadsDialog([Ljava/lang/Long;)V

    goto :goto_0

    .line 689
    :pswitch_4
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0}, Landroid/widget/EditableListActionBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_2

    .line 691
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 692
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkAll()V

    .line 697
    :cond_2
    :goto_2
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->updateSelectAllButtonText(Z)V

    goto :goto_0

    .line 694
    :cond_3
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkNothing()V

    goto :goto_2

    .line 700
    :pswitch_5
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0}, Landroid/widget/EditableListActionBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    .line 701
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mOperationId:I

    invoke-direct {p0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->doOperationCheckedIds(Ljava/util/HashSet;I)V

    .line 702
    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkNothing()V

    .line 703
    invoke-direct {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->updateSelectAllButtonText(Z)V

    goto/16 :goto_0

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0000
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 415
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContextMenuPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 416
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 418
    .local v0, downloadId:J
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 437
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 438
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 420
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->pauseDownload([J)V

    goto :goto_0

    .line 435
    :catch_0
    move-exception v2

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->resumeDownload([J)V

    goto :goto_0

    .line 426
    :pswitch_2
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 429
    :pswitch_3
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->restartDownload([J)V

    goto :goto_0

    .line 432
    :pswitch_4
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownloadsDialog([Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const v7, 0x7f070001

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, ":"

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V

    .line 147
    iput-boolean v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "intent_extra_application_packagename"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, packagename:Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 151
    const-string v2, "filterPackage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v2, "runningTab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    .line 154
    :cond_0
    sget-object v2, Lcom/android/providers/downloads/ui/DownloadUtils;->DOWNLOAD_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;

    .line 156
    invoke-static {p0, v1}, Lcom/android/providers/downloads/ui/DownloadUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterTitle:Ljava/lang/String;

    .line 159
    :cond_1
    const-string v2, "download"

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    .line 160
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 161
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->initDateSortedCursor()V

    .line 165
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    .line 168
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    .line 169
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "local_uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    .line 171
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "media_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    .line 173
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "reason"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    .line 175
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "file_path"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilePathColumnId:I

    .line 178
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 179
    const v2, 0x7f0a0005

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditableListView;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    .line 180
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    const v3, 0x7f0a0006

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 182
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, v5}, Landroid/widget/EditableListView;->setLongClickable(Z)V

    .line 184
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, p0}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 185
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, p0}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 186
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v2, v5}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setupActionBar()V

    .line 191
    :cond_2
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SlidingButton;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Landroid/widget/SlidingButton;

    .line 192
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Landroid/widget/SlidingButton;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifiListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    invoke-virtual {v2, v3}, Landroid/widget/SlidingButton;->setOnCheckedChangedListener(Landroid/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadInWifi:Landroid/widget/SlidingButton;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "download_only_on_wifi"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 196
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    :goto_1
    const/high16 v2, 0x7f0a

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v2, 0x7f0a0001

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v2, 0x7f0a0003

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadRunningTab:Landroid/widget/Button;

    .line 205
    const v2, 0x7f0a0004

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadSuccessfulTab:Landroid/widget/Button;

    .line 206
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadRunningTab:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadSuccessfulTab:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->updateTabState(Z)V

    .line 209
    return-void

    :cond_3
    move v3, v6

    .line 193
    goto :goto_0

    .line 199
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f07002b

    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 382
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContextMenuPosition:I

    .line 383
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 384
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContextMenuPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 385
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setupContextMenu(Landroid/view/ContextMenu;Landroid/database/Cursor;)Landroid/view/ContextMenu;

    move-result-object p1

    .line 386
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 387
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 445
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 447
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onEnterEditMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 874
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v2}, Landroid/widget/EditableListActionBar;->setVisibility(I)V

    .line 875
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 876
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setEditMode(Z)V

    .line 877
    invoke-direct {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->updateSelectAllButtonText(Z)V

    .line 878
    return-void
.end method

.method public onExitEditMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionBar:Landroid/widget/EditableListActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditableListActionBar;->setVisibility(I)V

    .line 883
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v0, v2}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setEditMode(Z)V

    .line 885
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 636
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V

    .line 637
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 461
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 475
    :goto_0
    return v1

    .line 464
    :pswitch_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->switchEditMode()V

    move v1, v4

    .line 465
    goto :goto_0

    .line 468
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v0, downloadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 472
    :cond_0
    new-array v1, v3, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownloadsDialog([Ljava/lang/Long;)V

    move v1, v4

    .line 473
    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x7f0a0014
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 452
    const v0, 0x7f0a0014

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 454
    const v0, 0x7f0a0015

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    const v0, 0x7f0a0016

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 456
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    move v1, v2

    .line 452
    goto :goto_0

    :cond_1
    move v1, v2

    .line 455
    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 375
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 378
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    const-string v0, "runningTab"

    iget-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsDownloadRunningTab:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    const-string v0, "filterPackage"

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
