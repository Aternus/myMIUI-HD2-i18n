.class public Lcom/android/fileexplorer/FileViewInteractionHub;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/FileViewInteractionHub$Mode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;


# instance fields
.field private buttonClick:Landroid/view/View$OnClickListener;

.field private mCheckedFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/fileexplorer/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmOperationBar:Landroid/view/View;

.field private mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

.field private mCurrentPath:Ljava/lang/String;

.field private mDropdownNavigation:Landroid/view/View;

.field private mFileListView:Landroid/widget/ListView;

.field private mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

.field private mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

.field private mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

.field private mListViewContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mListViewContextMenuSelectedItem:I

.field private mNavigationBar:Landroid/view/View;

.field private mNavigationBarText:Landroid/widget/TextView;

.field private mNavigationBarUpDownArrow:Landroid/widget/ImageView;

.field private mOperationBar:Landroid/view/View;

.field private mRoot:Ljava/lang/String;

.field private mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

.field private menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private navigationClick:Landroid/view/View$OnClickListener;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/fileexplorer/FileViewInteractionHub;->$assertionsDisabled:Z

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/fileexplorer/FileViewInteractionHub;->ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;

    return-void

    :cond_0
    move v0, v1

    .line 44
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/fileexplorer/IFileInteractionListener;)V
    .locals 1
    .parameter "fileViewListener"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Lcom/android/fileexplorer/FileViewInteractionHub$2;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$2;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->buttonClick:Landroid/view/View$OnClickListener;

    .line 293
    new-instance v0, Lcom/android/fileexplorer/FileViewInteractionHub$3;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$3;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->navigationClick:Landroid/view/View$OnClickListener;

    .line 643
    new-instance v0, Lcom/android/fileexplorer/FileViewInteractionHub$8;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$8;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 723
    new-instance v0, Lcom/android/fileexplorer/FileViewInteractionHub$10;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$10;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 77
    sget-boolean v0, Lcom/android/fileexplorer/FileViewInteractionHub;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    .line 79
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->setup()V

    .line 80
    new-instance v0, Lcom/android/fileexplorer/FileOperationHelper;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/FileOperationHelper;-><init>(Lcom/android/fileexplorer/FileOperationHelper$IOperationProgressListener;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    .line 81
    new-instance v0, Lcom/android/fileexplorer/FileSortHelper;

    invoke-direct {v0}, Lcom/android/fileexplorer/FileSortHelper;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/fileexplorer/FileViewInteractionHub;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/fileexplorer/FileViewInteractionHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/FileOperationHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/fileexplorer/FileViewInteractionHub;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/fileexplorer/FileViewInteractionHub;Landroid/view/Menu;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/fileexplorer/FileViewInteractionHub;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationReferesh()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationShowSysFiles()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationFavorite()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationPaste()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/fileexplorer/FileViewInteractionHub;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/fileexplorer/FileViewInteractionHub;)Lcom/android/fileexplorer/IFileInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCopy()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationMove()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationSelectAllOrCancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/fileexplorer/FileViewInteractionHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->doCreateFolder(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/FileViewInteractionHub;->doRename(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addMenuItem(Landroid/view/Menu;III)V
    .locals 6
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"

    .prologue
    .line 843
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 844
    return-void
.end method

.method private addMenuItem(Landroid/view/Menu;IIII)V
    .locals 3
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "string"
    .parameter "iconRes"

    .prologue
    .line 847
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v1, p2}, Lcom/android/fileexplorer/IFileInteractionListener;->shouldHideMenu(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, p3, p4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->menuItemClick:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 849
    .local v0, item:Landroid/view/MenuItem;
    if-lez p5, :cond_0

    .line 850
    invoke-interface {v0, p5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 853
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method private doCreateFolder(Ljava/lang/String;)Z
    .locals 4
    .parameter "text"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 391
    :goto_0
    return v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/FileOperationHelper;->CreateFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/fileexplorer/Util;->makePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/Util;->GetFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/FileInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->addSingleFile(Lcom/android/fileexplorer/FileInfo;)V

    .line 384
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    move v0, v2

    .line 391
    goto :goto_0

    .line 386
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    .line 388
    goto :goto_0
.end method

.method private doOperationDelete(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 575
    .local p1, selectedFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000e

    new-instance v3, Lcom/android/fileexplorer/FileViewInteractionHub$7;

    invoke-direct {v3, p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub$7;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060002

    new-instance v3, Lcom/android/fileexplorer/FileViewInteractionHub$6;

    invoke-direct {v3, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$6;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 590
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 591
    return-void
.end method

.method private doRename(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z
    .locals 4
    .parameter "f"
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 523
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 535
    :goto_0
    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/FileOperationHelper;->Rename(Lcom/android/fileexplorer/FileInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iput-object p2, p1, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    .line 528
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/IFileInteractionListener;->onDataChanged()V

    .line 535
    const/4 v0, 0x1

    goto :goto_0

    .line 530
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    .line 532
    goto :goto_0
.end method

.method private getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .parameter "name"

    .prologue
    .line 951
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/IFileInteractionListener;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedAll()Z
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0}, Lcom/android/fileexplorer/IFileInteractionListener;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v1}, Lcom/android/fileexplorer/IFileInteractionListener;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectingFiles()Z
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyFileSystemChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "path"

    .prologue
    const-string v4, "FileViewInteractionHub"

    .line 539
    if-nez p1, :cond_0

    .line 554
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.providers.media"

    const-string v3, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 547
    const-string v2, "FileViewInteractionHub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directory changed, send broadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_1
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 549
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 551
    const-string v2, "FileViewInteractionHub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file changed, send broadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onOperationCopy()V
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationCopy(Ljava/util/ArrayList;)V

    .line 407
    return-void
.end method

.method private onOperationFavorite()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 248
    .local v0, path:Ljava/lang/String;
    iget v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v1

    iget-object v0, v1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    .line 252
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationFavorite(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private onOperationFavorite(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 256
    invoke-static {}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getInstance()Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    move-result-object v0

    .line 257
    .local v0, databaseHelper:Lcom/android/fileexplorer/FavoriteDatabaseHelper;
    if-eqz v0, :cond_0

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, stringId:I
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->isFavorite(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->delete(Ljava/lang/String;)V

    .line 261
    const v1, 0x7f060043

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 269
    .end local v1           #stringId:I
    :cond_0
    return-void

    .line 263
    .restart local v1       #stringId:I
    :cond_1
    invoke-static {p1}, Lcom/android/fileexplorer/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->insert(Ljava/lang/String;Ljava/lang/String;)J

    .line 264
    const/high16 v1, 0x7f06

    goto :goto_0
.end method

.method private onOperationMove()V
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fileexplorer/FileOperationHelper;->StartMove(Ljava/util/ArrayList;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 430
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    .line 431
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, confirmButton:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 434
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 435
    return-void
.end method

.method private onOperationPaste()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileOperationHelper;->Paste(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->showProgress(Ljava/lang/String;)V

    .line 425
    :cond_0
    return-void
.end method

.method private onOperationReferesh()V
    .locals 0

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 243
    return-void
.end method

.method private onOperationSelectAllOrCancel()V
    .locals 4

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectedAll()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 279
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :goto_0
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateOperationButtonStatus()V

    .line 291
    return-void

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getAllFiles()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 283
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    .line 284
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v2}, Lcom/android/fileexplorer/IFileInteractionListener;->onDataChanged()V

    .line 287
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onOperationShowSysFiles()V
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/Settings;->getShowDotAndHiddenFiles()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/Settings;->setShowDotAndHiddenFiles(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 274
    return-void

    .line 272
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setup()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupNaivgationBar()V

    .line 155
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupFileListView()V

    .line 156
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupOperationPane()V

    .line 157
    return-void
.end method

.method private setupClick(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "id"

    .prologue
    .line 195
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 196
    .local v0, button:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->buttonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    :cond_0
    return-void

    .line 195
    .end local v0           #button:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v1, p2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private setupFileListView()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v1, 0x7f080013

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    .line 686
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 687
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 688
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/fileexplorer/FileViewInteractionHub$9;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$9;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 694
    return-void
.end method

.method private setupNaivgationBar()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f08000d

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBar:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f080010

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBarText:Landroid/widget/TextView;

    .line 162
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f080011

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    .line 163
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f08000e

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, clickable:Landroid/view/View;
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->buttonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f080016

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    .line 168
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBar:Landroid/view/View;

    const v2, 0x7f080012

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 169
    return-void
.end method

.method private setupOperationPane()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f080039

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    .line 175
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const v2, 0x7f08003c

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 176
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const v2, 0x7f08003d

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 177
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const v2, 0x7f08003e

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 178
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const v2, 0x7f08003a

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 179
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const v2, 0x7f08003f

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 181
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    check-cast v0, Landroid/widget/ScreenView;

    .line 182
    .local v0, sv:Landroid/widget/ScreenView;
    sget-object v1, Lcom/android/fileexplorer/FileViewInteractionHub;->ARROW_INDICATOR_MARGIN:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setOverScrollRatio(F)V

    .line 185
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v2, 0x7f080036

    invoke-interface {v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    .line 186
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v2, 0x7f080037

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 187
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v2, 0x7f080038

    invoke-direct {p0, v1, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->setupClick(Landroid/view/View;I)V

    .line 188
    return-void
.end method

.method private showConfirmOperationBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showDropdownNavigation(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBarUpDownArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x10800b3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1066
    return-void

    .line 1062
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 1063
    :cond_1
    const v1, 0x10800a2

    goto :goto_1
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 85
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v1}, Lcom/android/fileexplorer/IFileInteractionListener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    .line 87
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 91
    return-void
.end method

.method private updateConfirmButtons()V
    .locals 4

    .prologue
    .line 451
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 464
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 455
    .local v0, confirmButton:Landroid/widget/Button;
    const v1, 0x7f060039

    .line 456
    .local v1, text:I
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectingFiles()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 458
    const v1, 0x7f060040

    .line 463
    :cond_1
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 457
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 459
    :cond_3
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/FileOperationHelper;->canMove(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateMenuItems(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x10

    .line 861
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectedAll()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f06002c

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 863
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    sget-object v2, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->Pick:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 865
    const/16 v0, 0x75

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_0

    .line 867
    invoke-static {}, Lcom/android/fileexplorer/Settings;->instance()Lcom/android/fileexplorer/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/Settings;->getShowDotAndHiddenFiles()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f060034

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 871
    :cond_0
    invoke-static {}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->getInstance()Lcom/android/fileexplorer/FavoriteDatabaseHelper;

    move-result-object v0

    .line 872
    if-eqz v0, :cond_1

    .line 873
    const/16 v1, 0x65

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 874
    if-eqz v1, :cond_1

    .line 875
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/fileexplorer/FavoriteDatabaseHelper;->isFavorite(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f060042

    :goto_3
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 880
    :cond_1
    return-void

    .line 861
    :cond_2
    const v1, 0x7f06003f

    goto :goto_0

    .line 863
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 867
    :cond_4
    const v1, 0x7f060041

    goto :goto_2

    .line 875
    :cond_5
    const v0, 0x7f060033

    goto :goto_3
.end method

.method private updateNavigationPane()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 467
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v3, 0x7f080012

    invoke-interface {v2, v3}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, upLevel:Landroid/view/View;
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const v3, 0x7f080011

    invoke-interface {v2, v3}, Lcom/android/fileexplorer/IFileInteractionListener;->getViewById(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, arrow:Landroid/view/View;
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mNavigationBarText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/fileexplorer/IFileInteractionListener;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    return-void

    .end local v0           #arrow:Landroid/view/View;
    :cond_0
    move v2, v4

    .line 468
    goto :goto_0

    .restart local v0       #arrow:Landroid/view/View;
    :cond_1
    move v2, v4

    .line 471
    goto :goto_1
.end method

.method private updateOperationButtonStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1002
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1003
    if-eqz v0, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectedAll()Z

    move-result v1

    .line 1005
    if-eqz v1, :cond_1

    const v2, 0x7f06002b

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1006
    if-eqz v1, :cond_2

    const v1, 0x7f020045

    :goto_1
    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1009
    :cond_0
    return-void

    .line 1005
    :cond_1
    const v2, 0x7f06003f

    goto :goto_0

    .line 1006
    :cond_2
    const v1, 0x7f020051

    goto :goto_1
.end method

.method private viewFile(Lcom/android/fileexplorer/FileInfo;)V
    .locals 4
    .parameter "lFileInfo"

    .prologue
    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v1}, Lcom/android/fileexplorer/IFileInteractionListener;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/fileexplorer/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/fileexplorer/IntentBuilder;->viewFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1032
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "FileViewInteractionHub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to view file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public canPaste()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->canPaste()Z

    move-result v0

    return v0
.end method

.method public canShowCheckBox()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearSelection()V
    .locals 3

    .prologue
    .line 1016
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1017
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/FileInfo;

    .line 1018
    .local v0, f:Lcom/android/fileexplorer/FileInfo;
    if-eqz v0, :cond_0

    .line 1021
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    goto :goto_0

    .line 1023
    .end local v0           #f:Lcom/android/fileexplorer/FileInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1024
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v2}, Lcom/android/fileexplorer/IFileInteractionListener;->onDataChanged()V

    .line 1026
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Lcom/android/fileexplorer/FileInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcom/android/fileexplorer/FileViewInteractionHub$Mode;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    return-object v0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedFileList()Ljava/util/ArrayList;
    .locals 3
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
    .line 106
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    .line 108
    .local v1, pos:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v2, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    .line 110
    .local v0, item:Lcom/android/fileexplorer/FileInfo;
    if-eqz v0, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v0           #item:Lcom/android/fileexplorer/FileInfo;
    .end local v1           #pos:I
    :cond_0
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    return-object v2
.end method

.method public isFileSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "filePath"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileOperationHelper;->isFileSelected(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInSelection()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMoveState()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->isMoveState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFileFrom(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 1053
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileOperationHelper;->StartMove(Ljava/util/ArrayList;)V

    .line 1054
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    .line 1056
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateConfirmButtons()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 1059
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1037
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1039
    :cond_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isInSelection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1040
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 1041
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1042
    :cond_2
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationUpLevel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCheckItem(Lcom/android/fileexplorer/FileInfo;Landroid/view/View;)Z
    .locals 8
    .parameter "f"
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 956
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isMoveState()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    .line 994
    :goto_0
    return v4

    .line 959
    :cond_0
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectingFiles()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v4, :cond_1

    move v4, v6

    .line 960
    goto :goto_0

    .line 962
    :cond_1
    iget-boolean v4, p1, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-eqz v4, :cond_3

    .line 963
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :goto_1
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectingFiles()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 969
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateConfirmButtons()V

    :cond_2
    :goto_2
    move v4, v7

    .line 994
    goto :goto_0

    .line 965
    :cond_3
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 971
    :cond_4
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 972
    .local v3, position:I
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 973
    .local v1, firstVisible:I
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 975
    .local v2, lastVisible:I
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    iget-object v5, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 976
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateOperationButtonStatus()V

    .line 979
    sub-int v4, v3, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v7, :cond_2

    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 981
    add-int/lit8 v4, v1, 0x2

    sub-int v5, v3, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v0, v4, v5

    .line 983
    .local v0, adjustedPosition:I
    if-ge v0, v2, :cond_2

    .line 984
    iget-object v4, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/fileexplorer/FileViewInteractionHub$11;

    invoke-direct {v5, p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub$11;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 975
    .end local v0           #adjustedPosition:I
    :cond_5
    const/16 v5, 0x8

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 810
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 811
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 812
    invoke-direct {p0, v3}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    .line 817
    const/16 v2, 0x10

    const v4, 0x7f06003f

    const v5, 0x7f020033

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 820
    const v0, 0x7f060020

    invoke-interface {p1, v3, v7, v6, v0}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    const v1, 0x7f020035

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 822
    const/16 v1, 0xb

    const v2, 0x7f060022

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    .line 823
    const/16 v1, 0xc

    const v2, 0x7f060023

    invoke-direct {p0, v0, v1, v6, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    .line 824
    const/16 v1, 0xd

    const/4 v2, 0x2

    const v4, 0x7f060021

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    .line 825
    const/16 v1, 0xe

    const v2, 0x7f060024

    invoke-direct {p0, v0, v1, v7, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;III)V

    .line 826
    invoke-interface {v0, v3, v6, v6}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 827
    invoke-interface {v0, v3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 831
    const/16 v2, 0x64

    const v4, 0x7f06002e

    const v5, 0x7f020032

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 833
    const/16 v2, 0x65

    const/4 v3, 0x4

    const v4, 0x7f060033

    const v5, 0x7f020031

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 835
    const/16 v2, 0x75

    const/4 v3, 0x5

    const v4, 0x7f060041

    const v5, 0x7f020034

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 837
    const/16 v2, 0xf

    const/4 v3, 0x6

    const v4, 0x7f06003b

    const v5, 0x1080414

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->addMenuItem(Landroid/view/Menu;IIII)V

    .line 839
    return v6
.end method

.method public onFileChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 1070
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->notifyFileSystemChanged(Ljava/lang/String;)V

    .line 1071
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->progressDialog:Landroid/app/ProgressDialog;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    new-instance v1, Lcom/android/fileexplorer/FileViewInteractionHub$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$1;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x0

    .line 895
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v0, p3}, Lcom/android/fileexplorer/IFileInteractionListener;->getItem(I)Lcom/android/fileexplorer/FileInfo;

    move-result-object v0

    .line 896
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    .line 898
    if-nez v0, :cond_0

    .line 899
    const-string v0, "FileViewInteractionHub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file does not exist on position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_0
    return-void

    .line 903
    :cond_0
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isInSelection()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 904
    iget-boolean v1, v0, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    .line 905
    iget-boolean v2, v0, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    if-eqz v2, :cond_2

    .line 906
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 907
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 912
    :goto_2
    const v2, 0x7f08000b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const v2, 0x10800da

    :goto_3
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 915
    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v0, Lcom/android/fileexplorer/FileInfo;->Selected:Z

    goto :goto_0

    .line 907
    :cond_1
    const/16 v3, 0x8

    goto :goto_1

    .line 910
    :cond_2
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 912
    :cond_3
    const v2, 0x10800df

    goto :goto_3

    :cond_4
    move v1, v4

    .line 915
    goto :goto_4

    .line 919
    :cond_5
    iget-boolean v1, v0, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-nez v1, :cond_7

    .line 920
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    sget-object v2, Lcom/android/fileexplorer/FileViewInteractionHub$Mode;->Pick:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    if-ne v1, v2, :cond_6

    .line 921
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v1, v0}, Lcom/android/fileexplorer/IFileInteractionListener;->onPick(Lcom/android/fileexplorer/FileInfo;)V

    goto :goto_0

    .line 923
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->viewFile(Lcom/android/fileexplorer/FileInfo;)V

    goto :goto_0

    .line 928
    :cond_7
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 930
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    goto :goto_0
.end method

.method protected onNavigationBarClick()V
    .locals 14

    .prologue
    .line 310
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    .line 311
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mDropdownNavigation:Landroid/view/View;

    const v12, 0x7f080017

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 314
    .local v4, list:Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 315
    const/4 v7, 0x0

    .line 316
    .local v7, pos:I
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v12, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-interface {v11, v12}, Lcom/android/fileexplorer/IFileInteractionListener;->getDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, displayPath:Ljava/lang/String;
    const/4 v8, 0x1

    .line 318
    .local v8, root:Z
    const/4 v3, 0x0

    .line 319
    .local v3, left:I
    :goto_1
    const/4 v11, -0x1

    if-eq v7, v11, :cond_2

    .line 320
    const-string v11, "/"

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 321
    .local v1, end:I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 344
    .end local v1           #end:I
    :cond_2
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-lez v11, :cond_0

    .line 345
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    goto :goto_0

    .line 324
    .restart local v1       #end:I
    :cond_3
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v11}, Lcom/android/fileexplorer/IFileInteractionListener;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const/high16 v12, 0x7f03

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 327
    .local v6, listItem:Landroid/view/View;
    const/high16 v11, 0x7f08

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 328
    .local v5, listContent:Landroid/view/View;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v3, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 329
    add-int/lit8 v3, v3, 0x14

    .line 330
    const v11, 0x7f080001

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 332
    .local v2, img:Landroid/widget/ImageView;
    if-eqz v8, :cond_4

    const v11, 0x7f02001d

    :goto_2
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    const/4 v8, 0x0

    .line 335
    const v11, 0x7f080002

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 336
    .local v10, text:Landroid/widget/TextView;
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 337
    .local v9, substring:Ljava/lang/String;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->navigationClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v11, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/fileexplorer/IFileInteractionListener;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 341
    add-int/lit8 v7, v1, 0x1

    .line 342
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 332
    .end local v9           #substring:Ljava/lang/String;
    .end local v10           #text:Landroid/widget/TextView;
    :cond_4
    const v11, 0x7f02001c

    goto :goto_2
.end method

.method public onOperationButtonCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 624
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->clear()V

    .line 625
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    .line 626
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectingFiles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;->selected(Ljava/util/ArrayList;)V

    .line 628
    iput-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    .line 629
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 637
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->isMoveState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileOperationHelper;->EndMove(Ljava/lang/String;)Z

    .line 633
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    goto :goto_0
.end method

.method public onOperationButtonConfirm()V
    .locals 2

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->isSelectingFiles()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCheckedFileNameList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;->selected(Ljava/util/ArrayList;)V

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mSelectFilesCallback:Lcom/android/fileexplorer/FileViewActivity$SelectFilesCallback;

    .line 613
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileOperationHelper;->isMoveState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/FileOperationHelper;->EndMove(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_2
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->onOperationPaste()V

    goto :goto_0
.end method

.method public onOperationCopy(Ljava/util/ArrayList;)V
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
    .line 410
    .local p1, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileOperationHelper:Lcom/android/fileexplorer/FileOperationHelper;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/FileOperationHelper;->Copy(Ljava/util/ArrayList;)V

    .line 411
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 412
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 414
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/FileViewInteractionHub;->showConfirmOperationBar(Z)V

    .line 415
    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mConfirmOperationBar:Landroid/view/View;

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, confirmButton:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 418
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 419
    return-void
.end method

.method public onOperationCreateFolder()V
    .locals 6

    .prologue
    .line 366
    new-instance v0, Lcom/android/fileexplorer/TextInputDialog;

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06002f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060025

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/fileexplorer/FileViewInteractionHub$4;

    invoke-direct {v5, p0}, Lcom/android/fileexplorer/FileViewInteractionHub$4;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;)V

    .line 375
    .local v0, dialog:Lcom/android/fileexplorer/TextInputDialog;
    invoke-virtual {v0}, Lcom/android/fileexplorer/TextInputDialog;->show()V

    .line 376
    return-void
.end method

.method public onOperationDelete()V
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/FileViewInteractionHub;->doOperationDelete(Ljava/util/ArrayList;)V

    .line 562
    return-void
.end method

.method public onOperationInfo()V
    .locals 4

    .prologue
    .line 594
    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 596
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/FileInfo;

    .line 600
    .local v1, file:Lcom/android/fileexplorer/FileInfo;
    if-eqz v1, :cond_0

    .line 603
    new-instance v0, Lcom/android/fileexplorer/InformationDialog;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v2}, Lcom/android/fileexplorer/IFileInteractionListener;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v3}, Lcom/android/fileexplorer/IFileInteractionListener;->getFileIconHelper()Lcom/android/fileexplorer/FileIconHelper;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/fileexplorer/InformationDialog;-><init>(Landroid/content/Context;Lcom/android/fileexplorer/FileInfo;Lcom/android/fileexplorer/FileIconHelper;)V

    .line 605
    .local v0, dialog:Lcom/android/fileexplorer/InformationDialog;
    invoke-virtual {v0}, Lcom/android/fileexplorer/InformationDialog;->show()V

    .line 606
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    goto :goto_0
.end method

.method public onOperationRename()V
    .locals 8

    .prologue
    .line 500
    iget v7, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mListViewContextMenuSelectedItem:I

    .line 501
    .local v7, pos:I
    const/4 v1, -0x1

    if-ne v7, v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/FileInfo;

    .line 508
    .local v6, f:Lcom/android/fileexplorer/FileInfo;
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 510
    new-instance v0, Lcom/android/fileexplorer/TextInputDialog;

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06003d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06003e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/android/fileexplorer/FileInfo;->fileName:Ljava/lang/String;

    new-instance v5, Lcom/android/fileexplorer/FileViewInteractionHub$5;

    invoke-direct {v5, p0, v6}, Lcom/android/fileexplorer/FileViewInteractionHub$5;-><init>(Lcom/android/fileexplorer/FileViewInteractionHub;Lcom/android/fileexplorer/FileInfo;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/fileexplorer/TextInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/fileexplorer/TextInputDialog$OnFinishListener;)V

    .line 519
    .local v0, dialog:Lcom/android/fileexplorer/TextInputDialog;
    invoke-virtual {v0}, Lcom/android/fileexplorer/TextInputDialog;->show()V

    goto :goto_0
.end method

.method public onOperationSearch()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onOperationSend()V
    .locals 9

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->getSelectedFileList()Ljava/util/ArrayList;

    move-result-object v5

    .line 478
    .local v5, selectedFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/fileexplorer/FileInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/FileInfo;

    .line 479
    .local v2, f:Lcom/android/fileexplorer/FileInfo;
    iget-boolean v6, v2, Lcom/android/fileexplorer/FileInfo;->IsDir:Z

    if-eqz v6, :cond_0

    .line 480
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v7}, Lcom/android/fileexplorer/IFileInteractionListener;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f060011

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f06000e

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 482
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 497
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v2           #f:Lcom/android/fileexplorer/FileInfo;
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-static {v5}, Lcom/android/fileexplorer/IntentBuilder;->buildSendFile(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    .line 488
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 490
    :try_start_0
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    invoke-interface {v6, v4}, Lcom/android/fileexplorer/IFileInteractionListener;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 496
    iget-object v6, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 491
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 492
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "FileViewInteractionHub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to view file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOperationUpLevel()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/FileViewInteractionHub;->showDropdownNavigation(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->onOperation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 362
    :goto_0
    return v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 358
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->refreshFileList()V

    .line 359
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 362
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateMenuItems(Landroid/view/Menu;)V

    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public onSortChanged(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    invoke-virtual {v0}, Lcom/android/fileexplorer/FileSortHelper;->getSortMethod()Lcom/android/fileexplorer/FileSortHelper$SortMethod;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/FileSortHelper;->setSortMethog(Lcom/android/fileexplorer/FileSortHelper$SortMethod;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->sortCurrentList()V

    .line 403
    :cond_0
    return-void
.end method

.method public refreshFileList()V
    .locals 3

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->clearSelection()V

    .line 439
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateNavigationPane()V

    .line 443
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    invoke-interface {v0, v1, v2}, Lcom/android/fileexplorer/IFileInteractionListener;->onRefreshFileList(Ljava/lang/String;Lcom/android/fileexplorer/FileSortHelper;)Z

    .line 446
    invoke-direct {p0}, Lcom/android/fileexplorer/FileViewInteractionHub;->updateConfirmButtons()V

    .line 448
    return-void
.end method

.method public setCurrentPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 948
    return-void
.end method

.method public setMode(Lcom/android/fileexplorer/FileViewInteractionHub$Mode;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentMode:Lcom/android/fileexplorer/FileViewInteractionHub$Mode;

    .line 888
    return-void
.end method

.method public setRootPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 934
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mRoot:Ljava/lang/String;

    .line 935
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mCurrentPath:Ljava/lang/String;

    .line 936
    return-void
.end method

.method public showOperationBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mOperationBar:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void

    .line 191
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public sortCurrentList()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileViewListener:Lcom/android/fileexplorer/IFileInteractionListener;

    iget-object v1, p0, Lcom/android/fileexplorer/FileViewInteractionHub;->mFileSortHelper:Lcom/android/fileexplorer/FileSortHelper;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/IFileInteractionListener;->sortCurrentList(Lcom/android/fileexplorer/FileSortHelper;)V

    .line 95
    return-void
.end method
