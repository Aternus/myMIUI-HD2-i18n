.class public Lcom/android/fileexplorer/FileCategoryActivity;
.super Landroid/app/Activity;
.source "FileCategoryActivity.java"

# interfaces
.implements Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;
.implements Lcom/android/fileexplorer/IFileInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileCategoryActivity$5;,
        Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;,
        Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;
    }
.end annotation


# static fields
.field private static button2Category:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buttonInstall:Landroid/view/View;

.field private categoryIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

.field private handler:Landroid/os/Handler;

.field private mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

.field private mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

.field private mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

.field private mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

.field private mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

.field private mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

.field private mScannerReceiver:Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

.field onClickListener:Landroid/view/View$OnClickListener;

.field private preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    .line 65
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f08001b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Music:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f08001d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Video:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f08001f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Picture:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f080021

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Theme:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f080023

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f080025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Zip:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f080027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    const v1, 0x7f080029

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->categoryIndex:Ljava/util/HashMap;

    .line 58
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 60
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 226
    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileCategoryActivity$1;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->onClickListener:Landroid/view/View$OnClickListener;

    .line 632
    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$4;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileCategoryActivity$4;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/FileCategoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->onOperationInstall()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity;->button2Category:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/fileexplorer/FileCategoryActivity;Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileCategoryActivity;->onCategorySelected(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/fileexplorer/FileCategoryActivity;)Lcom/android/fileexplorer/FileListCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/fileexplorer/FileCategoryActivity;)Lcom/android/fileexplorer/FavoriteList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/fileexplorer/FileCategoryActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/fileexplorer/FileCategoryActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/fileexplorer/FileCategoryActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/fileexplorer/FileCategoryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->updateUI()V

    return-void
.end method

.method private copyFileInFileView(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 451
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v1

    const-string v2, "FileView"

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/ActivitiesManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileViewActivity;

    .line 456
    .local v0, ac:Lcom/android/fileexplorer/FileViewActivity;
    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewActivity;->copyFile(Ljava/util/ArrayList;)V

    .line 460
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/fileexplorer/Util;->showTab(I)V

    goto :goto_0
.end method

.method private static getCategoryCountId(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)I
    .locals 2
    .parameter "fc"

    .prologue
    .line 482
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 501
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 484
    :pswitch_0
    const v0, 0x7f08001c

    goto :goto_0

    .line 486
    :pswitch_1
    const v0, 0x7f08001e

    goto :goto_0

    .line 488
    :pswitch_2
    const v0, 0x7f080020

    goto :goto_0

    .line 490
    :pswitch_3
    const v0, 0x7f080022

    goto :goto_0

    .line 492
    :pswitch_4
    const v0, 0x7f080024

    goto :goto_0

    .line 494
    :pswitch_5
    const v0, 0x7f080026

    goto :goto_0

    .line 496
    :pswitch_6
    const v0, 0x7f080028

    goto :goto_0

    .line 498
    :pswitch_7
    const v0, 0x7f08002a

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private isHomePage()Z
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCategorySelected(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileCategoryHelper;->getCurCategory()Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileCategoryHelper;->setCurCategory(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)V

    .line 271
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->getRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileCategoryHelper;->getCurCategoryNameResId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->setCurrentPath(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 274
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->buttonInstall:Landroid/view/View;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Apk:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_0
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne p1, v0, :cond_2

    .line 278
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Favorite:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    .line 282
    :goto_1
    return-void

    .line 274
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .line 280
    :cond_2
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Category:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    goto :goto_1
.end method

.method private onOperationInstall()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->showOperationBar(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    .line 264
    .local v0, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-static {v0, p0}, Lcom/android/fileexplorer/PackageInstallHelper;->install(Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 265
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 266
    return-void
.end method

.method private refreshList()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 448
    return-void
.end method

.method private registerScannerReceiver()V
    .locals 3

    .prologue
    .line 108
    new-instance v1, Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;Lcom/android/fileexplorer/FileCategoryActivity$1;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mScannerReceiver:Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mScannerReceiver:Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method private setCategoryBarValue(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V
    .locals 2
    .parameter "f"
    .parameter "size"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    if-nez v0, :cond_0

    .line 550
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/CategoryBar;

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->categoryIndex:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/fileexplorer/CategoryBar;->setCategoryValue(IJ)Z

    .line 553
    return-void
.end method

.method private setCategoryCount(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V
    .locals 3
    .parameter "fc"
    .parameter "count"

    .prologue
    .line 248
    invoke-static {p1}, Lcom/android/fileexplorer/FileCategoryActivity;->getCategoryCountId(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;)I

    move-result v0

    .line 249
    .local v0, id:I
    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setCategorySize(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V
    .locals 4
    .parameter "fc"
    .parameter "size"

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, txtId:I
    const/4 v0, 0x0

    .line 507
    .local v0, resId:I
    sget-object v2, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryHelper$FileCategory:[I

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 542
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 546
    :cond_0
    :goto_1
    return-void

    .line 509
    :pswitch_1
    const v1, 0x7f08002e

    .line 510
    const v0, 0x7f060007

    .line 511
    goto :goto_0

    .line 513
    :pswitch_2
    const v1, 0x7f08002f

    .line 514
    const v0, 0x7f06000c

    .line 515
    goto :goto_0

    .line 517
    :pswitch_3
    const v1, 0x7f080030

    .line 518
    const v0, 0x7f060009

    .line 519
    goto :goto_0

    .line 521
    :pswitch_4
    const v1, 0x7f080031

    .line 522
    const v0, 0x7f06000a

    .line 523
    goto :goto_0

    .line 525
    :pswitch_5
    const v1, 0x7f080032

    .line 526
    const v0, 0x7f060005

    .line 527
    goto :goto_0

    .line 529
    :pswitch_6
    const v1, 0x7f080033

    .line 530
    const v0, 0x7f06000d

    .line 531
    goto :goto_0

    .line 533
    :pswitch_7
    const v1, 0x7f080034

    .line 534
    const v0, 0x7f060004

    .line 535
    goto :goto_0

    .line 537
    :pswitch_8
    const v1, 0x7f080035

    .line 538
    const v0, 0x7f060008

    goto :goto_0

    .line 545
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    goto :goto_1

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private setTextView(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "t"

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    .local v0, text:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method

.method private setupCategoryInfo()V
    .locals 5

    .prologue
    .line 118
    new-instance v2, Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-direct {v2, p0}, Lcom/android/fileexplorer/FileCategoryHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    .line 120
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/CategoryBar;

    iput-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    .line 121
    const/16 v2, 0x8

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 128
    .local v1, imgs:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/CategoryBar;->addCategory(I)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->categoryIndex:Ljava/util/HashMap;

    sget-object v3, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_1
    return-void

    .line 121
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private setupClick()V
    .locals 1

    .prologue
    .line 290
    const v0, 0x7f08001b

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 291
    const v0, 0x7f08001d

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 292
    const v0, 0x7f08001f

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 293
    const v0, 0x7f080021

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 294
    const v0, 0x7f080023

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 295
    const v0, 0x7f080025

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 296
    const v0, 0x7f080027

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 297
    const v0, 0x7f080029

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick(I)V

    .line 298
    return-void
.end method

.method private setupClick(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, button:Landroid/view/View;
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    return-void
.end method

.method private showEmptyView(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 214
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 216
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_0
    return-void

    .line 216
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V
    .locals 7
    .parameter "p"

    .prologue
    const v6, 0x7f080018

    const v3, 0x7f080013

    const v2, 0x7f08000d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-ne v0, p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 185
    invoke-direct {p0, v3, v4}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 186
    invoke-direct {p0, v2, v4}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 187
    const v0, 0x7f080019

    invoke-direct {p0, v0, v4}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 188
    const v0, 0x7f080039

    invoke-direct {p0, v0, v4}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 189
    invoke-direct {p0, v6, v4}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 190
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v0, v4}, Lcom/android/fileexplorer/FavoriteList;->show(Z)V

    .line 191
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    .line 193
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$5;->$SwitchMap$com$android$fileexplorer$FileCategoryActivity$ViewPage:[I

    invoke-virtual {p1}, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 195
    :pswitch_0
    const v0, 0x7f080019

    invoke-direct {p0, v0, v5}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-direct {p0, v2, v5}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 199
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v0, v5}, Lcom/android/fileexplorer/FavoriteList;->show(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FavoriteList;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move v0, v5

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    .line 203
    :pswitch_2
    invoke-direct {p0, v2, v5}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 204
    invoke-direct {p0, v3, v5}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    .line 205
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v5

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_2

    .line 208
    :pswitch_3
    invoke-direct {p0, v6, v5}, Lcom/android/fileexplorer/FileCategoryActivity;->showView(IZ)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showView(IZ)V
    .locals 2
    .parameter "id"
    .parameter "show"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 222
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_0
    return-void

    .line 222
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private startMoveToFileView(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 464
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 474
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v1

    const-string v2, "FileView"

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/ActivitiesManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileViewActivity;

    .line 469
    .local v0, ac:Lcom/android/fileexplorer/FileViewActivity;
    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewActivity;->moveToFile(Ljava/util/ArrayList;)V

    .line 473
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/fileexplorer/Util;->showTab(I)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 575
    invoke-static {}, Lcom/android/fileexplorer/Util;->isSDCardReady()Z

    move-result v1

    .line 576
    .local v1, sdCardReady:Z
    if-eqz v1, :cond_5

    .line 577
    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v4, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-eq v3, v4, :cond_3

    .line 578
    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    .line 579
    sget-object v3, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    iput-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 584
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->refreshCategoryInfo()V

    .line 586
    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 589
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v3

    const-string v4, "FileView"

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/ActivitiesManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileViewActivity;

    .line 591
    .local v0, ac:Lcom/android/fileexplorer/FileViewActivity;
    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewActivity;->refresh()V

    .line 601
    .end local v0           #ac:Lcom/android/fileexplorer/FileViewActivity;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v3

    const-string v4, "FileExplorerTab"

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/ActivitiesManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/FileExplorerTabActivity;

    .line 603
    .local v2, tabAc:Lcom/android/fileexplorer/FileExplorerTabActivity;
    if-eqz v2, :cond_2

    .line 604
    invoke-virtual {v2, v5}, Lcom/android/fileexplorer/FileExplorerTabActivity;->showTabWidget(I)V

    .line 607
    :cond_2
    return-void

    .line 580
    .end local v2           #tabAc:Lcom/android/fileexplorer/FileExplorerTabActivity;
    :cond_3
    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v4, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Invalid:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v4, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-ne v3, v4, :cond_0

    .line 581
    :cond_4
    sget-object v3, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    goto :goto_0

    .line 596
    :cond_5
    invoke-static {v5}, Lcom/android/fileexplorer/Util;->showTab(I)V

    .line 597
    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    iput-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->preViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    .line 598
    sget-object v3, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v3}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    goto :goto_1
.end method


# virtual methods
.method public addSingleFile(Lcom/android/fileexplorer/FileInfo;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->refreshList()V

    .line 424
    return-void
.end method

.method public getAllFiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->getAllFiles()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 350
    return-object p0
.end method

.method public getDisplayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileIconHelper()Lcom/android/fileexplorer/FileIconHelper;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    return-object v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/FileInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileListCursorAdapter;->getFileItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "displayPath"

    .prologue
    .line 406
    const-string v0, ""

    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized notifyFileChanged()V
    .locals 4

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 615
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    .line 616
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/fileexplorer/FileCategoryActivity$3;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileCategoryActivity$3;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->isHomePage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->NoSD:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-ne v0, v1, :cond_1

    .line 303
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onBackPressed()Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->requestWindowFeature(I)Z

    .line 81
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->setContentView(I)V

    .line 83
    new-instance v1, Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileViewInteractionHub;-><init>(Lcom/android/fileexplorer/IFileInteractionListener;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    .line 84
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    sget-object v2, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->View:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setMode(Lcom/android/fileexplorer/FileViewInteractionHub$Mode;)V

    .line 85
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setRootPath(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/android/fileexplorer/FileIconHelper;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileIconHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    .line 87
    new-instance v2, Lcom/android/fileexplorer/FavoriteList;

    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    invoke-direct {v2, p0, v1, p0, v3}, Lcom/android/fileexplorer/FavoriteList;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/android/fileexplorer/FavoriteDatabaseHelper$FavoriteDatabaseListener;Lcom/android/fileexplorer/FileIconHelper;)V

    iput-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    .line 88
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FavoriteList;->initList()V

    .line 89
    new-instance v1, Lcom/android/fileexplorer/FileListCursorAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    iget-object v4, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileIconHelper:Lcom/android/fileexplorer/FileIconHelper;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/fileexplorer/FileListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileIconHelper;)V

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    .line 91
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 92
    .local v0, fileListView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupClick()V

    .line 96
    const v1, 0x7f08003b

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/FileCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->buttonInstall:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->buttonInstall:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->buttonInstall:Landroid/view/View;

    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-static {}, Lcom/android/fileexplorer/ActivitiesManager;->getInstance()Lcom/android/fileexplorer/ActivitiesManager;

    move-result-object v1

    const-string v2, "FileCategory"

    invoke-virtual {v1, v2, p0}, Lcom/android/fileexplorer/ActivitiesManager;->registerActivity(Ljava/lang/String;Landroid/app/Activity;)V

    .line 101
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->setupCategoryInfo()V

    .line 102
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->updateUI()V

    .line 104
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->registerScannerReceiver()V

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Category:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->curViewPage:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    sget-object v1, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Favorite:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    if-eq v0, v1, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/android/fileexplorer/FileCategoryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileCategoryActivity$2;-><init>(Lcom/android/fileexplorer/FileCategoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 556
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 557
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mScannerReceiver:Lcom/android/fileexplorer/FileCategoryActivity$ScannerReceiver;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    return-void
.end method

.method public onFavoriteDatabaseChanged()V
    .locals 3

    .prologue
    .line 647
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    iget-object v1, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v1}, Lcom/android/fileexplorer/FavoriteList;->getCount()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryCount(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 648
    return-void
.end method

.method public onNavigation(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 411
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public onOperation(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 379
    sparse-switch p1, :sswitch_data_0

    .line 394
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    .line 382
    :sswitch_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->copyFileInFileView(Ljava/util/ArrayList;)V

    .line 383
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 396
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    :sswitch_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->startMoveToFileView(Ljava/util/ArrayList;)V

    .line 388
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    goto :goto_1

    .line 391
    :sswitch_2
    sget-object v0, Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;->Home:Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileCategoryActivity;->showPage(Lcom/android/fileexplorer/FileCategoryActivity$ViewPage;)V

    goto :goto_1

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x68 -> :sswitch_0
        0x6a -> :sswitch_1
        0x7f08003c -> :sswitch_0
        0x7f08003d -> :sswitch_1
    .end sparse-switch
.end method

.method public onPick(Lcom/android/fileexplorer/FileInfo;)V
    .locals 0
    .parameter "f"

    .prologue
    .line 370
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->isHomePage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileCategoryHelper;->getCurCategory()Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v0

    sget-object v1, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne v0, v1, :cond_1

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileViewInteractionHub:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRefreshFileList(Ljava/lang/String;Lcom/android/fileexplorer/FileSortHelper;)Z
    .locals 6
    .parameter "path"
    .parameter "sort"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v2}, Lcom/android/fileexplorer/FileCategoryHelper;->getCurCategory()Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    move-result-object v1

    .line 333
    .local v1, curCategory:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->All:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne v1, v2, :cond_1

    :cond_0
    move v2, v4

    .line 340
    :goto_0
    return v2

    .line 336
    :cond_1
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {p2}, Lcom/android/fileexplorer/FileSortHelper;->getSortMethod()Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/fileexplorer/FileCategoryHelper;->query(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;Lcom/android/fileexplorer/FileSortHelper$SortMethod;)Landroid/database/Cursor;

    move-result-object v0

    .line 337
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v5

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/FileCategoryActivity;->showEmptyView(Z)V

    .line 338
    iget-object v2, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mAdapter:Lcom/android/fileexplorer/FileListCursorAdapter;

    invoke-virtual {v2, v0}, Lcom/android/fileexplorer/FileListCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    move v2, v5

    .line 340
    goto :goto_0

    :cond_3
    move v2, v4

    .line 337
    goto :goto_1
.end method

.method public refreshCategoryInfo()V
    .locals 14

    .prologue
    .line 138
    invoke-static {}, Lcom/android/fileexplorer/Util;->getSDCardInfo()Lcom/android/fileexplorer/Util$SDCardInfo;

    move-result-object v7

    .line 139
    .local v7, sdCardInfo:Lcom/android/fileexplorer/Util$SDCardInfo;
    if-eqz v7, :cond_0

    .line 140
    iget-object v10, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    iget-wide v11, v7, Lcom/android/fileexplorer/Util$SDCardInfo;->total:J

    invoke-virtual {v10, v11, v12}, Lcom/android/fileexplorer/CategoryBar;->setFullValue(J)V

    .line 141
    const v10, 0x7f08002b

    iget-wide v11, v7, Lcom/android/fileexplorer/Util$SDCardInfo;->total:J

    invoke-static {v11, v12}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/fileexplorer/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    .line 142
    const v10, 0x7f08002c

    iget-wide v11, v7, Lcom/android/fileexplorer/Util$SDCardInfo;->free:J

    invoke-static {v11, v12}, Lcom/android/fileexplorer/Util;->convertStorage(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/fileexplorer/FileCategoryActivity;->setTextView(ILjava/lang/String;)V

    .line 145
    :cond_0
    iget-object v10, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v10}, Lcom/android/fileexplorer/FileCategoryHelper;->refreshCategoryInfo()V

    .line 148
    const-wide/16 v8, 0x0

    .line 149
    .local v8, size:J
    sget-object v0, Lcom/android/fileexplorer/FileCategoryHelper;->sCategories:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    .local v0, arr$:[Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 150
    .local v2, fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    iget-object v10, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFileCagetoryHelper:Lcom/android/fileexplorer/FileCategoryHelper;

    invoke-virtual {v10}, Lcom/android/fileexplorer/FileCategoryHelper;->getCategoryInfos()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;

    .line 151
    .local v1, categoryInfo:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    iget-wide v10, v1, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->count:J

    invoke-direct {p0, v2, v10, v11}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryCount(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 154
    sget-object v10, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    if-ne v2, v10, :cond_1

    .line 149
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_1
    iget-wide v10, v1, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->size:J

    invoke-direct {p0, v2, v10, v11}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategorySize(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 158
    iget-wide v10, v1, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->size:J

    invoke-direct {p0, v2, v10, v11}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryBarValue(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 159
    iget-wide v10, v1, Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;->size:J

    add-long/2addr v8, v10

    goto :goto_1

    .line 162
    .end local v1           #categoryInfo:Lcom/android/fileexplorer/FileCategoryHelper$CategoryInfo;
    .end local v2           #fc:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;
    :cond_2
    if-eqz v7, :cond_3

    .line 163
    iget-wide v10, v7, Lcom/android/fileexplorer/Util$SDCardInfo;->total:J

    iget-wide v12, v7, Lcom/android/fileexplorer/Util$SDCardInfo;->free:J

    sub-long/2addr v10, v12

    sub-long v5, v10, v8

    .line 164
    .local v5, otherSize:J
    sget-object v10, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v10, v5, v6}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategorySize(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 165
    sget-object v10, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Other:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    invoke-direct {p0, v10, v5, v6}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryBarValue(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 168
    .end local v5           #otherSize:J
    :cond_3
    sget-object v10, Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;->Favorite:Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;

    iget-object v11, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mFavoriteList:Lcom/android/fileexplorer/FavoriteList;

    invoke-virtual {v11}, Lcom/android/fileexplorer/FavoriteList;->getCount()J

    move-result-wide v11

    invoke-direct {p0, v10, v11, v12}, Lcom/android/fileexplorer/FileCategoryActivity;->setCategoryCount(Lcom/android/fileexplorer/FileCategoryHelper$FileCategory;J)V

    .line 170
    iget-object v10, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    invoke-virtual {v10}, Lcom/android/fileexplorer/CategoryBar;->getVisibility()I

    move-result v10

    if-nez v10, :cond_4

    .line 171
    iget-object v10, p0, Lcom/android/fileexplorer/FileCategoryActivity;->mCategoryBar:Lcom/android/fileexplorer/CategoryBar;

    invoke-virtual {v10}, Lcom/android/fileexplorer/CategoryBar;->startAnimation()V

    .line 173
    :cond_4
    return-void
.end method

.method public shouldHideMenu(I)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 417
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    const/16 v0, 0x75

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sortCurrentList(Lcom/android/fileexplorer/FileSortHelper;)V
    .locals 0
    .parameter "sort"

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/fileexplorer/FileCategoryActivity;->refreshList()V

    .line 444
    return-void
.end method
