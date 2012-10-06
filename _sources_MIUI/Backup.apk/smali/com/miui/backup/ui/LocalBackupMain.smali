.class public Lcom/miui/backup/ui/LocalBackupMain;
.super Landroid/app/ListActivity;
.source "LocalBackupMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;,
        Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;,
        Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;
    }
.end annotation


# instance fields
.field protected APP_SUMMARY_TAILER:Ljava/lang/String;

.field protected CONTENT_BASE_DIR:Ljava/io/File;

.field protected SYSDATA_SUMMARY_TAILER:Ljava/lang/String;

.field protected deleteProgressDialog:Landroid/app/ProgressDialog;

.field private mBackupButton:Landroid/widget/Button;

.field protected mBackupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;

.field private mBatchDeletePanel:Landroid/view/View;

.field private mBottomPanal:Landroid/view/View;

.field public mCheckCount:I

.field protected mDelDisplayName:Ljava/lang/String;

.field protected mDeleteBackupName:Ljava/lang/String;

.field private mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

.field private mSortDescComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTitleHint:Landroid/widget/TextView;

.field private mTitleImage:Landroid/widget/ImageView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mCheckCount:I

    .line 450
    new-instance v0, Lcom/miui/backup/ui/LocalBackupMain$5;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/LocalBackupMain$5;-><init>(Lcom/miui/backup/ui/LocalBackupMain;)V

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mSortDescComparator:Ljava/util/Comparator;

    .line 647
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/ui/LocalBackupMain;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/backup/ui/LocalBackupMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupMain;->refreshBackupList()V

    return-void
.end method

.method private getFileSize(Ljava/io/File;)J
    .locals 13
    .parameter "root"

    .prologue
    const-string v12, ".size_"

    .line 461
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 462
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 463
    const-wide/16 v4, 0x0

    .line 464
    .local v4, filesize:J
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v0, v6

    .line 465
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 466
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, fileName:Ljava/lang/String;
    const-string v10, ".size_"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 468
    const/4 v10, 0x0

    const-string v11, ".size_"

    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 470
    .local v8, newsize:J
    cmp-long v10, v4, v8

    if-gez v10, :cond_0

    .line 471
    move-wide v4, v8

    .line 464
    .end local v3           #fileName:Ljava/lang/String;
    .end local v8           #newsize:J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 476
    .end local v2           #file:Ljava/io/File;
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_2

    move-wide v10, v4

    .line 481
    .end local v0           #arr$:[Ljava/io/File;
    .end local v4           #filesize:J
    .end local v6           #i$:I
    .end local v7           #len$:I
    :goto_1
    return-wide v10

    :cond_2
    invoke-static {p1}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v10

    goto :goto_1
.end method

.method private getItemsCounts(Ljava/io/File;)[I
    .locals 9
    .parameter "root"

    .prologue
    const/4 v8, 0x1

    .line 485
    const/4 v3, 0x0

    .line 487
    .local v3, ret:[I
    new-instance v2, Ljava/io/File;

    const-string v6, "backup_config.db"

    invoke-direct {v2, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    .local v2, restoreDbFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v4, v3

    .line 512
    .end local v3           #ret:[I
    .local v4, ret:[I
    :goto_0
    return-object v4

    .line 490
    .end local v4           #ret:[I
    .restart local v3       #ret:[I
    :cond_0
    new-instance v1, Lcom/miui/backup/DbAdapter;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p0, v6}, Lcom/miui/backup/DbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 491
    .local v1, dbAdapter:Lcom/miui/backup/DbAdapter;
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->open()Lcom/miui/backup/DbAdapter;

    .line 492
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->fetchAllApps()Landroid/database/Cursor;

    move-result-object v0

    .line 494
    .local v0, appsCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 495
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 496
    if-nez v3, :cond_1

    .line 497
    const/4 v6, 0x2

    new-array v3, v6, [I

    .end local v3           #ret:[I
    fill-array-data v3, :array_0

    .line 499
    .restart local v3       #ret:[I
    :cond_1
    const-string v6, "appType"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 500
    .local v5, type:I
    if-ne v5, v8, :cond_2

    .line 501
    aget v6, v3, v8

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v8

    .line 505
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 503
    :cond_2
    const/4 v6, 0x0

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    goto :goto_2

    .line 508
    .end local v5           #type:I
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 509
    if-eqz v1, :cond_4

    .line 510
    invoke-virtual {v1}, Lcom/miui/backup/DbAdapter;->close()V

    :cond_4
    move-object v4, v3

    .line 512
    .end local v3           #ret:[I
    .restart local v4       #ret:[I
    goto :goto_0

    .line 497
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private refreshBackupList()V
    .locals 2

    .prologue
    .line 517
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->prepareBackupList()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->showBatchDeletePanel(Z)V

    .line 522
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Landroid/database/SQLException;
    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private resetBackupChecked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 543
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 545
    .local v1, item:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "checked"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 547
    .end local v1           #item:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iput v4, p0, Lcom/miui/backup/ui/LocalBackupMain;->mCheckCount:I

    .line 548
    return-void
.end method

.method private showDeleteOption(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->setBatchDeleteMode(Z)V

    .line 539
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->notifyDataSetChanged()V

    .line 540
    return-void
.end method


# virtual methods
.method protected addCheckCount()V
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mCheckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mCheckCount:I

    .line 308
    return-void
.end method

.method protected getBackupList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v3, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/miui/backup/ui/LocalBackupMain;->CONTENT_BASE_DIR:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 437
    .local v1, contents:[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 438
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 439
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 440
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, fileName:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 442
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v4           #fileName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 447
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_1
    return-object v3
.end method

.method protected getBatchDeleteMode()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->getBatchDeleteMode()Z

    move-result v0

    return v0
.end method

.method protected minusCheckCount()V
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mCheckCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mCheckCount:I

    .line 311
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 247
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/ui/BackupSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :pswitch_2
    iget v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mCheckCount:I

    if-lez v0, :cond_0

    .line 252
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupMain;->showDialog(I)V

    goto :goto_0

    .line 256
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupMain;->showBatchDeletePanel(Z)V

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a001b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 152
    .local v0, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 153
    .local v1, pos:I
    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupMain;->mDelDisplayName:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    const-string v3, "fileName"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/backup/ui/LocalBackupMain;->mDeleteBackupName:Ljava/lang/String;

    .line 155
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/LocalBackupMain;->showDialog(I)V

    .line 157
    .end local v0           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v1           #pos:I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-static {p0}, Lcom/miui/backup/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/miui/backup/SDCardMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    .line 99
    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v3, p0}, Lcom/miui/backup/SDCardMonitor;->addSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 100
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/LocalBackupMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 101
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    invoke-static {}, Lcom/miui/backup/AppInitializer;->getInstance()Lcom/miui/backup/AppInitializer;

    move-result-object v0

    .line 105
    .local v0, appInit:Lcom/miui/backup/AppInitializer;
    invoke-virtual {v0}, Lcom/miui/backup/AppInitializer;->init()Z

    .line 107
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->setContentBaseDir()V

    .line 109
    const v3, 0x7f030009

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/LocalBackupMain;->setContentView(I)V

    .line 111
    const v3, 0x7f0a001a

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/LocalBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBottomPanal:Landroid/view/View;

    .line 112
    const v3, 0x7f0a001c

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/LocalBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBatchDeletePanel:Landroid/view/View;

    .line 113
    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBatchDeletePanel:Landroid/view/View;

    const v4, 0x7f0a001d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBatchDeletePanel:Landroid/view/View;

    const v4, 0x7f0a001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v3, 0x7f0a0018

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/LocalBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mTitleImage:Landroid/widget/ImageView;

    .line 116
    const v3, 0x7f0a0019

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/LocalBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mTitleHint:Landroid/widget/TextView;

    .line 118
    const v3, 0x7f0a001b

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/LocalBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupButton:Landroid/widget/Button;

    .line 119
    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 122
    .local v1, lv:Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->setBackupList()V

    .line 126
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 142
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 145
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v1, 0x7f060014

    const v5, 0x7f060005

    const v2, 0x1080027

    const/4 v3, 0x0

    const v4, 0x7f06000d

    .line 183
    packed-switch p1, :pswitch_data_0

    .line 227
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 185
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupMain;->mDelDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/backup/ui/LocalBackupMain$2;

    invoke-direct {v1, p0}, Lcom/miui/backup/ui/LocalBackupMain$2;-><init>(Lcom/miui/backup/ui/LocalBackupMain;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/backup/ui/LocalBackupMain$1;

    invoke-direct {v1, p0}, Lcom/miui/backup/ui/LocalBackupMain$1;-><init>(Lcom/miui/backup/ui/LocalBackupMain;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/backup/ui/LocalBackupMain$4;

    invoke-direct {v1, p0}, Lcom/miui/backup/ui/LocalBackupMain$4;-><init>(Lcom/miui/backup/ui/LocalBackupMain;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/backup/ui/LocalBackupMain$3;

    invoke-direct {v1, p0}, Lcom/miui/backup/ui/LocalBackupMain$3;-><init>(Lcom/miui/backup/ui/LocalBackupMain;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 216
    :pswitch_2
    const-string v0, ""

    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->deleteProgressDialog:Landroid/app/ProgressDialog;

    .line 218
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->deleteProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 220
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->removeSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 137
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 138
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
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
    const-string v3, "checked"

    .line 263
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->getBatchDeleteMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 266
    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 267
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/backup/ui/RestoreSelectActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    const-string v2, "ext_backup"

    const-string v3, "fileName"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->startActivity(Landroid/content/Intent;)V

    .line 286
    :goto_0
    return-void

    .line 272
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupMain;->showDialog(I)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 276
    const-string v1, "checked"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 277
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    const-string v1, "checked"

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->minusCheckCount()V

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 281
    :cond_3
    const-string v1, "checked"

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->addCheckCount()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 177
    :goto_0
    return v0

    .line 174
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->showBatchDeletePanel(Z)V

    .line 175
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 241
    .end local p2
    :goto_0
    return-void

    .line 235
    .restart local p2
    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupMain;->mDelDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 163
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    const v0, 0x7f060011

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 167
    :cond_0
    return v2
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupMain;->onSdcardStatusChanged(Z)V

    .line 132
    return-void
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 2
    .parameter "mount"

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupMain;->refreshBackupList()V

    .line 291
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mTitleImage:Landroid/widget/ImageView;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mTitleHint:Landroid/widget/TextView;

    const v1, 0x7f060078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 300
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mTitleImage:Landroid/widget/ImageView;

    const v1, 0x10800b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mTitleHint:Landroid/widget/TextView;

    const v1, 0x1040016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected prepareBackupList()V
    .locals 28

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/miui/backup/SDCardMonitor;->isSdCardAvailable()Z

    move-result v24

    if-nez v24, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/backup/ui/LocalBackupMain;->getBackupList()Ljava/util/List;

    move-result-object v10

    .line 339
    .local v10, listContent:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v24

    move v0, v4

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 340
    new-instance v20, Ljava/util/Hashtable;

    invoke-direct/range {v20 .. v20}, Ljava/util/Hashtable;-><init>()V

    .line 341
    .local v20, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 344
    .local v3, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->CONTENT_BASE_DIR:Ljava/io/File;

    move-object/from16 v24, v0

    move-object v0, v8

    move-object/from16 v1, v24

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    .local v8, lDir:Ljava/io/File;
    invoke-static {v8}, Lcom/miui/backup/BackupUtils;->getProgress(Ljava/io/File;)I

    move-result v11

    .line 347
    .local v11, progress:I
    const/4 v6, 0x0

    .line 348
    .local v6, isFailed:Z
    const/16 v24, 0x2

    move v0, v11

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 339
    .end local v6           #isFailed:Z
    .end local v8           #lDir:Ljava/io/File;
    .end local v11           #progress:I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 350
    .restart local v6       #isFailed:Z
    .restart local v8       #lDir:Ljava/io/File;
    .restart local v11       #progress:I
    :cond_2
    const/16 v24, 0x1

    move v0, v11

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 351
    const-string v24, "failed"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const/4 v6, 0x1

    .line 358
    :goto_3
    const-string v24, "fileName"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->getFileSize(Ljava/io/File;)J

    move-result-wide v13

    .line 362
    .local v13, size:J
    const-wide/16 v24, 0x400

    div-long v24, v13, v24

    const-wide/16 v26, 0x400

    div-long v17, v24, v26

    .line 363
    .local v17, sizeMB:J
    const-wide/16 v24, 0x400

    div-long v15, v13, v24

    .line 365
    .local v15, sizeKB:J
    const-string v24, "blockSize"

    new-instance v25, Ljava/lang/Long;

    move-object/from16 v0, v25

    move-wide v1, v13

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 366
    move-object/from16 v21, v3

    .line 369
    .local v21, title:Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x1

    sub-int v9, v24, v25

    .line 370
    .local v9, length:I
    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isDigit(C)Z

    move-result v24

    if-nez v24, :cond_5

    .line 371
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v22, titleBuilder:Ljava/lang/StringBuilder;
    const/16 v23, 0x0

    .line 374
    .local v23, underLineIndex:I
    const/4 v5, 0x0

    .local v5, index:I
    :goto_4
    if-ge v5, v9, :cond_9

    .line 375
    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isDigit(C)Z

    move-result v24

    if-nez v24, :cond_8

    .line 376
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 377
    const-string v24, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    :goto_5
    add-int/lit8 v23, v23, 0x1

    .line 374
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 354
    .end local v5           #index:I
    .end local v9           #length:I
    .end local v13           #size:J
    .end local v15           #sizeKB:J
    .end local v17           #sizeMB:J
    .end local v21           #title:Ljava/lang/String;
    .end local v22           #titleBuilder:Ljava/lang/StringBuilder;
    .end local v23           #underLineIndex:I
    :cond_3
    :try_start_2
    const-string v24, "failed"

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 355
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 379
    .restart local v5       #index:I
    .restart local v9       #length:I
    .restart local v13       #size:J
    .restart local v15       #sizeKB:J
    .restart local v17       #sizeMB:J
    .restart local v21       #title:Ljava/lang/String;
    .restart local v22       #titleBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #underLineIndex:I
    :cond_4
    :try_start_3
    const-string v24, "-"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 388
    .end local v5           #index:I
    .end local v9           #length:I
    .end local v22           #titleBuilder:Ljava/lang/StringBuilder;
    .end local v23           #underLineIndex:I
    :catch_0
    move-exception v24

    .line 392
    :cond_5
    :goto_7
    :try_start_4
    const-string v24, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->getItemsCounts(Ljava/io/File;)[I

    move-result-object v7

    .line 395
    .local v7, itemCounts:[I
    if-nez v7, :cond_6

    .line 396
    const-string v24, "failed"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const/4 v6, 0x1

    .line 401
    :cond_6
    if-eqz v6, :cond_a

    .line 402
    const v24, 0x7f060009

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 417
    .local v19, summary:Ljava/lang/String;
    :cond_7
    :goto_8
    const-string v24, "summary"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v24, "checked"

    new-instance v25, Ljava/lang/Boolean;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 423
    .end local v6           #isFailed:Z
    .end local v7           #itemCounts:[I
    .end local v8           #lDir:Ljava/io/File;
    .end local v11           #progress:I
    .end local v13           #size:J
    .end local v15           #sizeKB:J
    .end local v17           #sizeMB:J
    .end local v19           #summary:Ljava/lang/String;
    .end local v21           #title:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 383
    .restart local v5       #index:I
    .restart local v6       #isFailed:Z
    .restart local v8       #lDir:Ljava/io/File;
    .restart local v9       #length:I
    .restart local v11       #progress:I
    .restart local v13       #size:J
    .restart local v15       #sizeKB:J
    .restart local v17       #sizeMB:J
    .restart local v21       #title:Ljava/lang/String;
    .restart local v22       #titleBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #underLineIndex:I
    :cond_8
    :try_start_5
    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 420
    .end local v5           #index:I
    .end local v6           #isFailed:Z
    .end local v8           #lDir:Ljava/io/File;
    .end local v9           #length:I
    .end local v11           #progress:I
    .end local v13           #size:J
    .end local v15           #sizeKB:J
    .end local v17           #sizeMB:J
    .end local v21           #title:Ljava/lang/String;
    .end local v22           #titleBuilder:Ljava/lang/StringBuilder;
    .end local v23           #underLineIndex:I
    :catch_1
    move-exception v24

    goto :goto_9

    .line 386
    .restart local v5       #index:I
    .restart local v6       #isFailed:Z
    .restart local v8       #lDir:Ljava/io/File;
    .restart local v9       #length:I
    .restart local v11       #progress:I
    .restart local v13       #size:J
    .restart local v15       #sizeKB:J
    .restart local v17       #sizeMB:J
    .restart local v21       #title:Ljava/lang/String;
    .restart local v22       #titleBuilder:Ljava/lang/StringBuilder;
    .restart local v23       #underLineIndex:I
    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v21

    goto :goto_7

    .line 404
    .end local v5           #index:I
    .end local v9           #length:I
    .end local v22           #titleBuilder:Ljava/lang/StringBuilder;
    .end local v23           #underLineIndex:I
    .restart local v7       #itemCounts:[I
    :cond_a
    const-wide/16 v24, 0x1

    cmp-long v24, v17, v24

    if-lez v24, :cond_c

    .line 405
    :try_start_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "MB,"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 409
    .restart local v19       #summary:Ljava/lang/String;
    :goto_a
    const/16 v24, 0x0

    aget v24, v7, v24

    if-lez v24, :cond_b

    .line 410
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v7, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->SYSDATA_SUMMARY_TAILER:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 412
    :cond_b
    const/16 v24, 0x1

    aget v24, v7, v24

    if-lez v24, :cond_7

    .line 413
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, v7, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->APP_SUMMARY_TAILER:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_8

    .line 407
    .end local v19           #summary:Ljava/lang/String;
    :cond_c
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "KB,"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v19

    .restart local v19       #summary:Ljava/lang/String;
    goto :goto_a

    .line 425
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #isFailed:Z
    .end local v7           #itemCounts:[I
    .end local v8           #lDir:Ljava/io/File;
    .end local v11           #progress:I
    .end local v13           #size:J
    .end local v15           #sizeKB:J
    .end local v17           #sizeMB:J
    .end local v19           #summary:Ljava/lang/String;
    .end local v20           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21           #title:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_0

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->mSortDescComparator:Ljava/util/Comparator;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Hashtable;

    .line 428
    .local v12, recently:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v24, "failed"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-nez v24, :cond_0

    .line 429
    const-string v24, "summary"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "summary"

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const v26, 0x7f06000a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object v0, v12

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected setBackupList()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->prepareBackupList()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    new-instance v0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;

    iget-object v3, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    const v4, 0x7f030008

    new-array v5, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "summary"

    aput-object v2, v5, v1

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;-><init>(Lcom/miui/backup/ui/LocalBackupMain;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;

    .line 328
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/LocalBackupMain;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupListAdapter:Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->notifyDataSetChanged()V

    .line 330
    return-void

    .line 322
    :catch_0
    move-exception v7

    .line 323
    .local v7, e:Landroid/database/SQLException;
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 325
    nop

    :array_0
    .array-data 0x4
        0x16t 0x0t 0x2t 0x1t
        0x10t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method protected setContentBaseDir()V
    .locals 2

    .prologue
    .line 314
    sget-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->CONTENT_BASE_DIR:Ljava/io/File;

    .line 315
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->SYSDATA_SUMMARY_TAILER:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/miui/backup/ui/LocalBackupMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->APP_SUMMARY_TAILER:Ljava/lang/String;

    .line 317
    return-void
.end method

.method protected showBatchDeletePanel(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 525
    if-eqz p1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBatchDeletePanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBottomPanal:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 528
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/backup/ui/LocalBackupMain;->showDeleteOption(Z)V

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBatchDeletePanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain;->mBottomPanal:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-direct {p0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->showDeleteOption(Z)V

    .line 533
    invoke-direct {p0}, Lcom/miui/backup/ui/LocalBackupMain;->resetBackupChecked()V

    goto :goto_0
.end method
